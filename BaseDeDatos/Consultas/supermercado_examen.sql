-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: supermercado
-- ------------------------------------------------------
-- Server version	8.0.41
Create database SUPERMERCADO;
USE SUPERMERCADO;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Juan Pérez','González','Calle Mayor 123, Madrid','612345678','juan.perez@mail.com'),(2,'Ana López','Martínez','Avenida del Sol 456, Barcelona','612345679','ana.lopez@mail.com'),(3,'Luis García','Hernández','Calle del Río 789, Valencia','612345680','luis.garcia@mail.com'),(4,'Laura Sánchez','Rodríguez','Calle de la Luna 321, Sevilla','612345681','laura.sanchez@mail.com'),(5,'Carlos Fernández','García','Plaza Mayor 654, Zaragoza','612345682','carlos.fernandez@mail.com'),(6,'Sofía González','Martínez','Calle de las Flores 987, Málaga','612345683','sofia.gonzalez@mail.com'),(7,'Pedro Díaz','López','Calle de la Paz 432, Alicante','612345684','pedro.diaz@mail.com'),(8,'Elena Rodríguez','García','Avenida de la Libertad 123, Valencia','612345685','elena.rodriguez@mail.com'),(9,'Miguel Martínez','Sánchez','Calle de los Vientos 555, Córdoba','612345686','miguel.martinez@mail.com'),(10,'Javier Ramírez','Pérez','Calle del Mar 222, Bilbao','612345687','javier.ramirez@mail.com'),(11,'Raquel González','Vázquez','Avenida de la Constitución 101, Salamanca','612345688','raquel.gonzalez@mail.com'),(12,'Martín Ruiz','Sánchez','Calle del Sol 500, Granada','612345689','martin.ruiz@mail.com'),(13,'Cristina Pérez','Jiménez','Calle de las Estrellas 333, Murcia','612345690','cristina.perez@mail.com'),(14,'José Martínez','López','Calle Mayor 44, Oviedo','612345691','jose.martinez@mail.com'),(15,'Isabel García','Serrano','Calle de la Esperanza 765, Valladolid','612345692','isabel.garcia@mail.com'),(16,'Manuel Fernández','López','Avenida del Mar 876, Alicante','612345693','manuel.fernandez@mail.com'),(17,'Sandra Pérez','Gómez','Calle del Prado 888, La Coruña','612345694','sandra.perez@mail.com'),(18,'Antonio Díaz','Hernández','Plaza de la Paz 555, Valencia','612345695','antonio.diaz@mail.com'),(19,'Paula López','Fernández','Calle de la Tierra 112, Salamanca','612345696','paula.lopez@mail.com'),(20,'David Sánchez','Molina','Calle del Viento 221, Barcelona','612345697','david.sanchez@mail.com'),(21,'Carmen Martínez','Serrano','Calle de los Olivos 402, Cádiz','612345698','carmen.martinez@mail.com'),(22,'Antonio Gómez','Ramírez','Calle de los Pinos 232, Toledo','612345699','antonio.gomez@mail.com'),(23,'Juan Carlos López','González','Calle de la Rosa 99, Palma de Mallorca','612345700','juan.carlos.lopez@mail.com'),(24,'Marta Díaz','Rodríguez','Avenida de la Libertad 568, Valladolid','612345701','marta.diaz@mail.com'),(25,'Ramón Ramírez','Sánchez','Calle del Águila 417, Zaragoza','612345702','ramon.ramirez@mail.com'),(26,'Lucía Rodríguez','González','Calle de la Estrella 142, Madrid','612345703','lucia.rodriguez@mail.com'),(27,'José Luis Pérez','Hernández','Calle del Sol 316, Málaga','612345704','joseluis.perez@mail.com'),(28,'Mercedes García','Serrano','Calle de las Aves 523, Bilbao','612345705','mercedes.garcia@mail.com'),(29,'Pedro López','Gómez','Avenida de los Reyes 109, Granada','612345706','pedro.lopez@mail.com'),(30,'Miguel Ángel Martínez','Ruiz','Plaza de la Constitución 415, Barcelona','612345707','miguelangel.martinez@mail.com'),(31,'Ana María Sánchez','Ramírez','Calle del Río 728, La Coruña','612345708','anamaria.sanchez@mail.com'),(32,'Francisco Javier González','López','Avenida del Mar 627, Sevilla','612345709','franciscojavier.gonzalez@mail.com'),(33,'Mónica Pérez','Ramírez','Calle del Bosque 981, Alicante','612345710','monica.perez@mail.com'),(34,'José Enrique Sánchez','Martínez','Calle de las Torres 102, Valencia','612345711','joseenrique.sanchez@mail.com'),(35,'Pilar González','Vázquez','Plaza de España 309, Madrid','612345712','pilar.gonzalez@mail.com'),(36,'Beatriz Díaz','Serrano','Calle del Álamo 132, Zaragoza','612345713','beatriz.diaz@mail.com'),(37,'Raúl López','Martínez','Calle de la Luna 432, Madrid','612345714','raul.lopez@mail.com'),(38,'Sonia Sánchez','García','Avenida de la Paz 356, Salamanca','612345715','sonia.sanchez@mail.com'),(39,'Joaquín Pérez','Hernández','Calle de la Fuente 921, La Coruña','612345716','joaquin.perez@mail.com'),(40,'Isabel Fernández','Ramírez','Calle de los Naranjos 549, Toledo','612345717','isabel.fernandez@mail.com'),(41,'Antonio López','González','Calle del Águila 833, Barcelona','612345718','antonio.lopez@mail.com'),(42,'Sara Martínez','Rodríguez','Calle del Prado 756, Madrid','612345719','sara.martinez@mail.com'),(43,'Ricardo Díaz','Serrano','Calle de las Higueras 102, Cádiz','612345720','ricardo.diaz@mail.com'),(44,'Natalia González','Pérez','Plaza Mayor 456, Oviedo','612345721','natalia.gonzalez@mail.com'),(45,'José María López','Gómez','Calle del Sol 788, Zaragoza','612345722','josemaria.lopez@mail.com'),(46,'María del Mar García','Ramírez','Avenida de la Libertad 222, La Coruña','612345723','mariadelmar.garcia@mail.com'),(47,'José Carlos Fernández','González','Calle de la Paz 567, Sevilla','612345724','josecarlos.fernandez@mail.com'),(48,'Carlos Ramírez','Hernández','Calle del Mar 213, Madrid','612345725','carlos.ramirez@mail.com'),(49,'Sonia López','González','Calle de la Rosa 645, Valencia','612345726','sonia.lopez@mail.com'),(50,'Carlos Javier Pérez','Sánchez','Calle de las Limas 129, Bilbao','612345727','carlosjavier.perez@mail.com'),(51,'María José Rodríguez','Martínez','Plaza de los Reyes 876, Granada','612345728','mariajose.rodriguez@mail.com'),(52,'Luis Ángel Sánchez','González','Calle del Viento 150, Salamanca','612345729','luisangel.sanchez@mail.com'),(53,'Patricia Ramírez','López','Calle del Álamo 234, Barcelona','612345730','patricia.ramirez@mail.com'),(54,'Javier Martínez','González','Calle del Prado 564, Zaragoza','612345731','javier.martinez@mail.com'),(55,'Ana Isabel Sánchez','Hernández','Calle del Sol 485, Madrid','612345732','anaisabel.sanchez@mail.com'),(56,'Juan Antonio Pérez','Rodríguez','Plaza Mayor 309, La Coruña','612345733','juanantonio.perez@mail.com'),(57,'Carmen García','Vázquez','Calle del Bosque 923, Valencia','612345734','carmen.garcia@mail.com'),(58,'José Luis González','López','Calle de la Rosa 234, Bilbao','612345735','joseluis.gonzalez@mail.com'),(59,'Cristina Sánchez','Martínez','Avenida de la Paz 503, Granada','612345736','cristina.sanchez@mail.com'),(60,'Pedro González','Ramírez','Calle del Sol 312, Barcelona','612345737','pedro.gonzalez@mail.com'),(61,'Mercedes López','Hernández','Calle del Río 775, Oviedo','612345738','mercedes.lopez@mail.com'),(62,'Lucía Pérez','Vázquez','Plaza de la Constitución 221, Málaga','612345739','lucia.perez@mail.com'),(63,'María Ramírez','González','Calle de la Fuente 455, Valencia','612345740','maria.ramirez@mail.com'),(64,'Juan González','Serrano','Calle Mayor 312, Zaragoza','612345741','juan.gonzalez@mail.com'),(65,'José Pérez','Hernández','Avenida de la Constitución 209, Madrid','612345742','jose.perez@mail.com'),(66,'Antonio Ramírez','Gómez','Calle del Sol 455, Salamanca','612345743','antonio.ramirez@mail.com'),(67,'Rosa Sánchez','Pérez','Calle de las Estrellas 102, Barcelona','612345744','rosa.sanchez@mail.com'),(68,'Juan Carlos González','Hernández','Calle del Río 402, Cádiz','612345745','juancarlos.gonzalez@mail.com');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `puesto` varchar(50) NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Ricardo Torres','Cajero',1200.00,'2020-01-15'),(2,'Pedro Morales','Reponedor',1000.00,'2021-03-10'),(3,'Laura Ramírez','Supervisor',1500.00,'2019-11-20'),(4,'Carlos Hernández','Vendedor',1100.00,'2020-06-05'),(5,'Sofía Ruiz','Encargado de sección',1600.00,'2021-08-15'),(6,'Miguel Pérez','Cajero',1200.00,'2021-04-20'),(7,'Clara López','Cajero',1250.00,'2020-07-30'),(8,'Javier González','Reponedor',1050.00,'2019-09-15'),(9,'Ana García','Cajero',1300.00,'2021-02-25'),(10,'Antonio Díaz','Vendedor',1100.00,'2020-11-10'),(11,'Juan Rodríguez','Cajero',1300.00,'2019-08-18'),(12,'Susana Martínez','Vendedora',1050.00,'2021-01-05'),(13,'David Pérez','Reponedor',1000.00,'2020-12-10'),(14,'Patricia López','Supervisor',1500.00,'2018-05-10'),(15,'José García','Encargado de sección',1600.00,'2021-06-01'),(16,'Marta Fernández','Cajera',1200.00,'2020-03-25'),(17,'Luis Sánchez','Vendedor',1100.00,'2020-02-10'),(18,'Rosa Fernández','Reponedora',1050.00,'2019-07-19'),(19,'Roberto López','Supervisor',1500.00,'2018-06-15'),(20,'Marta Rodríguez','Supervisor',1700.00,'2018-12-01'),(21,'Carlos Ruiz','Vendedor',1150.00,'2021-05-15'),(22,'Patricia Rodríguez','Cajera',1200.00,'2021-07-20'),(23,'Jorge López','Reponedor',1000.00,'2021-09-10'),(24,'Martín Sánchez','Encargado de sección',1600.00,'2019-08-21'),(25,'Lucía Fernández','Cajera',1300.00,'2021-01-25'),(26,'Adrián Pérez','Vendedor',1100.00,'2020-12-30'),(27,'Carlos López','Reponedor',1000.00,'2021-05-12'),(28,'José Martínez','Vendedor',1200.00,'2020-02-01'),(29,'Alba García','Cajera',1250.00,'2021-09-05'),(30,'Santiago Gómez','Reponedor',1050.00,'2019-10-10'),(31,'Nerea Sánchez','Cajera',1300.00,'2021-11-12'),(32,'Antonio Rodríguez','Supervisor',1500.00,'2018-04-10'),(33,'Ricardo Martín','Vendedor',1100.00,'2020-09-15'),(34,'Juan Carlos Pérez','Encargado de sección',1600.00,'2019-11-05'),(35,'Lucía Ramírez','Reponedora',1050.00,'2020-04-10'),(36,'Martín Gómez','Cajero',1200.00,'2021-02-12'),(37,'Antonio González','Supervisor',1500.00,'2019-08-10'),(38,'Sara López','Vendedora',1150.00,'2021-03-03'),(39,'Beatriz García','Reponedora',1000.00,'2020-05-20'),(40,'Fernando Fernández','Cajero',1200.00,'2021-06-30'),(41,'José Luis Sánchez','Supervisor',1500.00,'2019-02-25'),(42,'Marta González','Cajera',1300.00,'2020-08-01'),(43,'Esteban López','Vendedor',1100.00,'2021-04-25'),(44,'Eva Martínez','Reponedora',1050.00,'2019-01-10'),(45,'Natalia Pérez','Cajera',1250.00,'2021-05-30'),(46,'Miguel Rodríguez','Supervisor',1500.00,'2019-10-20'),(47,'Inés García','Vendedora',1150.00,'2021-02-05'),(48,'Martín Pérez','Cajero',1200.00,'2020-06-25'),(49,'María Sánchez','Reponedora',1000.00,'2020-07-15'),(50,'Carlos Martínez','Encargado de sección',1600.00,'2021-07-05'),(51,'José Rodríguez','Vendedor',1100.00,'2021-09-10'),(52,'Marta Sánchez','Reponedora',1050.00,'2021-03-12'),(53,'Javier González','Cajero',1200.00,'2019-12-05'),(54,'Carlos Sánchez','Vendedor',1150.00,'2021-02-10'),(55,'Alba López','Cajera',1250.00,'2021-01-12'),(56,'Fernando Sánchez','Supervisor',1500.00,'2020-03-15'),(57,'Patricia Martínez','Cajera',1200.00,'2021-05-01'),(58,'Martín Ramírez','Reponedor',1050.00,'2020-09-25'),(59,'Carlos González','Vendedor',1100.00,'2021-06-20'),(60,'Raúl Pérez','Encargado de sección',1600.00,'2021-08-25'),(61,'Alicia Fernández','Cajera',1200.00,'2020-02-28'),(62,'Raquel Rodríguez','Reponedora',1000.00,'2019-11-15'),(63,'Antonio Pérez','Vendedor',1150.00,'2021-04-10'),(64,'Juan Fernández','Cajero',1200.00,'2021-02-01'),(65,'María Ramírez','Supervisor',1500.00,'2020-05-18'),(66,'Javier Pérez','Vendedor',1100.00,'2021-09-30'),(67,'Sofía González','Cajera',1300.00,'2020-11-10'),(68,'Carlos Ramírez','Reponedor',1000.00,'2020-07-01'),(69,'José Pérez','Encargado de sección',1600.00,'2019-08-10'),(70,'Lucía Rodríguez','Cajera',1200.00,'2020-03-18'),(71,'Oscar Pérez','Vendedor',1100.00,'2021-06-28'),(72,'Pedro Ramírez','Reponedor',1050.00,'2020-12-05'),(73,'María López','Supervisor',1500.00,'2020-10-15'),(74,'José García','Vendedor',1150.00,'2021-08-15'),(75,'Beatriz López','Cajera',1300.00,'2021-07-15'),(76,'José Martínez','Reponedor',1000.00,'2021-04-12'),(77,'Raúl González','Encargado de sección',1600.00,'2019-09-20'),(78,'Carlos Pérez','Vendedor',1100.00,'2020-10-25'),(79,'Patricia Sánchez','Cajera',1250.00,'2021-05-18'),(80,'Juan Ramírez','Reponedor',1050.00,'2021-03-07'),(81,'Alba Martínez','Supervisor',1500.00,'2019-06-30'),(82,'Daniel Rodríguez','Vendedor',1100.00,'2021-07-02'),(83,'Patricia Pérez','Cajera',1200.00,'2020-01-12'),(84,'Carlos Fernández','Reponedor',1000.00,'2021-11-22'),(85,'Marta Rodríguez','Cajera',1250.00,'2020-04-30'),(86,'Fernando López','Vendedor',1100.00,'2021-09-05'),(87,'Antonio Fernández','Supervisor',1500.00,'2021-06-12'),(88,'María González','Reponedora',1000.00,'2021-01-15'),(89,'Miguel González','Cajero',1200.00,'2021-05-22'),(90,'José López','Vendedor',1150.00,'2020-02-12'),(91,'Juan Pérez','Encargado de sección',1600.00,'2020-08-17'),(92,'Santiago Martínez','Reponedor',1050.00,'2021-10-10'),(93,'Cristina González','Cajera',1200.00,'2020-06-30'),(94,'Patricia Ramírez','Vendedora',1150.00,'2021-11-10'),(95,'Carlos Ramírez','Cajero',1200.00,'2021-07-20'),(96,'José Ramírez','Supervisor',1500.00,'2021-10-25'),(97,'Lucía González','Cajera',1300.00,'2021-12-01'),(98,'Oscar Sánchez','Vendedor',1100.00,'2021-09-20'),(99,'David Ramírez','Reponedor',1000.00,'2021-02-28'),(100,'Laura Rodríguez','Encargado de sección',1600.00,'2020-11-05'),(101,'Alberto Pérez','Cajero',1200.00,'2021-05-10'),(102,'José Ruiz','Reponedor',1050.00,'2021-08-30'),(103,'Marta Pérez','Vendedora',1150.00,'2021-07-14'),(104,'Fernando Pérez','Supervisor',1500.00,'2021-01-28');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Arroz Blanco','Arroz de grano largo, ideal para acompañar tus platos',1.50,300),(2,'Azúcar Blanca','Azúcar refinada para endulzar tus bebidas y postres',0.80,250),(3,'Sal de Mesa','Sal blanca para sazonar tus alimentos',0.50,500),(4,'Harina de Trigo','Harina de trigo para repostería y panadería',1.20,150),(5,'Aceite Vegetal','Aceite de cocina de uso general',3.00,100),(6,'Leche Entera','Leche entera de vaca, ideal para consumo diario',1.10,200),(7,'Huevo de Gallina','Huevo fresco de gallina, en caja de 12 unidades',2.50,180),(8,'Pan de Molde','Pan de molde blanco, ideal para sándwiches',1.00,350),(9,'Mantequilla','Mantequilla de vaca para untar o cocinar',2.30,150),(10,'Queso Fresco','Queso fresco de vaca, ideal para sandwiches y ensaladas',3.50,100),(11,'Yogurt Natural','Yogurt natural sin azúcar, saludable y delicioso',0.90,200),(12,'Cereal de Maíz','Cereal de maíz, ideal para el desayuno',2.00,250),(13,'Jugo de Naranja','Jugo 100% natural de naranja, sin conservantes',1.80,150),(14,'Café Molido','Café molido, 100% natural',3.50,100),(15,'Té Negro','Té negro de hojas enteras, ideal para infusión',2.20,220),(16,'Galletas de Vainilla','Galletas dulces de vainilla',1.50,350),(17,'Chocolate en Tabletas','Chocolate semi amargo en tabletas',2.80,180),(18,'Pasta Espaguetis','Espaguetis de trigo, ideal para preparar pasta',1.40,300),(19,'Salsa de Tomate','Salsa de tomate, ideal para pastas y pizzas',1.60,400),(20,'Sopa Instantánea','Sopa instantánea de pollo',1.00,350),(21,'Pechuga de Pollo','Pechuga de pollo fresca, empacada al vacío',5.50,120),(22,'Carne Molida','Carne molida de res, ideal para preparar hamburguesas',6.00,80),(23,'Pescado Congelado','Filete de pescado congelado, fresco y delicioso',4.50,90),(24,'Cerveza','Cerveza artesanal de malta',1.50,200),(25,'Refresco de Cola','Refresco de cola, bebida gaseosa refrescante',1.20,500),(26,'Agua Mineral','Agua mineral embotellada',0.60,700),(27,'Limonada','Limonada natural, refrescante y sin conservantes',1.30,150),(28,'Cerveza Light','Cerveza light de bajo contenido calórico',1.80,100),(29,'Vino Tinto','Vino tinto de uva tempranillo',8.00,50),(30,'Vino Blanco','Vino blanco seco',7.50,70),(31,'Whisky','Whisky de malta escocés',15.00,30),(32,'Vodka','Vodka premium, de gran calidad',12.00,40),(33,'Cigarrillos','Paquete de cigarrillos marca popular',3.00,150),(34,'Papel Higiénico','Papel higiénico de 4 rollos',2.50,400),(35,'Detergente Líquido','Detergente líquido para lavar platos',2.20,250),(36,'Lavavajillas','Lavavajillas en pastillas para máquinas',4.00,200),(37,'Limpiador Multiusos','Limpiador multiusos para diversas superficies',3.10,180),(38,'Bolsas de Basura','Bolsas de basura grandes',1.50,300),(39,'Desinfectante','Desinfectante para pisos y superficies',2.00,280),(40,'Shampoo','Shampoo para cabello normal',3.00,200),(41,'Acondicionador','Acondicionador para cabello seco',2.50,250),(42,'Crema Hidratante','Crema hidratante para la piel',4.50,100),(43,'Pasta de Dientes','Pasta dental con flúor',1.80,300),(44,'Cepillo de Dientes','Cepillo de dientes de cerdas suaves',1.20,350),(45,'Maquillaje','Base de maquillaje líquida',6.00,120),(46,'Desodorante','Desodorante en aerosol',2.50,400),(47,'Raspador de Piel','Raspador para la piel, ideal para eliminar células muertas',1.00,150),(48,'Protector Solar','Protector solar FPS 50',5.00,80),(49,'Aspirinas','Aspirinas para dolores comunes',1.00,200),(50,'Antibióticos','Antibióticos en pastillas',4.00,100),(51,'Jeringas','Jeringas desechables',2.00,150),(52,'Vitaminas','Vitaminas C para fortalecer el sistema inmunológico',3.50,250),(53,'Vendas','Vendas elásticas para lesiones',1.50,180),(54,'Gasas','Gasas estériles para primeros auxilios',1.20,220),(55,'Tiritas','Tiritas curativas, caja de 50 unidades',2.00,200),(56,'Termómetro','Termómetro digital',5.00,90),(57,'Desinfectante de Manos','Desinfectante en gel para manos',1.80,300),(58,'Alcohol','Alcohol en gel, ideal para desinfección',2.30,250),(59,'Mascarillas','Mascarillas faciales de uso médico',1.00,400),(60,'Toallitas Húmedas','Toallitas húmedas desinfectantes',1.50,350),(61,'Lentes de Sol','Lentes de sol con protección UV',5.50,150),(62,'Gafas de Lectura','Gafas de lectura para presbicia',4.00,100),(63,'Cinta Adhesiva','Cinta adhesiva de uso general',1.00,300),(64,'Super Glue','Pegamento instantáneo para reparaciones',2.00,250),(65,'Papel Aluminio','Papel aluminio de 30 cm de ancho',2.20,400),(66,'Film Plástico','Film plástico para envolver alimentos',1.50,350),(67,'Cucharas de Plástico','Cucharas de plástico desechables, paquete de 50',1.00,300),(68,'Tenedores de Plástico','Tenedores de plástico desechables, paquete de 50',1.00,300),(69,'Platos de Cartón','Platos desechables de cartón',1.20,250),(70,'Servilletas','Servilletas de papel para eventos',1.00,350),(71,'Bolsas Reutilizables','Bolsas reutilizables para compras',2.00,500),(72,'Cubo de Basura','Cubo de basura plástico de 20 litros',3.50,200),(73,'Escoba','Escoba de fibra sintética',3.00,180),(74,'Mopa','Mopa de microfibra para limpiar pisos',2.50,200),(75,'Trapeador','Trapeador de algodón',1.80,250),(76,'Escurridor','Escurridor de platos de acero inoxidable',3.00,150),(77,'Esponja de Cocina','Esponja de cocina para lavar platos',0.80,400),(78,'Cepillo de Cocina','Cepillo para lavar ollas y utensilios',1.50,350),(79,'Secador de Platos','Secador de platos de plástico',4.00,150),(80,'Hervidor Eléctrico','Hervidor eléctrico de 1.5L',10.00,100),(81,'Microondas','Microondas de 20L, con múltiples funciones',70.00,60),(82,'Lavadora','Lavadora de ropa automática',200.00,30),(83,'Refrigerador','Refrigerador de 300L con freezer',350.00,25),(84,'Ventilador','Ventilador de pie, con 3 velocidades',25.00,50),(85,'Aire Acondicionado','Aire acondicionado portátil',150.00,40),(86,'Televisor LED','Televisor LED de 40 pulgadas',180.00,50),(87,'Laptop','Laptop de 15 pulgadas con procesador i5',500.00,20),(88,'Smartphone','Smartphone con pantalla de 6 pulgadas',300.00,30),(89,'Cargador de Celular','Cargador universal para teléfono móvil',10.00,100),(90,'Auriculares','Auriculares inalámbricos',25.00,150),(91,'Reloj de Pulsera','Reloj de pulsera analógico',15.00,200),(92,'Mochila','Mochila para escuela o trabajo',20.00,250),(93,'Billetera','Billetera de cuero para caballero',30.00,200),(94,'Cartera','Cartera de mujer',25.00,180),(95,'Gafas de Sol','Gafas de sol con protección UV',15.00,150),(96,'Paraguas','Paraguas plegable para lluvia',10.00,200),(97,'Maleta de Viaje','Maleta de viaje con ruedas',50.00,70),(98,'Silla de Oficina','Silla ergonómica para oficina',60.00,40),(99,'Escritorio','Escritorio de madera para oficina',80.00,20),(100,'Estufa Eléctrica','Estufa eléctrica portátil',30.00,50),(101,'Calefactor','Calefactor eléctrico para espacios pequeños',40.00,30),(102,'Termo de Acero','Termo de acero inoxidable, 1 litro',20.00,150),(103,'Taza','Taza de cerámica para café',5.00,200);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secciones`
--

