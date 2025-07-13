-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2025 at 02:02 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plataforma_cursos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `esta_publicado` tinyint(1) NOT NULL DEFAULT 0,
  `instructor_id` int(11) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `fecha_actualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cursos`
--

INSERT INTO `cursos` (`id`, `titulo`, `esta_publicado`, `instructor_id`, `fecha_creacion`, `fecha_actualizacion`) VALUES
(1, 'Python para Principiantes', 0, 1, '2025-07-11 03:20:04', '2025-07-11 03:20:04'),
(2, 'Introducción a la Programación con JavaScript', 0, 2, '2025-07-11 03:20:04', '2025-07-11 03:20:04'),
(3, 'Desarrollo Web Full-Stack con MERN', 0, 3, '2025-07-11 03:20:04', '2025-07-11 03:20:04'),
(4, 'Fundamentos de HTML5 y CSS3', 0, 4, '2025-07-11 03:20:04', '2025-07-11 03:20:04'),
(5, 'React: De Cero a Experto', 0, 5, '2025-07-11 03:20:04', '2025-07-11 03:20:04'),
(6, 'Node.js: Creando APIs RESTful', 0, 6, '2025-07-11 03:20:04', '2025-07-11 03:20:04'),
(7, 'Bases de Datos SQL: Diseño y Consultas', 0, 7, '2025-07-11 03:20:04', '2025-07-11 03:20:04'),
(8, 'Introducción a la Ciencia de Datos', 0, 8, '2025-07-11 03:20:04', '2025-07-11 03:20:04'),
(9, 'Machine Learning Aplicado', 0, 9, '2025-07-11 03:20:04', '2025-07-11 03:20:04'),
(10, 'Desarrollo de Apps para Android con Kotlin', 0, 10, '2025-07-11 03:20:04', '2025-07-11 03:20:04'),
(11, 'Desarrollo de Apps para iOS con Swift', 0, 11, '2025-07-11 03:20:04', '2025-07-11 03:20:04'),
(12, 'Ciberseguridad para Principiantes', 0, 12, '2025-07-11 03:20:04', '2025-07-11 03:20:04'),
(13, 'Git y GitHub: Control de Versiones Esencial', 0, 13, '2025-07-11 03:20:04', '2025-07-11 03:20:04'),
(14, 'Introducción a la Nube con AWS', 0, 14, '2025-07-11 03:20:04', '2025-07-11 03:20:04'),
(15, 'Algoritmos y Estructuras de Datos', 0, 15, '2025-07-11 03:20:04', '2025-07-11 03:20:04'),
(16, 'Marketing Digital desde Cero', 0, 16, '2025-07-11 03:20:04', '2025-07-11 03:20:04'),
(17, 'Finanzas Personales: Ahorro e Inversión', 0, 17, '2025-07-11 03:20:04', '2025-07-11 03:20:04'),
(18, 'Fundamentos de Contabilidad para Emprendedores', 0, 18, '2025-07-11 03:20:04', '2025-07-11 03:20:04'),
(19, 'Excel para Negocios: De Básico a Avanzado', 0, 19, '2025-07-11 03:20:04', '2025-07-11 03:20:04'),
(20, 'Gestión de Proyectos con Metodologías Ágiles', 0, 20, '2025-07-11 03:20:04', '2025-07-11 03:20:04'),
(21, 'Cómo Iniciar tu Propio Negocio', 0, 21, '2025-07-11 03:21:44', '2025-07-11 03:21:44'),
(22, 'Estrategias de Venta y Negociación', 0, 22, '2025-07-11 03:21:44', '2025-07-11 03:21:44'),
(23, 'Publicidad en Redes Sociales (Facebook e Instagram Ads)', 0, 23, '2025-07-11 03:21:44', '2025-07-11 03:21:44'),
(24, 'SEO: Posicionamiento en Buscadores', 0, 24, '2025-07-11 03:21:44', '2025-07-11 03:21:44'),
(25, 'Liderazgo y Gestión de Equipos', 0, 25, '2025-07-11 03:21:44', '2025-07-11 03:21:44'),
(26, 'Fotografía Digital para Principiantes', 0, 26, '2025-07-11 03:21:44', '2025-07-11 03:21:44'),
(27, 'Dibujo para Novatos: Fundamentos y Técnicas', 0, 27, '2025-07-11 03:21:44', '2025-07-11 03:21:44'),
(28, 'Curso Completo de Guitarra Acústica', 0, 28, '2025-07-11 03:21:44', '2025-07-11 03:21:44'),
(29, 'Aprende a Tocar Piano desde Cero', 0, 29, '2025-07-11 03:21:44', '2025-07-11 03:21:44'),
(30, 'Adobe Photoshop: Edición de Imágenes Profesional', 0, 30, '2025-07-11 03:21:44', '2025-07-11 03:21:44'),
(31, 'Adobe Premiere Pro: Edición de Video', 0, 31, '2025-07-11 03:21:44', '2025-07-11 03:21:44'),
(32, 'Escritura Creativa: Historias que Atrapan', 0, 32, '2025-07-11 03:21:44', '2025-07-11 03:21:44'),
(33, 'Diseño Gráfico con Canva', 0, 33, '2025-07-11 03:21:44', '2025-07-11 03:21:44'),
(34, 'Introducción a la Acuarela', 0, 34, '2025-07-11 03:21:44', '2025-07-11 03:21:44'),
(35, 'Canto para Principiantes', 0, 35, '2025-07-11 03:21:44', '2025-07-11 03:21:44'),
(36, 'Producción Musical con Ableton Live', 0, 36, '2025-07-11 03:21:44', '2025-07-11 03:21:44'),
(37, 'El Arte del Storytelling', 0, 37, '2025-07-11 03:21:44', '2025-07-11 03:21:44'),
(38, 'Diseño de Logotipos: Conceptualización y Creación', 0, 38, '2025-07-11 03:21:44', '2025-07-11 03:21:44'),
(39, 'Introducción al Modelado 3D con Blender', 0, 39, '2025-07-11 03:21:44', '2025-07-11 03:21:44'),
(40, 'Creación de Contenido para YouTube', 0, 40, '2025-07-11 03:21:44', '2025-07-11 03:21:44'),
(41, 'Hablar en Público sin Miedo', 0, 41, '2025-07-11 03:23:54', '2025-07-11 03:23:54'),
(42, 'Productividad y Gestión del Tiempo', 0, 42, '2025-07-11 03:23:54', '2025-07-11 03:23:54'),
(43, 'Inteligencia Emocional en el Trabajo', 0, 43, '2025-07-11 03:23:54', '2025-07-11 03:23:54'),
(44, 'Técnicas de Negociación Efectiva', 0, 44, '2025-07-11 03:23:54', '2025-07-11 03:23:54'),
(45, 'Mindfulness y Meditación para Reducir el Estrés', 0, 45, '2025-07-11 03:23:54', '2025-07-11 03:23:54'),
(46, 'Comunicación Asertiva', 0, 46, '2025-07-11 03:23:54', '2025-07-11 03:23:54'),
(47, 'Cómo Construir Hábitos Exitosos', 0, 47, '2025-07-11 03:23:54', '2025-07-11 03:23:54'),
(48, 'Resolución de Conflictos', 0, 48, '2025-07-11 03:23:54', '2025-07-11 03:23:54'),
(49, 'Pensamiento Crítico y Creativo', 0, 49, '2025-07-11 03:23:54', '2025-07-11 03:23:54'),
(50, 'Técnicas de Aprendizaje Acelerado', 0, 50, '2025-07-11 03:23:54', '2025-07-11 03:23:54'),
(51, 'Inglés Básico para Viajeros', 0, 51, '2025-07-11 03:23:54', '2025-07-11 03:23:54'),
(52, 'Francés desde Cero (Nivel A1)', 0, 52, '2025-07-11 03:23:54', '2025-07-11 03:23:54'),
(53, 'Japonés para Principiantes: Escritura y Frases Útiles', 0, 53, '2025-07-11 03:23:54', '2025-07-11 03:23:54'),
(54, 'Alemán Básico: Fundamentos Gramaticales', 0, 54, '2025-07-11 03:23:54', '2025-07-11 03:23:54'),
(55, 'Italiano Esencial para la Conversación', 0, 55, '2025-07-11 03:23:54', '2025-07-11 03:23:54'),
(56, 'Introducción a la Nutrición Saludable', 0, 56, '2025-07-11 03:23:54', '2025-07-11 03:23:54'),
(57, 'Yoga en Casa para Principiantes', 0, 57, '2025-07-11 03:23:54', '2025-07-11 03:23:54'),
(58, 'Entrenamiento Funcional (HIIT) sin Equipo', 0, 58, '2025-07-11 03:23:54', '2025-07-11 03:23:54'),
(59, 'Pilates para Fortalecer el Core', 0, 59, '2025-07-11 03:23:54', '2025-07-11 03:23:54'),
(60, 'Cocina Vegana Fácil y Deliciosa', 0, 60, '2025-07-11 03:23:54', '2025-07-11 03:23:54'),
(61, 'Primeros Auxilios Básicos', 0, 61, '2025-07-11 03:25:37', '2025-07-11 03:25:37'),
(62, 'Bienestar Digital: Desconecta para Conectar', 0, 62, '2025-07-11 03:25:37', '2025-07-11 03:25:37'),
(63, 'Ergonomía para el Trabajo en Casa', 0, 63, '2025-07-11 03:25:37', '2025-07-11 03:25:37'),
(64, 'Psicología Positiva: Herramientas para la Felicidad', 0, 64, '2025-07-11 03:25:37', '2025-07-11 03:25:37'),
(65, 'Testing de Software: Pruebas Unitarias y de Integración', 0, 65, '2025-07-11 03:25:37', '2025-07-11 03:25:37'),
(66, 'Introducción a Docker y Contenedores', 0, 66, '2025-07-11 03:25:37', '2025-07-11 03:25:37'),
(67, 'Programación Orientada a Objetos', 0, 67, '2025-07-11 03:25:37', '2025-07-11 03:25:37'),
(68, 'TypeScript: JavaScript con Superpoderes', 0, 68, '2025-07-11 03:25:37', '2025-07-11 03:25:37'),
(69, 'Desarrollo de Videojuegos con Unity', 0, 69, '2025-07-11 03:25:37', '2025-07-11 03:25:37'),
(70, 'Introducción a la Inteligencia Artificial', 0, 70, '2025-07-11 03:25:37', '2025-07-11 03:25:37'),
(71, 'SQL Avanzado: Optimización de Consultas', 0, 71, '2025-07-11 03:25:37', '2025-07-11 03:25:37'),
(72, 'Fundamentos de Redes Informáticas', 0, 72, '2025-07-11 03:25:37', '2025-07-11 03:25:37'),
(73, 'Desarrollo Backend con Django', 0, 73, '2025-07-11 03:25:37', '2025-07-11 03:25:37'),
(74, 'Diseño de Interfaces (UI/UX) para Desarrolladores', 0, 74, '2025-07-11 03:25:37', '2025-07-11 03:25:37'),
(75, 'Power BI para Análisis de Datos', 0, 75, '2025-07-11 03:25:37', '2025-07-11 03:25:37'),
(76, 'Google Analytics 4: Mide tu Éxito', 0, 76, '2025-07-11 03:25:37', '2025-07-11 03:25:37'),
(77, 'Creación de un Plan de Negocios Sólido', 0, 77, '2025-07-11 03:25:37', '2025-07-11 03:25:37'),
(78, 'Email Marketing Efectivo', 0, 78, '2025-07-11 03:25:37', '2025-07-11 03:25:37'),
(79, 'Marca Personal: Cómo destacarte profesionalmente', 0, 79, '2025-07-11 03:25:37', '2025-07-11 03:25:37'),
(80, 'Fotografía de Retrato con Luz Natural', 0, 80, '2025-07-11 03:25:37', '2025-07-11 03:25:37'),
(81, 'DJ Básico con Equipo Digital', 0, 81, '2025-07-11 03:31:32', '2025-07-11 03:31:32'),
(82, 'Caligrafía y Lettering Moderno', 0, 82, '2025-07-11 03:31:32', '2025-07-11 03:31:32'),
(83, 'Cocina Básica para Independientes', 0, 83, '2025-07-11 03:31:32', '2025-07-11 03:31:32'),
(84, 'Jardinería Urbana para Espacios Pequeños', 0, 84, '2025-07-11 03:31:32', '2025-07-11 03:31:32'),
(85, 'Fundamentos del Diseño de Interiores', 0, 85, '2025-07-11 03:31:32', '2025-07-11 03:31:32'),
(86, 'Memoria y Concentración', 0, 86, '2025-07-11 03:31:32', '2025-07-11 03:31:32'),
(87, 'Finanzas para Parejas', 0, 87, '2025-07-11 03:31:32', '2025-07-11 03:31:32'),
(88, 'Resiliencia: Superando la Adversidad', 0, 88, '2025-07-11 03:31:32', '2025-07-11 03:31:32'),
(89, 'Introducción a la Filosofía Estoica', 0, 89, '2025-07-11 03:31:32', '2025-07-11 03:31:32'),
(90, 'Historia del Arte: Del Renacimiento al Barroco', 0, 90, '2025-07-11 03:31:32', '2025-07-11 03:31:32'),
(91, 'Automatización de Tareas con Python', 0, 91, '2025-07-11 03:31:32', '2025-07-11 03:31:32'),
(92, 'Introducción a Linux y la Línea de Comandos', 0, 92, '2025-07-11 03:31:32', '2025-07-11 03:31:32'),
(93, 'Creación de Podcasts desde Cero', 0, 93, '2025-07-11 03:31:32', '2025-07-11 03:31:32'),
(94, 'Astrofotografía para Aficionados', 0, 94, '2025-07-11 03:31:32', '2025-07-11 03:31:32'),
(95, 'Reparación Básica de Teléfonos Móviles', 0, 95, '2025-07-11 03:31:32', '2025-07-11 03:31:32'),
(96, 'Inversión en Criptomonedas: Guía para Principiantes', 0, 96, '2025-07-11 03:31:32', '2025-07-11 03:31:32'),
(97, 'Marketing de Afiliados', 0, 97, '2025-07-11 03:31:32', '2025-07-11 03:31:32'),
(98, 'Creación de Tiendas Online con Shopify', 0, 98, '2025-07-11 03:31:32', '2025-07-11 03:31:32'),
(99, 'Oratoria y Debate', 0, 99, '2025-07-11 03:31:32', '2025-07-11 03:31:32'),
(100, 'Fundamentos del Sueño y el Descanso', 0, 100, '2025-07-11 03:31:32', '2025-07-11 03:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `instructores`
--

CREATE TABLE `instructores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `fecha_actualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructores`
--

INSERT INTO `instructores` (`id`, `nombre`, `correo_electronico`, `fecha_creacion`, `fecha_actualizacion`) VALUES
(1, 'Ana García', 'ana_garcia@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(2, 'Carlos Rodríguez', 'carlos_rodriguez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(3, 'Beatriz López', 'beatriz_lopez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(4, 'David Martínez', 'david_martinez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(5, 'Elena Pérez', 'elena_perez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(6, 'Fernando Gómez', 'fernando_gomez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(7, 'Gabriela Sánchez', 'gabriela_sanchez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(8, 'Hugo Romero', 'hugo_romero@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(9, 'Isabel Torres', 'isabel_torres@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(10, 'Javier Navarro', 'javier_navarro@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(11, 'Laura Ruiz', 'laura_ruiz@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(12, 'Miguel Vargas', 'miguel_vargas@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(13, 'Natalia Jiménez', 'natalia_jimenez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(14, 'Óscar Castro', 'oscar_castro@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(15, 'Patricia Morales', 'patricia_morales@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(16, 'Ricardo Ortiz', 'ricardo_ortiz@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(17, 'Sofía Castillo', 'sofia_castillo@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(18, 'Tomás Ramos', 'tomas_ramos@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(19, 'Valeria Mendoza', 'valeria_mendoza@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(20, 'Ximena Cruz', 'ximena_cruz@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(21, 'Andrés García', 'andres_garcia@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(22, 'Bárbara Rodríguez', 'barbara_rodriguez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(23, 'Camilo López', 'camilo_lopez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(24, 'Daniela Martínez', 'daniela_martinez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(25, 'Esteban Pérez', 'esteban_perez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(26, 'Fabiola Gómez', 'fabiola_gomez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(27, 'Gerardo Sánchez', 'gerardo_sanchez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(28, 'Hilda Romero', 'hilda_romero@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(29, 'Ignacio Torres', 'ignacio_torres@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(30, 'Julieta Navarro', 'julieta_navarro@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(31, 'Kevin Ruiz', 'kevin_ruiz@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(32, 'Lorena Vargas', 'lorena_vargas@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(33, 'Mateo Jiménez', 'mateo_jimenez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(34, 'Nadia Castro', 'nadia_castro@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(35, 'Omar Morales', 'omar_morales@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(36, 'Paola Ortiz', 'paola_ortiz@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(37, 'Raúl Castillo', 'raul_castillo@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(38, 'Sandra Ramos', 'sandra_ramos@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(39, 'Thiago Mendoza', 'thiago_mendoza@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(40, 'Úrsula Cruz', 'ursula_cruz@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(41, 'Víctor García', 'victor_garcia@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(42, 'Wendy Rodríguez', 'wendy_rodriguez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(43, 'Xavier López', 'xavier_lopez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(44, 'Yolanda Martínez', 'yolanda_martinez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(45, 'Zoe Pérez', 'zoe_perez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(46, 'Adrián Gómez', 'adrian_gomez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(47, 'Brenda Sánchez', 'brenda_sanchez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(48, 'Cristian Romero', 'cristian_romero@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(49, 'Diana Torres', 'diana_torres@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(50, 'Eduardo Navarro', 'eduardo_navarro@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(51, 'Florencia Ruiz', 'florencia_ruiz@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(52, 'Guillermo Vargas', 'guillermo_vargas@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(53, 'Irene Jiménez', 'irene_jimenez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(54, 'Joaquín Castro', 'joaquin_castro@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(55, 'Karla Morales', 'karla_morales@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(56, 'Leonardo Ortiz', 'leonardo_ortiz@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(57, 'Marcela Castillo', 'marcela_castillo@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(58, 'Nicolás Ramos', 'nicolas_ramos@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(59, 'Olivia Mendoza', 'olivia_mendoza@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(60, 'Pedro Cruz', 'pedro_cruz@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(61, 'Quintin García', 'quintin_garcia@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(62, 'Renata Rodríguez', 'renata_rodriguez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(63, 'Santiago López', 'santiago_lopez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(64, 'Tatiana Martínez', 'tatiana_martinez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(65, 'Ulises Pérez', 'ulises_perez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(66, 'Violeta Gómez', 'violeta_gomez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(67, 'Walter Sánchez', 'walter_sanchez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(68, 'Xenia Romero', 'xenia_romero@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(69, 'Yahir Torres', 'yahir_torres@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(70, 'Zacarías Navarro', 'zacarias_navarro@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(71, 'Agustín Ruiz', 'agustin_ruiz@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(72, 'Clara Vargas', 'clara_vargas@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(73, 'Dante Jiménez', 'dante_jimenez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(74, 'Erika Castro', 'erika_castro@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(75, 'Felipe Morales', 'felipe_morales@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(76, 'Gloria Ortiz', 'gloria_ortiz@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(77, 'Héctor Castillo', 'hector_castillo@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(78, 'Iván Ramos', 'ivan_ramos@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(79, 'Jimena Mendoza', 'jimena_mendoza@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(80, 'Lucía Cruz', 'lucia_cruz@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(81, 'Marcos García', 'marcos_garcia@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(82, 'Noelia Rodríguez', 'noelia_rodriguez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(83, 'Pablo López', 'pablo_lopez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(84, 'Regina Martínez', 'regina_martinez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(85, 'Samuel Pérez', 'samuel_perez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(86, 'Teresa Gómez', 'teresa_gomez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(87, 'Vicente Sánchez', 'vicente_sanchez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(88, 'Alexia Romero', 'alexia_romero@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(89, 'Benjamín Torres', 'benjamin_torres@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(90, 'Carla Navarro', 'carla_navarro@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(91, 'Diego Ruiz', 'diego_ruiz@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(92, 'Eva Vargas', 'eva_vargas@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(93, 'Francisco Jiménez', 'francisco_jimenez@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(94, 'Gael Castro', 'gael_castro@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(95, 'Jazmín Morales', 'jazmin_morales@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(96, 'Luis Ortiz', 'luis_ortiz@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(97, 'Mónica Castillo', 'monica_castillo@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(98, 'Ramiro Ramos', 'ramiro_ramos@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(99, 'Sara Mendoza', 'sara_mendoza@gmail.com', '2025-07-11 02:23:43', '2025-07-11 02:23:43'),
(100, 'Verónica Reyes', 'veronica_reyes@gmail.com', '2025-07-11 02:24:43', '2025-07-11 02:24:43');

-- --------------------------------------------------------

--
-- Table structure for table `lecciones`
--

CREATE TABLE `lecciones` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `modulo_id` int(11) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `fecha_actualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lecciones`
--

INSERT INTO `lecciones` (`id`, `titulo`, `modulo_id`, `fecha_creacion`, `fecha_actualizacion`) VALUES
(1, 'Instalación de Python y tu primer \"Hola Mundo\"', 1, '2025-07-11 03:41:58', '2025-07-11 03:41:58'),
(2, 'Declarando Variables con var, let y const', 2, '2025-07-11 03:41:58', '2025-07-11 03:41:58'),
(3, 'Qué es MongoDB, Express, React y Node.js', 3, '2025-07-11 03:41:58', '2025-07-11 03:41:58'),
(4, 'La estructura de un documento HTML: <html>, <head> y <body>', 4, '2025-07-11 03:41:58', '2025-07-11 03:41:58'),
(5, 'Creando tu primer componente funcional', 5, '2025-07-11 03:41:58', '2025-07-11 03:41:58'),
(6, 'El módulo HTTP y tu primer servidor', 6, '2025-07-11 03:41:58', '2025-07-11 03:41:58'),
(7, 'Entidades, Atributos y Relaciones', 7, '2025-07-11 03:41:58', '2025-07-11 03:41:58'),
(8, 'Introducción a Jupyter Notebooks y Pandas', 8, '2025-07-11 03:41:58', '2025-07-11 03:41:58'),
(9, 'Aprendizaje Supervisado vs. No Supervisado', 9, '2025-07-11 03:41:58', '2025-07-11 03:41:58'),
(10, 'Instalación de Android Studio y el SDK', 10, '2025-07-11 03:41:58', '2025-07-11 03:41:58'),
(11, 'Explorando la interfaz de Xcode', 11, '2025-07-11 03:41:58', '2025-07-11 03:41:58'),
(12, 'Confidencialidad, Integridad y Disponibilidad (CIA)', 12, '2025-07-11 03:41:58', '2025-07-11 03:41:58'),
(13, 'Inicializando un repositorio con \"git init\"', 13, '2025-07-11 03:41:58', '2025-07-11 03:41:58'),
(14, '¿Qué es la computación en la nube?', 14, '2025-07-11 03:41:58', '2025-07-11 03:41:58'),
(15, 'Definición y ejemplo: una receta de cocina', 15, '2025-07-11 03:41:58', '2025-07-11 03:41:58'),
(16, 'Atraer: La primera etapa del embudo', 16, '2025-07-11 03:41:58', '2025-07-11 03:41:58'),
(17, 'Registro de ingresos y gastos', 17, '2025-07-11 03:41:58', '2025-07-11 03:41:58'),
(18, 'Activos, Pasivos y Patrimonio', 18, '2025-07-11 03:41:58', '2025-07-11 03:41:58'),
(19, 'La función SUMA y referencias de celdas', 19, '2025-07-11 03:41:58', '2025-07-11 03:41:58'),
(20, 'Los 4 valores del Manifiesto Ágil', 20, '2025-07-11 03:41:58', '2025-07-11 03:41:58'),
(21, 'Creando un Producto Mínimo Viable (MVP)', 21, '2025-07-11 03:43:53', '2025-07-11 03:43:53'),
(22, 'El Principio de Escasez y Urgencia en la Venta', 22, '2025-07-11 03:43:53', '2025-07-11 03:43:53'),
(23, 'Construyendo tu primer \"Buyer Persona\"', 23, '2025-07-11 03:43:53', '2025-07-11 03:43:53'),
(24, 'Investigación de Palabras Clave (Keyword Research)', 24, '2025-07-11 03:43:53', '2025-07-11 03:43:53'),
(25, 'El Líder Autocrático vs. el Líder Democrático', 25, '2025-07-11 03:43:53', '2025-07-11 03:43:53'),
(26, 'Controlando la Profundidad de Campo con la Apertura', 26, '2025-07-11 03:43:53', '2025-07-11 03:43:53'),
(27, 'Práctica de Trazos Rectos y Curvos', 27, '2025-07-11 03:43:53', '2025-07-11 03:43:53'),
(28, 'Aprendiendo los Acordes de Sol, Do y Re', 28, '2025-07-11 03:43:53', '2025-07-11 03:43:53'),
(29, 'La Numeración de los Dedos y las Notas del Teclado', 29, '2025-07-11 03:43:53', '2025-07-11 03:43:53'),
(30, 'Trabajando con la Herramienta Mover y Selección', 30, '2025-07-11 03:43:53', '2025-07-11 03:43:53'),
(31, 'Organizando tus Clips en el Panel de Proyecto', 31, '2025-07-11 03:43:53', '2025-07-11 03:43:53'),
(32, 'El Arco del Personaje: Transformación y Crecimiento', 32, '2025-07-11 03:43:53', '2025-07-11 03:43:53'),
(33, 'Creando tu Primer Diseño para Redes Sociales', 33, '2025-07-11 03:43:53', '2025-07-11 03:43:53'),
(34, 'Práctica con la Técnica de Húmedo sobre Húmedo', 34, '2025-07-11 03:43:53', '2025-07-11 03:43:53'),
(35, 'Ejercicios de Respiración para Cantantes', 35, '2025-07-11 03:43:53', '2025-07-11 03:43:53'),
(36, 'Grabando tu Primer Clip MIDI en la Vista de Sesión', 36, '2025-07-11 03:43:53', '2025-07-11 03:43:53'),
(37, 'El Llamado a la Aventura y el Rechazo del Llamado', 37, '2025-07-11 03:43:53', '2025-07-11 03:43:53'),
(38, 'La Psicología del Color en el Diseño de Logotipos', 38, '2025-07-11 03:43:53', '2025-07-11 03:43:53'),
(39, 'Creando y Manipulando un Cubo, Esfera y Cilindro', 39, '2025-07-11 03:43:53', '2025-07-11 03:43:53'),
(40, 'Brainstorming de Ideas para tus Primeros Videos', 40, '2025-07-11 03:43:53', '2025-07-11 03:43:53'),
(41, 'Técnicas de respiración para calmar los nervios', 41, '2025-07-11 03:44:42', '2025-07-11 03:44:42'),
(42, 'Cómo aplicar la Matriz Urgente/Importante en tu día a día', 42, '2025-07-11 03:44:42', '2025-07-11 03:44:42'),
(43, 'Reconociendo tus emociones: El primer paso', 43, '2025-07-11 03:44:42', '2025-07-11 03:44:42'),
(44, 'Investigando a la otra parte y definiendo tus objetivos', 44, '2025-07-11 03:44:42', '2025-07-11 03:44:42'),
(45, 'Tu primera meditación guiada de 5 minutos', 45, '2025-07-11 03:44:42', '2025-07-11 03:44:42'),
(46, 'Identificando tu propio estilo de comunicación', 46, '2025-07-11 03:44:42', '2025-07-11 03:44:42'),
(47, 'Cómo identificar las señales de tus hábitos actuales', 47, '2025-07-11 03:44:42', '2025-07-11 03:44:42'),
(48, 'La diferencia entre oír y escuchar', 48, '2025-07-11 03:44:42', '2025-07-11 03:44:42'),
(49, 'El sesgo de confirmación: Qué es y cómo evitarlo', 49, '2025-07-11 03:44:42', '2025-07-11 03:44:42'),
(50, 'Creando tu primer mapa mental a mano', 50, '2025-07-11 03:44:42', '2025-07-11 03:44:42'),
(51, 'Cómo decir \"Hola\" y \"Adiós\" en diferentes contextos', 51, '2025-07-11 03:44:42', '2025-07-11 03:44:42'),
(52, 'Pronunciando las vocales y diptongos franceses', 52, '2025-07-11 03:44:42', '2025-07-11 03:44:42'),
(53, 'Aprendiendo las primeras 5 letras de Hiragana', 53, '2025-07-11 03:44:42', '2025-07-11 03:44:42'),
(54, 'El caso Nominativo: El sujeto de la oración', 54, '2025-07-11 03:44:42', '2025-07-11 03:44:42'),
(55, 'Frases útiles para ordenar comida y bebida en italiano', 55, '2025-07-11 03:44:42', '2025-07-11 03:44:42'),
(56, 'Calculando tus necesidades calóricas diarias', 56, '2025-07-11 03:44:42', '2025-07-11 03:44:42'),
(57, 'La postura del Perro Boca Abajo (Adho Mukha Svanasana)', 57, '2025-07-11 03:44:42', '2025-07-11 03:44:42'),
(58, 'Ejecutando correctamente los Burpees y las Sentadillas', 58, '2025-07-11 03:44:42', '2025-07-11 03:44:42'),
(59, 'La respiración de Pilates: Inhalar por la nariz, exhalar por la boca', 59, '2025-07-11 03:44:42', '2025-07-11 03:44:42'),
(60, 'Sustitutos veganos para huevos y lácteos en la cocina', 60, '2025-07-11 03:44:42', '2025-07-11 03:44:42'),
(61, 'Verificación de la respuesta y la respiración de la víctima', 61, '2025-07-11 03:45:26', '2025-07-11 03:45:26'),
(62, 'El concepto de \"Nomofobia\" y cómo combatirla', 62, '2025-07-11 03:45:26', '2025-07-11 03:45:26'),
(63, 'La altura correcta de la silla y el monitor', 63, '2025-07-11 03:45:26', '2025-07-11 03:45:26'),
(64, 'Qué es el \"Flow\" o Estado de Flujo', 64, '2025-07-11 03:45:26', '2025-07-11 03:45:26'),
(65, 'Entendiendo las Pruebas Unitarias', 65, '2025-07-11 03:45:26', '2025-07-11 03:45:26'),
(66, 'Docker vs. Máquinas Virtuales', 66, '2025-07-11 03:45:26', '2025-07-11 03:45:26'),
(67, 'El concepto de \"Clase\" y \"Objeto\"', 67, '2025-07-11 03:45:26', '2025-07-11 03:45:26'),
(68, 'Añadiendo tipos a variables y funciones', 68, '2025-07-11 03:45:26', '2025-07-11 03:45:26'),
(69, 'Creando un nuevo proyecto 2D en Unity', 69, '2025-07-11 03:45:26', '2025-07-11 03:45:26'),
(70, 'Redes Neuronales: Una breve introducción', 70, '2025-07-11 03:45:26', '2025-07-11 03:45:26'),
(71, 'La función ROW_NUMBER() para enumerar filas', 71, '2025-07-11 03:45:26', '2025-07-11 03:45:26'),
(72, '¿Qué es una dirección IP y una Máscara de Red?', 72, '2025-07-11 03:45:26', '2025-07-11 03:45:26'),
(73, 'Creando tu primera \"vista\" y \"URL\" en Django', 73, '2025-07-11 03:45:26', '2025-07-11 03:45:26'),
(74, 'Contraste, Repetición, Alineación y Proximidad (CRAP)', 74, '2025-07-11 03:45:26', '2025-07-11 03:45:26'),
(75, 'Importando datos desde un archivo Excel', 75, '2025-07-11 03:45:26', '2025-07-11 03:45:26'),
(76, 'Diferencias clave entre Universal Analytics y GA4', 76, '2025-07-11 03:45:26', '2025-07-11 03:45:26'),
(77, 'Definiendo el problema que tu negocio resuelve', 77, '2025-07-11 03:45:26', '2025-07-11 03:45:26'),
(78, 'Herramientas para la gestión de Email Marketing', 78, '2025-07-11 03:45:26', '2025-07-11 03:45:26'),
(79, 'El ejercicio de la Rueda de la Vida', 79, '2025-07-11 03:45:26', '2025-07-11 03:45:26'),
(80, 'Cómo usar un reflector para suavizar las sombras', 80, '2025-07-11 03:45:26', '2025-07-11 03:45:26'),
(81, 'Beatmatching: Sincronizando dos canciones', 81, '2025-07-11 03:46:10', '2025-07-11 03:46:10'),
(82, 'Sujetando la pluma y control de la presión', 82, '2025-07-11 03:46:10', '2025-07-11 03:46:10'),
(83, 'Técnicas seguras para cortar con cuchillo', 83, '2025-07-11 03:46:10', '2025-07-11 03:46:10'),
(84, 'Entendiendo la luz solar y la ubicación de tus plantas', 84, '2025-07-11 03:46:10', '2025-07-11 03:46:10'),
(85, 'La paleta de colores: La regla 60-30-10', 85, '2025-07-11 03:46:10', '2025-07-11 03:46:10'),
(86, 'El método Loci: Tu primer Palacio de la Memoria', 86, '2025-07-11 03:46:10', '2025-07-11 03:46:10'),
(87, 'Hablando de dinero sin pelear: Estableciendo reglas', 87, '2025-07-11 03:46:10', '2025-07-11 03:46:10'),
(88, 'Aceptación radical: El primer paso para superar la adversidad', 88, '2025-07-11 03:46:10', '2025-07-11 03:46:10'),
(89, '¿Qué puedo controlar y qué no?', 89, '2025-07-11 03:46:10', '2025-07-11 03:46:10'),
(90, 'Características clave del arte renacentista', 90, '2025-07-11 03:46:10', '2025-07-11 03:46:10'),
(91, 'Usando la librería `os` para interactuar con el sistema', 91, '2025-07-11 03:46:10', '2025-07-11 03:46:10'),
(92, 'El sistema de archivos de Linux: Raíz, home y otros directorios', 92, '2025-07-11 03:46:10', '2025-07-11 03:46:10'),
(93, 'Eligiendo el tema y formato de tu podcast', 93, '2025-07-11 03:46:10', '2025-07-11 03:46:10'),
(94, 'Fotografiando la Luna: Configuración de la cámara', 94, '2025-07-11 03:46:10', '2025-07-11 03:46:10'),
(95, 'Cómo abrir un teléfono de forma segura', 95, '2025-07-11 03:46:10', '2025-07-11 03:46:10'),
(96, 'Comprando tu primera fracción de Bitcoin en un Exchange', 96, '2025-07-11 03:46:10', '2025-07-11 03:46:10'),
(97, 'Eligiendo un nicho de mercado rentable', 97, '2025-07-11 03:46:10', '2025-07-11 03:46:10'),
(98, 'Creando tu cuenta y configuración inicial de la tienda', 98, '2025-07-11 03:46:10', '2025-07-11 03:46:10'),
(99, 'La importancia del lenguaje corporal y el contacto visual', 99, '2025-07-11 03:46:10', '2025-07-11 03:46:10'),
(100, '¿Por qué dormimos? Las fases del sueño', 100, '2025-07-11 03:46:10', '2025-07-11 03:46:10');

-- --------------------------------------------------------

--
-- Table structure for table `modulos`
--

CREATE TABLE `modulos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `curso_id` int(11) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `fecha_actualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modulos`
--

INSERT INTO `modulos` (`id`, `titulo`, `curso_id`, `fecha_creacion`, `fecha_actualizacion`) VALUES
(1, 'Fundamentos de Python', 1, '2025-07-11 03:34:40', '2025-07-11 03:34:40'),
(2, 'Variables y Tipos de Datos en JavaScript', 2, '2025-07-11 03:34:40', '2025-07-11 03:34:40'),
(3, 'Introducción al Stack MERN', 3, '2025-07-11 03:34:40', '2025-07-11 03:34:40'),
(4, 'Estructura Básica con HTML', 4, '2025-07-11 03:34:40', '2025-07-11 03:34:40'),
(5, 'Componentes y Props en React', 5, '2025-07-11 03:34:40', '2025-07-11 03:34:40'),
(6, 'Creando tu Primer Servidor con Node.js', 6, '2025-07-11 03:34:40', '2025-07-11 03:34:40'),
(7, 'Diseño de Bases de Datos Relacionales', 7, '2025-07-11 03:34:40', '2025-07-11 03:34:40'),
(8, 'El Ecosistema de la Ciencia de Datos', 8, '2025-07-11 03:34:40', '2025-07-11 03:34:40'),
(9, 'Conceptos Clave de Machine Learning', 9, '2025-07-11 03:34:40', '2025-07-11 03:34:40'),
(10, 'Configuración del Entorno de Desarrollo Android', 10, '2025-07-11 03:34:40', '2025-07-11 03:34:40'),
(11, 'Introducción a Swift y Xcode', 11, '2025-07-11 03:34:40', '2025-07-11 03:34:40'),
(12, 'Principios de la Seguridad Informática', 12, '2025-07-11 03:34:40', '2025-07-11 03:34:40'),
(13, 'Comandos Esenciales de Git', 13, '2025-07-11 03:34:40', '2025-07-11 03:34:40'),
(14, 'Conceptos Fundamentales de la Nube', 14, '2025-07-11 03:34:40', '2025-07-11 03:34:40'),
(15, '¿Qué son los Algoritmos?', 15, '2025-07-11 03:34:40', '2025-07-11 03:34:40'),
(16, 'El Embudo de Marketing Digital', 16, '2025-07-11 03:34:40', '2025-07-11 03:34:40'),
(17, 'Creando tu Presupuesto Personal', 17, '2025-07-11 03:34:40', '2025-07-11 03:34:40'),
(18, 'Principios Contables Básicos', 18, '2025-07-11 03:34:40', '2025-07-11 03:34:40'),
(19, 'Fórmulas y Funciones Esenciales en Excel', 19, '2025-07-11 03:34:40', '2025-07-11 03:34:40'),
(20, 'Manifiesto Ágil y Principios de Scrum', 20, '2025-07-11 03:34:40', '2025-07-11 03:34:40'),
(21, 'Validación de tu Idea de Negocio', 21, '2025-07-11 03:35:54', '2025-07-11 03:35:54'),
(22, 'Psicología de la Venta', 22, '2025-07-11 03:35:54', '2025-07-11 03:35:54'),
(23, 'Definiendo a tu Audiencia Objetivo', 23, '2025-07-11 03:35:54', '2025-07-11 03:35:54'),
(24, 'Fundamentos del SEO On-Page', 24, '2025-07-11 03:35:54', '2025-07-11 03:35:54'),
(25, 'Estilos de Liderazgo y Autoevaluación', 25, '2025-07-11 03:35:54', '2025-07-11 03:35:54'),
(26, 'Entendiendo tu Cámara: Apertura, ISO y Velocidad', 26, '2025-07-11 03:35:54', '2025-07-11 03:35:54'),
(27, 'Líneas, Formas y Sombreado Básico', 27, '2025-07-11 03:35:54', '2025-07-11 03:35:54'),
(28, 'Anatomía de la Guitarra y Acordes Básicos', 28, '2025-07-11 03:35:54', '2025-07-11 03:35:54'),
(29, 'Conociendo el Teclado y Postura Correcta', 29, '2025-07-11 03:35:54', '2025-07-11 03:35:54'),
(30, 'Interfaz, Capas y Herramientas Esenciales', 30, '2025-07-11 03:35:54', '2025-07-11 03:35:54'),
(31, 'Importación de Medios y Línea de Tiempo', 31, '2025-07-11 03:35:54', '2025-07-11 03:35:54'),
(32, 'Creación de Personajes Memorables', 32, '2025-07-11 03:35:54', '2025-07-11 03:35:54'),
(33, 'Primeros Pasos y Plantillas Populares', 33, '2025-07-11 03:35:54', '2025-07-11 03:35:54'),
(34, 'Materiales Básicos y Técnicas de Humedad', 34, '2025-07-11 03:35:54', '2025-07-11 03:35:54'),
(35, 'Respiración Diafragmática y Calentamiento Vocal', 35, '2025-07-11 03:35:54', '2025-07-11 03:35:54'),
(36, 'Configuración y Vistas de Sesión/Arreglo', 36, '2025-07-11 03:35:54', '2025-07-11 03:35:54'),
(37, 'La Estructura del Viaje del Héroe', 37, '2025-07-11 03:35:54', '2025-07-11 03:35:54'),
(38, 'Principios del Diseño de Marcas', 38, '2025-07-11 03:35:54', '2025-07-11 03:35:54'),
(39, 'Navegación en el Espacio 3D y Objetos Primitivos', 39, '2025-07-11 03:35:54', '2025-07-11 03:35:54'),
(40, 'Definiendo tu Nicho y Estrategia de Contenido', 40, '2025-07-11 03:35:54', '2025-07-11 03:35:54'),
(41, 'Controlando el Miedo Escénico y la Ansiedad', 41, '2025-07-11 03:36:35', '2025-07-11 03:36:35'),
(42, 'Sistemas de Priorización: La Matriz de Eisenhower', 42, '2025-07-11 03:36:35', '2025-07-11 03:36:35'),
(43, 'Autoconocimiento y Autogestión Emocional', 43, '2025-07-11 03:36:35', '2025-07-11 03:36:35'),
(44, 'Preparación y Planificación de la Negociación', 44, '2025-07-11 03:36:35', '2025-07-11 03:36:35'),
(45, 'Fundamentos de la Atención Plena y Primera Meditación', 45, '2025-07-11 03:36:35', '2025-07-11 03:36:35'),
(46, 'Diferenciando Pasividad, Agresividad y Asertividad', 46, '2025-07-11 03:36:35', '2025-07-11 03:36:35'),
(47, 'El Ciclo del Hábito: Señal, Rutina y Recompensa', 47, '2025-07-11 03:36:35', '2025-07-11 03:36:35'),
(48, 'Escucha Activa como Herramienta Clave', 48, '2025-07-11 03:36:35', '2025-07-11 03:36:35'),
(49, 'Identificando Sesgos Cognitivos y Falacias', 49, '2025-07-11 03:36:35', '2025-07-11 03:36:35'),
(50, 'Mapas Mentales y la Técnica de Feynman', 50, '2025-07-11 03:36:35', '2025-07-11 03:36:35'),
(51, 'Saludos, Presentaciones y Frases de Cortesía', 51, '2025-07-11 03:36:35', '2025-07-11 03:36:35'),
(52, 'El Alfabeto, los Acentos y la Pronunciación', 52, '2025-07-11 03:36:35', '2025-07-11 03:36:35'),
(53, 'Introducción a los Silabarios Hiragana y Katakana', 53, '2025-07-11 03:36:35', '2025-07-11 03:36:35'),
(54, 'Los Casos Gramaticales: Nominativo, Acusativo, Dativo', 54, '2025-07-11 03:36:35', '2025-07-11 03:36:35'),
(55, 'Presentarse y Pedir en un Restaurante', 55, '2025-07-11 03:36:35', '2025-07-11 03:36:35'),
(56, 'Macronutrientes: Proteínas, Carbohidratos y Grasas', 56, '2025-07-11 03:36:35', '2025-07-11 03:36:35'),
(57, 'Posturas Fundamentales (Asanas) y Saludo al Sol', 57, '2025-07-11 03:36:35', '2025-07-11 03:36:35'),
(58, 'Estructura de una Sesión HIIT y Calentamiento', 58, '2025-07-11 03:36:35', '2025-07-11 03:36:35'),
(59, 'El \"Powerhouse\": Activación del Core y Respiración', 59, '2025-07-11 03:36:35', '2025-07-11 03:36:35'),
(60, 'Ingredientes Esenciales y Reemplazos Clave', 60, '2025-07-11 03:36:35', '2025-07-11 03:36:35'),
(61, 'Evaluación de la Escena y Seguridad (RCP)', 61, '2025-07-11 03:37:43', '2025-07-11 03:37:43'),
(62, 'El Impacto de la Tecnología en el Bienestar', 62, '2025-07-11 03:37:43', '2025-07-11 03:37:43'),
(63, 'Configuración Ideal de tu Espacio de Trabajo', 63, '2025-07-11 03:37:43', '2025-07-11 03:37:43'),
(64, 'Pilares de la Felicidad y el Modelo PERMA', 64, '2025-07-11 03:37:43', '2025-07-11 03:37:43'),
(65, 'La Pirámide del Testing y sus Niveles', 65, '2025-07-11 03:37:43', '2025-07-11 03:37:43'),
(66, '¿Qué es un Contenedor y por qué usar Docker?', 66, '2025-07-11 03:37:43', '2025-07-11 03:37:43'),
(67, 'Pilares de la POO: Abstracción y Encapsulamiento', 67, '2025-07-11 03:37:43', '2025-07-11 03:37:43'),
(68, 'Introducción al Tipado Estático', 68, '2025-07-11 03:37:43', '2025-07-11 03:37:43'),
(69, 'Instalación y Explorando la Interfaz de Unity', 69, '2025-07-11 03:37:43', '2025-07-11 03:37:43'),
(70, 'Historia y Tipos de Inteligencia Artificial', 70, '2025-07-11 03:37:43', '2025-07-11 03:37:43'),
(71, 'Funciones de Ventana (Window Functions)', 71, '2025-07-11 03:37:43', '2025-07-11 03:37:43'),
(72, 'El Modelo OSI y TCP/IP', 72, '2025-07-11 03:37:43', '2025-07-11 03:37:43'),
(73, 'Configuración del Proyecto y Primera App en Django', 73, '2025-07-11 03:37:43', '2025-07-11 03:37:43'),
(74, 'Principios Fundamentales del Diseño Visual', 74, '2025-07-11 03:37:43', '2025-07-11 03:37:43'),
(75, 'Conectando y Transformando Datos con Power Query', 75, '2025-07-11 03:37:43', '2025-07-11 03:37:43'),
(76, 'Configuración de tu Propiedad en GA4', 76, '2025-07-11 03:37:43', '2025-07-11 03:37:43'),
(77, 'Resumen Ejecutivo y Declaración de Misión', 77, '2025-07-11 03:37:43', '2025-07-11 03:37:43'),
(78, 'Construyendo tu Lista de Suscriptores', 78, '2025-07-11 03:37:43', '2025-07-11 03:37:43'),
(79, 'Definiendo tu Propósito y Valores Personales', 79, '2025-07-11 03:37:43', '2025-07-11 03:37:43'),
(80, 'La Magia de la Luz Natural y la Hora Dorada', 80, '2025-07-11 03:37:43', '2025-07-11 03:37:43'),
(81, 'Conociendo tu Equipo: Controladoras y Mixers', 81, '2025-07-11 03:38:23', '2025-07-11 03:38:23'),
(82, 'Trazos Básicos y Herramientas Esenciales', 82, '2025-07-11 03:38:23', '2025-07-11 03:38:23'),
(83, 'Técnicas de Corte y Cocción Fundamentales', 83, '2025-07-11 03:38:23', '2025-07-11 03:38:23'),
(84, 'Eligiendo Macetas y Sustratos Correctos', 84, '2025-07-11 03:38:23', '2025-07-11 03:38:23'),
(85, 'Principios de Color y Distribución del Espacio', 85, '2025-07-11 03:38:23', '2025-07-11 03:38:23'),
(86, 'Técnicas de Mnemotecnia y Palacio de la Memoria', 86, '2025-07-11 03:38:23', '2025-07-11 03:38:23'),
(87, 'Comunicación Financiera y Metas en Común', 87, '2025-07-11 03:38:23', '2025-07-11 03:38:23'),
(88, 'El Círculo de Influencia y Control', 88, '2025-07-11 03:38:23', '2025-07-11 03:38:23'),
(89, 'Dicotomía del Control y la Virtud Estoica', 89, '2025-07-11 03:38:23', '2025-07-11 03:38:23'),
(90, 'El Renacimiento Italiano: Artistas y Contexto', 90, '2025-07-11 03:38:23', '2025-07-11 03:38:23'),
(91, 'Manipulación de Archivos y Carpetas', 91, '2025-07-11 03:38:23', '2025-07-11 03:38:23'),
(92, 'Navegación y Comandos Básicos (ls, cd, pwd)', 92, '2025-07-11 03:38:23', '2025-07-11 03:38:23'),
(93, 'Equipo Mínimo Viable: Micrófono y Software', 93, '2025-07-11 03:38:23', '2025-07-11 03:38:23'),
(94, 'Tipos de Telescopios y Monturas', 94, '2025-07-11 03:38:23', '2025-07-11 03:38:23'),
(95, 'Herramientas Indispensables y Precauciones de Seguridad', 95, '2025-07-11 03:38:23', '2025-07-11 03:38:23'),
(96, 'Entendiendo Blockchain y las Criptomonedas Principales', 96, '2025-07-11 03:38:23', '2025-07-11 03:38:23'),
(97, 'Conceptos Clave y Modelos de Afiliación', 97, '2025-07-11 03:38:23', '2025-07-11 03:38:23'),
(98, 'Configurando tu Tienda y Primeros Productos', 98, '2025-07-11 03:38:23', '2025-07-11 03:38:23'),
(99, 'Estructura de un Discurso Persuasivo', 99, '2025-07-11 03:38:23', '2025-07-11 03:38:23'),
(100, 'Ciclos del Sueño y la Higiene del Sueño', 100, '2025-07-11 03:38:23', '2025-07-11 03:38:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_curso_instructor` (`instructor_id`);

--
-- Indexes for table `instructores`
--
ALTER TABLE `instructores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo_electronico` (`correo_electronico`);

--
-- Indexes for table `lecciones`
--
ALTER TABLE `lecciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_leccion_modulo` (`modulo_id`);

--
-- Indexes for table `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_modulo_curso` (`curso_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `instructores`
--
ALTER TABLE `instructores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `lecciones`
--
ALTER TABLE `lecciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `modulos`
--
ALTER TABLE `modulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `fk_curso_instructor` FOREIGN KEY (`instructor_id`) REFERENCES `instructores` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `lecciones`
--
ALTER TABLE `lecciones`
  ADD CONSTRAINT `fk_leccion_modulo` FOREIGN KEY (`modulo_id`) REFERENCES `modulos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `modulos`
--
ALTER TABLE `modulos`
  ADD CONSTRAINT `fk_modulo_curso` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
