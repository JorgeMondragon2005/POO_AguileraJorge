# --- 1. IMPORTACIONES ---
import os
from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime

# --- 2. CONFIGURACIÓN INICIAL ---
app = Flask(__name__)

# --- CONFIGURACIÓN DE LA BASE DE DATOS (MySQL/MariaDB en XAMPP) ---
uri = os.environ.get('DATABASE_URL')

# Corrige el prefijo de la URL si es necesario para SQLAlchemy.
if uri and uri.startswith("postgres://"):
    uri = uri.replace("postgres://", "postgresql://", 1)

app.config['SQLALCHEMY_DATABASE_URI'] = uri

# Inicializa la extensión SQLAlchemy, vinculándola con nuestra aplicación Flask.
db = SQLAlchemy(app)

# --- 3. DEFINICIÓN DE LOS MODELOS DE DATOS (TABLAS) ---
class Instructor(db.Model):
    __tablename__ = 'instructores'
    id = db.Column(db.Integer, primary_key=True)
    nombre = db.Column(db.String(100), nullable=False)
    correo_electronico = db.Column(db.String(120), unique=True, nullable=False)
    fecha_creacion = db.Column(db.DateTime, default=datetime.utcnow)
    fecha_actualizacion = db.Column(db.DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)
    cursos = db.relationship('Curso', backref='instructor', lazy=True)

    def to_dict(self):
        return {"id": self.id, "nombre": self.nombre, "correo_electronico": self.correo_electronico}

class Curso(db.Model):
    __tablename__ = 'cursos'
    id = db.Column(db.Integer, primary_key=True)
    titulo = db.Column(db.String(255), nullable=False)
    esta_publicado = db.Column(db.Boolean, default=False, nullable=False)
    instructor_id = db.Column(db.Integer, db.ForeignKey('instructores.id'), nullable=False)
    fecha_creacion = db.Column(db.DateTime, default=datetime.utcnow)
    fecha_actualizacion = db.Column(db.DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)
    modulos = db.relationship('Modulo', backref='curso', lazy=True, cascade="all, delete-orphan")

    def to_dict(self):
        return {"id": self.id, "titulo": self.titulo, "esta_publicado": self.esta_publicado, "instructor_id": self.instructor_id}

class Modulo(db.Model):
    __tablename__ = 'modulos'
    id = db.Column(db.Integer, primary_key=True)
    titulo = db.Column(db.String(150), nullable=False)
    curso_id = db.Column(db.Integer, db.ForeignKey('cursos.id'), nullable=False)
    fecha_creacion = db.Column(db.DateTime, default=datetime.utcnow)
    fecha_actualizacion = db.Column(db.DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)
    lecciones = db.relationship('Leccion', backref='modulo', lazy=True, cascade="all, delete-orphan")
    
    def to_dict(self):
        return {"id": self.id, "titulo": self.titulo, "curso_id": self.curso_id}

class Leccion(db.Model):
    __tablename__ = 'lecciones'
    id = db.Column(db.Integer, primary_key=True)
    titulo = db.Column(db.String(150), nullable=False)
    contenido = db.Column(db.Text, nullable=True)
    modulo_id = db.Column(db.Integer, db.ForeignKey('modulos.id'), nullable=False)
    fecha_creacion = db.Column(db.DateTime, default=datetime.utcnow)
    fecha_actualizacion = db.Column(db.DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)
    
    def to_dict(self):
        return {"id": self.id, "titulo": self.titulo, "contenido": self.contenido, "modulo_id": self.modulo_id}

# --- 4. ENDPOINTS (RUTAS DE LA API) ---

@app.route('/')
def index():
    return jsonify({"message": "¡Bienvenido a la API de la Plataforma de Cursos!"})

# =================================================
# == CRUD de Instructores 👨‍🏫 ==
# =================================================

@app.route('/api/instructors', methods=['POST'])
def create_instructor():
    data = request.get_json()
    nuevo_instructor = Instructor(nombre=data['nombre'], correo_electronico=data['correo_electronico'])
    db.session.add(nuevo_instructor)
    db.session.commit()
    return jsonify(nuevo_instructor.to_dict()), 201

@app.route('/api/instructors', methods=['GET'])
def get_all_instructors():
    instructores = Instructor.query.all()
    return jsonify([instructor.to_dict() for instructor in instructores])

@app.route('/api/instructors/<int:instructor_id>', methods=['GET'])
def get_instructor_by_id(instructor_id):
    instructor = Instructor.query.get_or_404(instructor_id)
    return jsonify(instructor.to_dict())

@app.route('/api/instructors/<int:instructor_id>', methods=['PUT'])
def update_instructor(instructor_id):
    instructor = Instructor.query.get_or_404(instructor_id)
    data = request.get_json()
    instructor.nombre = data.get('nombre', instructor.nombre)
    instructor.correo_electronico = data.get('correo_electronico', instructor.correo_electronico)
    db.session.commit()
    return jsonify(instructor.to_dict())