DROP TABLE IF EXISTS `secciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `secciones` (
  `id_empleado` int NOT NULL,
  `id_producto` int NOT NULL,
  PRIMARY KEY (`id_empleado`,`id_producto`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `secciones_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`),
  CONSTRAINT `secciones_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secciones`
--

LOCK TABLES `secciones` WRITE;
/*!40000 ALTER TABLE `secciones` DISABLE KEYS */;
INSERT INTO `secciones` VALUES (1,1),(2,1),(1,2),(2,2),(2,3),(2,4),(12,4),(1,5),(2,5),(12,5),(2,6),(12,6),(1,7),(2,7),(3,7),(12,7),(2,8),(12,8),(2,9),(12,9),(3,10),(12,10),(3,11),(12,11),(3,12),(12,12),(3,13),(13,13),(3,14),(13,14),(3,15),(13,15),(3,16),(13,16),(4,17),(13,17),(4,18),(13,18),(4,19),(13,19),(4,20),(13,20),(20,20),(4,21),(13,21),(4,22),(13,22),(4,23),(14,23),(4,24),(14,24),(4,25),(14,25),(5,26),(14,26),(5,27),(14,27),(5,28),(14,28),(5,29),(14,29),(5,30),(14,30),(5,31),(14,31),(5,32),(15,32),(5,33),(15,33),(5,34),(15,34),(6,35),(15,35),(6,36),(15,36),(6,37),(15,37),(6,38),(15,38),(6,39),(16,39),(6,40),(16,40),(7,41),(16,41),(7,42),(16,42),(7,43),(16,43),(7,44),(16,44),(7,45),(16,45),(7,46),(16,46),(7,47),(16,47),(7,48),(17,48),(7,49),(17,49),(7,50),(17,50),(7,51),(17,51),(7,52),(17,52),(8,53),(17,53),(8,54),(17,54),(8,55),(17,55),(8,56),(17,56),(8,57),(17,57),(8,58),(17,58),(8,59),(17,59),(8,60),(17,60),(8,61),(18,61),(8,62),(18,62),(9,63),(18,63),(9,64),(18,64),(9,65),(18,65),(9,66),(18,66),(9,67),(18,67),(9,68),(18,68),(9,69),(18,69),(9,70),(18,70),(9,71),(18,71),(9,72),(18,72),(1,73),(18,73),(1,74),(18,74),(1,75),(18,75),(1,76),(18,76),(1,77),(19,77),(1,78),(1,79),(20,79),(1,80),(20,80),(1,81),(20,81),(1,82),(20,82),(10,83),(20,83),(10,84),(20,84),(10,85),(20,85),(10,86),(20,86),(10,87),(20,87),(10,88),(20,88),(10,89),(21,89),(10,90),(21,90),(10,91),(22,91),(10,92),(22,92),(10,93),(23,93),(11,94),(24,94),(11,95),(25,95),(11,96),(26,96),(11,97),(26,97),(11,98),(27,98),(11,99),(29,99),(1,100),(11,100),(12,101),(12,102),(12,103);
/*!40000 ALTER TABLE `secciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `id_cliente` int NOT NULL,
  `id_empleado` int NOT NULL,
  `cantidad` int NOT NULL,
  `precio_total` decimal(10,2) NOT NULL,
  `fecha_venta` date NOT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `id_producto` (`id_producto`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_empleado` (`id_empleado`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (101,12,34,7,3,312.00,'2024-07-15'),(102,12,34,7,3,312.00,'2024-07-15'),(104,33,21,3,2,426.50,'2024-02-18'),(106,45,66,9,5,975.00,'2025-01-09'),(107,9,34,8,6,410.00,'2024-03-21'),(108,28,57,4,3,267.00,'2023-07-15'),(147,4,21,5,8,324.50,'2023-08-22'),(149,20,29,10,1,112.50,'2025-03-18'),(150,11,48,3,5,385.00,'2024-06-28'),(151,24,68,9,4,199.99,'2023-05-14'),(152,18,62,16,3,262.50,'2024-04-30'),(153,10,43,8,6,520.00,'2023-02-20'),(156,27,54,2,7,407.50,'2024-10-04'),(158,42,16,10,9,882.00,'2024-05-02'),(160,30,21,14,4,240.00,'2024-06-12'),(162,15,56,5,8,784.00,'2024-09-01'),(163,38,37,1,1,88.00,'2025-01-21'),(164,39,68,16,7,560.00,'2023-11-14'),(165,40,49,14,9,1125.00,'2025-03-02'),(166,22,45,10,10,350.00,'2024-08-22'),(167,23,62,13,6,456.00,'2024-11-30'),(169,31,19,12,1,49.99,'2024-12-18'),(170,32,24,8,7,245.50,'2024-05-29'),(171,25,59,6,2,118.00,'2023-10-04'),(172,26,39,11,6,492.00,'2023-01-16'),(174,36,41,1,8,436.00,'2024-04-25'),(175,21,50,9,3,297.00,'2023-11-27'),(176,41,12,17,2,102.00,'2024-10-10'),(177,43,55,18,9,1179.00,'2023-03-19'),(178,44,65,7,4,180.00,'2024-02-14'),(180,47,27,9,6,315.00,'2023-08-05'),(182,49,50,5,2,177.00,'2024-12-22'),(183,49,50,5,2,177.00,'2024-12-22');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-08 11:08:09