@app.route('/api/instructors/<int:instructor_id>', methods=['DELETE'])
def delete_instructor(instructor_id):
    instructor = Instructor.query.get_or_404(instructor_id)
    curso_publicado = Curso.query.filter_by(instructor_id=instructor_id, esta_publicado=True).first()
    if curso_publicado:
        return jsonify({"error": "No se puede eliminar el instructor porque tiene cursos publicados"}), 409
    db.session.delete(instructor)
    db.session.commit()
    return '', 204

# =================================================
# == Gestión de Cursos y Contenido 🎓 ==
# =================================================

@app.route('/api/courses', methods=['POST'])
def create_course():
    data = request.get_json()
    Instructor.query.get_or_404(data['instructor_id'])
    nuevo_curso = Curso(titulo=data['titulo'], instructor_id=data['instructor_id'])
    db.session.add(nuevo_curso)
    db.session.commit()
    return jsonify(nuevo_curso.to_dict()), 201

@app.route('/api/courses/<int:course_id>/modules', methods=['POST'])
def create_module_for_course(course_id):
    curso = Curso.query.get_or_404(course_id)
    if curso.esta_publicado:
        return jsonify({"error": "No se pueden añadir módulos a un curso ya publicado"}), 409
    data = request.get_json()
    nuevo_modulo = Modulo(titulo=data['titulo'], curso_id=curso.id)
    db.session.add(nuevo_modulo)
    db.session.commit()
    return jsonify(nuevo_modulo.to_dict()), 201

@app.route('/api/modules/<int:module_id>/lessons', methods=['POST'])
def create_lesson_for_module(module_id):
    modulo = Modulo.query.get_or_404(module_id)
    if modulo.curso.esta_publicado:
        return jsonify({"error": "No se pueden añadir lecciones a un curso ya publicado"}), 409
    data = request.get_json()
    nueva_leccion = Leccion(titulo=data['titulo'], contenido=data.get('contenido'), modulo_id=modulo.id)
    db.session.add(nueva_leccion)
    db.session.commit()
    return jsonify(nueva_leccion.to_dict()), 201

@app.route('/api/courses/<int:course_id>/publish', methods=['POST'])
def publish_course(course_id):
    curso = Curso.query.get_or_404(course_id)
    if curso.esta_publicado:
        return jsonify({"message": f"El curso '{curso.titulo}' ya se encontraba publicado."}), 200
    curso.esta_publicado = True
    db.session.commit()
    return jsonify({"message": f"El curso '{curso.titulo}' ha sido publicado exitosamente."})

# =================================================
# == CRUD de Módulos y Lecciones 📚 ==
# =================================================

# --- INICIO DE CÓDIGO AÑADIDO ---

@app.route('/api/modules/<int:module_id>', methods=['PUT'])
def update_module(module_id):
    """Actualiza el título de un módulo."""
    modulo = Modulo.query.get_or_404(module_id)
    # REGLA DE NEGOCIO: No se puede editar si el curso está publicado.
    if modulo.curso.esta_publicado:
        return jsonify({"error": "No se puede editar un módulo de un curso publicado"}), 409
    
    data = request.get_json()
    modulo.titulo = data.get('titulo', modulo.titulo)
    db.session.commit()
    return jsonify(modulo.to_dict())

@app.route('/api/modules/<int:module_id>', methods=['DELETE'])
def delete_module(module_id):
    """Elimina un módulo."""
    modulo = Modulo.query.get_or_404(module_id)
    # REGLA DE NEGOCIO: No se puede eliminar si el curso está publicado.
    if modulo.curso.esta_publicado:
        return jsonify({"error": "No se puede eliminar un módulo de un curso publicado"}), 409
    
    db.session.delete(modulo)
    db.session.commit()
    return '', 204

@app.route('/api/lessons/<int:lesson_id>', methods=['PUT'])
def update_lesson(lesson_id):
    """Actualiza una lección."""
    leccion = Leccion.query.get_or_404(lesson_id)
    # REGLA DE NEGOCIO: No se puede editar si el curso está publicado.
    if leccion.modulo.curso.esta_publicado:
        return jsonify({"error": "No se puede editar una lección de un curso publicado"}), 409
    
    data = request.get_json()
    leccion.titulo = data.get('titulo', leccion.titulo)
    leccion.contenido = data.get('contenido', leccion.contenido)
    db.session.commit()
    return jsonify(leccion.to_dict())

@app.route('/api/lessons/<int:lesson_id>', methods=['DELETE'])
def delete_lesson(lesson_id):
    """Elimina una lección."""
    leccion = Leccion.query.get_or_404(lesson_id)
    # REGLA DE NEGOCIO: No se puede eliminar si el curso está publicado.
    if leccion.modulo.curso.esta_publicado:
        return jsonify({"error": "No se puede eliminar una lección de un curso publicado"}), 409
        
    db.session.delete(leccion)
    db.session.commit()
    return '', 204

# --- 5. PUNTO DE ENTRADA PARA EJECUTAR EL SERVIDOR ---
if __name__ == '__main__':
    with app.app_context():
        db.create_all()
    app.run(debug=True, port=5001)