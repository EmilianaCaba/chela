-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: chela
-- ------------------------------------------------------
-- Server version	8.0.42

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
  `id_clientes` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `tel` varchar(25) NOT NULL,
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id_clientes`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'María','González','maria.gonzalez@gmail.com','3424567890','2023-02-20'),(2,'Laura','Fernández','laura.fernandez@gmail.com','3424678901','2023-04-05'),(3,'Ana','Martínez','ana.martinez@gmail.com','3424789012','2023-06-22'),(4,'Sofía','García','sofia.garcia@gmail.com','3424890123','2023-07-01'),(5,'Valentina','Ramírez','valentina.ramirez@gmail.com','3424901234','2023-09-09'),(6,'Camila','Flores','camila.flores@gmail.com','3424012345','2023-11-30'),(7,'Isabella','Benítez','isabella.benitez@gmail.com','3424123456','2024-01-08'),(8,'Lucía','Herrera','lucia.herrera@gmail.com','3424234567','2024-03-17'),(9,'Emma','Vargas','emma.vargas@gmail.com','3424345678','2024-05-03'),(10,'Gabriela','Castro','gabriela.castro@gmail.com','3424456789','2024-07-11'),(11,'Valeria','Ruiz','valeria.ruiz@gmail.com','3424567891','2023-01-25'),(12,'Olivia','Gutiérrez','olivia.gutierrez@gmail.com','3424678902','2023-03-29'),(13,'Julieta','Ortega','julieta.ortega@gmail.com','3424789013','2023-05-02'),(14,'Maite','Silva','maite.silva@gmail.com','3424890124','2023-07-19'),(15,'Paula','Morales','paula.morales@gmail.com','3424901235','2023-09-01'),(16,'Antonia','Rojas','antonia.rojas@gmail.com','3424012346','2023-11-15'),(17,'Emilia','Contreras','emilia.contreras@gmail.com','3424123457','2024-01-25'),(18,'Victoria','Luna','victoria.luna@gmail.com','3424234568','2024-03-01'),(19,'Jazmín','Soto','jazmin.soto@gmail.com','3424345679','2024-05-09'),(20,'Paz','Ortiz','paz.ortiz@gmail.com','3424456780','2024-07-17'),(21,'Delfina','Correa','delfina.correa@gmail.com','3424567892','2023-01-01'),(22,'Abril','Pereira','abril.pereira@gmail.com','3424678903','2023-03-09'),(23,'Renata','Núñez','renata.nunez@gmail.com','3424789014','2023-05-17'),(24,'Lola','Aguirre','lola.aguirre@gmail.com','3424890125','2023-07-25'),(25,'Simona','Figueroa','simona.figueroa@gmail.com','3424901236','2023-09-03'),(26,'Martina','Gómez','martina.gomez@gmail.com','3424012347','2023-01-10'),(27,'Cloe','Benítez','cloe.benitez@gmail.com','3424123458','2023-02-15'),(28,'Bianca','Peralta','bianca.peralta@gmail.com','3424234569','2023-03-20'),(29,'Julia','Montes','julia.montes@gmail.com','3424345670','2023-04-25'),(30,'Florencia','Ferreyra','florencia.ferreyra@gmail.com','3424456781','2023-05-30'),(31,'Agustina','Cáceres','agustina.caceres@gmail.com','3424567893','2023-06-05'),(32,'Ema','Delgado','ema.delgado@gmail.com','3424678904','2023-07-10'),(33,'Romina','Quiroga','romina.quiroga@gmail.com','3424789015','2023-08-15'),(34,'Guadalupe','Vergara','guadalupe.vergara@gmail.com','3424890126','2023-09-20'),(35,'Catalina','Méndez','catalina.mendez@gmail.com','3424901237','2023-10-25'),(36,'Josefina','Duarte','josefina.duarte@gmail.com','3424012348','2023-11-01'),(37,'Pilar','Moretti','pilar.moretti@gmail.com','3424123459','2023-12-06'),(38,'Elena','Suárez','elena.suarez@gmail.com','3424234570','2024-01-11'),(39,'Celeste','Godoy','celeste.godoy@gmail.com','3424345681','2024-02-16'),(40,'Abril','Giménez','abril.gimenez@gmail.com','3424456792','2024-03-21'),(41,'Julieta','Ramírez','julieta.ramirez@gmail.com','3424567903','2024-04-26'),(42,'Morena','Vega','morena.vega@gmail.com','3424679014','2024-05-01'),(43,'Malena','Ríos','malena.rios@gmail.com','3424790125','2024-06-06'),(44,'Antonella','Acosta','antonella.acosta@gmail.com','3424801236','2024-07-11'),(45,'Sol','Ponce','sol.ponce@gmail.com','3424912347','2024-08-16'),(46,'Lara','Carranza','lara.carranza@gmail.com','3424023458','2024-09-21'),(47,'Alma','Ferrari','alma.ferrari@gmail.com','3424134569','2024-10-26'),(48,'Brenda','Figueroa','brenda.figueroa@gmail.com','3424245670','2024-11-01'),(49,'Daniela','Medina','daniela.medina@gmail.com','3424356781','2024-12-06'),(50,'Nerea','Nievas','nerea.nievas@gmail.com','3424467892','2025-01-11');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles_pedido`
--

DROP TABLE IF EXISTS `detalles_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalles_pedido` (
  `id_detalles_pedido` int NOT NULL AUTO_INCREMENT,
  `id_pedido` int NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` int NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_detalles_pedido`,`id_pedido`,`id_producto`),
  KEY `fk_id_pedido_idx` (`id_pedido`),
  KEY `fk_id_producto_idx` (`id_producto`),
  CONSTRAINT `fk_id_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedido`),
  CONSTRAINT `fk_id_producto` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_productos`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_pedido`
--

LOCK TABLES `detalles_pedido` WRITE;
/*!40000 ALTER TABLE `detalles_pedido` DISABLE KEYS */;
INSERT INTO `detalles_pedido` VALUES (1,1,1,1,25999.99),(2,1,3,1,12800.00),(3,2,2,1,32500.50),(4,2,5,1,38700.00),(5,3,4,2,19350.75),(6,3,6,1,17600.25),(7,4,7,1,28100.00),(8,4,10,1,21500.50),(9,5,8,1,45000.90),(10,5,9,2,14999.00),(11,1,11,1,41200.00),(12,2,12,1,22900.00),(13,3,13,1,15500.00),(14,4,14,1,29800.00),(15,5,15,1,16750.00);
/*!40000 ALTER TABLE `detalles_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id_pedido` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_usuario` int NOT NULL,
  `fecha_pedido` date NOT NULL,
  `estado_pedido` varchar(45) NOT NULL,
  `total_pedido` decimal(10,2) NOT NULL,
  `metodo_pago` varchar(45) NOT NULL,
  PRIMARY KEY (`id_pedido`,`id_cliente`,`id_usuario`),
  KEY `fk_id_cliente_idx` (`id_cliente`),
  KEY `fk_id_usuario_idx` (`id_usuario`),
  CONSTRAINT `fk_id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_clientes`),
  CONSTRAINT `fk_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,1,1,'2025-07-19','confirmado',38799.99,'Tarjeta de Crédito'),(2,2,1,'2025-07-19','enviado',71200.50,'Mercado Pago'),(3,3,2,'2025-07-20','pendiente',54550.75,'Transferencia Bancaria'),(4,4,3,'2025-07-20','iniciado',49600.50,'Tarjeta de Débito'),(5,5,1,'2025-07-20','entregado',29400.00,'Efectivo'),(6,1,1,'2025-07-19','confirmado',38799.99,'Tarjeta de Crédito'),(7,2,1,'2025-07-19','enviado',71200.50,'Mercado Pago'),(8,3,2,'2025-07-20','pendiente',54550.75,'Transferencia Bancaria'),(9,4,3,'2025-07-20','iniciado',49600.50,'Tarjeta de Débito'),(10,5,1,'2025-07-20','entregado',29400.00,'Efectivo');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_promocion`
--

DROP TABLE IF EXISTS `producto_promocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto_promocion` (
  `id_producto_promocion` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `id_promocion` int NOT NULL,
  `fecha_aplicacion_inicio` date NOT NULL,
  `fecha_aplicacion_fin` date NOT NULL,
  PRIMARY KEY (`id_producto_promocion`,`id_producto`,`id_promocion`),
  KEY `fk_id_prod_idx` (`id_producto`),
  KEY `fk_id_promo_idx` (`id_promocion`),
  CONSTRAINT `fk_id_prod` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_productos`),
  CONSTRAINT `fk_id_promo` FOREIGN KEY (`id_promocion`) REFERENCES `promociones` (`id_promocion`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_promocion`
--

LOCK TABLES `producto_promocion` WRITE;
/*!40000 ALTER TABLE `producto_promocion` DISABLE KEYS */;
INSERT INTO `producto_promocion` VALUES (50,2,1,'2025-07-20','2025-08-31'),(51,8,1,'2025-07-20','2025-08-31'),(52,1,3,'2025-07-25','2025-08-15'),(53,7,3,'2025-07-25','2025-08-15'),(54,3,4,'2025-08-01','2025-09-30'),(55,9,4,'2025-08-01','2025-09-30'),(56,5,5,'2025-07-20','2025-08-20'),(57,11,5,'2025-07-20','2025-08-20');
/*!40000 ALTER TABLE `producto_promocion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_productos` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `talle` varchar(25) NOT NULL,
  `stock` int NOT NULL,
  `categoria` varchar(45) NOT NULL,
  PRIMARY KEY (`id_productos`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Jean Oxford','Jean de gabardina elastizada, color azul oscuro, tiro alto con roturas sutiles.',25999.99,'M',45,'pantalones'),(2,'Vestido Verano','Vestido de lino, color verde agua, con breteles finos y corte en A.',32500.50,'S',30,'vestidos'),(3,'Top Básico','Top de algodón, color blanco, escote redondo, manga corta.',12800.00,'L',80,'tops'),(4,'Camisa Rayas','Camisa de poplín, color celeste a rayas blancas, corte oversized.',19350.75,'M',50,'camisas'),(5,'Buzo Canguro','Buzo de frisa, color gris melange, con capucha y bolsillo delantero.',38700.00,'L',25,'abrigo'),(6,'Minifalda Jean','Minifalda de jean, color negro gastado, con botones frontales.',17600.25,'S',60,'polleras'),(7,'Pantalón Cargo','Pantalón de gabardina, color beige, con bolsillos laterales y ajuste en tobillos.',28100.00,'L',38,'pantalones'),(8,'Vestido Noche','Vestido de seda fría, color negro, largo al piso, con tajo lateral.',45000.90,'M',20,'vestidos'),(9,'Remera Estampada','Remera de algodón peinado, color natural, estampado vintage en el frente.',14999.00,'S',75,'tops'),(10,'Camisa Lino','Camisa de lino, color tostado, manga larga, estilo rústico.',21500.50,'M',40,'camisas'),(11,'Campera Jean','Campera de jean rígido, color azul clásico, con roturas y detalles gastados.',41200.00,'M',28,'abrigo'),(12,'Pollera Midi','Pollera de bambula, color mostaza, plisada con elástico en cintura.',22900.00,'L',35,'polleras'),(13,'Short De Jean','Short de jean elastizado, color azul claro, tiro medio.',15500.00,'S',55,'pantalones'),(14,'Vestido Casual','Vestido de jersey, color bordó, corte recto, ideal para uso diario.',29800.00,'M',42,'vestidos'),(15,'Top Encaje','Top de seda con detalles de encaje, color crema, tiras regulables.',16750.00,'S',65,'tops'),(16,'Camisa Escocesa','Camisa de franela, color rojo y negro a cuadros, estilo leñador.',23400.00,'L',33,'camisas'),(17,'Sweater Lana','Sweater de lana merino, color verde militar, cuello redondo.',36100.00,'M',22,'abrigo'),(18,'Pollera Larga','Pollera de gasa, color azul marino, con volados y forro interno.',27500.00,'S',30,'polleras'),(19,'Pantalón Vestir','Pantalón de sarga, color negro, corte chupín, tiro medio.',29900.00,'M',48,'pantalones'),(20,'Vestido Fiesta','Vestido de encaje, color champagne, corte sirena, con apliques de pedrería.',55000.00,'S',15,'vestidos'),(21,'Top Deportivo','Top de lycra, color negro, ideal para entrenar, con soporte medio.',9800.00,'L',90,'tops'),(22,'Camisa Seda','Camisa de seda natural, color blanco roto, con caída fluida.',31200.00,'M',27,'camisas'),(23,'Tapado Paño','Tapado de paño, color camel, corte clásico, con botones grandes.',65000.00,'L',18,'abrigo'),(24,'Pollera Tubo','Pollera de morley, color gris oscuro, corte tubo, elastizada.',15999.00,'M',70,'polleras'),(25,'Calza Deportiva','Calza de suplex, color negro, tiro alto, con bolsillo lateral.',18000.00,'S',85,'pantalones'),(26,'Vestido playero','Vestido de voile de algodón, color fucsia, fresco, con diseño de hojas.',26500.00,'L',38,'vestidos'),(27,'Crop Top','Crop top de microfibra, color negro, escote corazón, manga corta.',11500.00,'M',70,'tops'),(28,'Blusa Gasa','Blusa de gasa estampada, color varios, manga 3/4, con lazo en cuello.',20500.00,'S',42,'camisas'),(29,'Chaleco Pelo','Chaleco de piel sintética, color marrón, forrado por dentro.',39900.00,'M',20,'abrigo'),(30,'Pollera Plisada','Pollera de crepé, color rojo, plisado sol, largo midi.',24000.00,'L',30,'polleras'),(31,'Jean Recto','Jean de denim rígido, color celeste, corte recto, tiro medio.',27000.00,'M',50,'pantalones'),(32,'Vestido Boho','Vestido de algodón, color blanco, estilo boho, bordados en el escote.',35000.00,'S',28,'vestidos'),(33,'Musculosa Rib','Musculosa de rib, color negro, básica, ajustada al cuerpo.',10500.00,'L',95,'tops'),(34,'Camisa Oversized','Camisa de oxford, color blanco, estilo oversized, para usar suelta.',22800.00,'M',40,'camisas'),(35,'Piloto Impermeable','Piloto de gabardina, color verde seco, forrado, con cinturón.',52000.00,'L',15,'abrigo'),(36,'Pollera A-line','Pollera de cuero sintético, color camel, corte A-line, con cierre trasero.',28500.00,'S',33,'polleras'),(37,'Jogger Algodón','Jogger de algodón rústico, color negro, con puños elastizados.',21000.00,'M',60,'pantalones'),(38,'Vestido Maxi','Vestido maxi de jersey, color azul, corte relajado, manga corta.',31500.00,'L',36,'vestidos'),(39,'Top Lentejuelas','Top de lentejuelas, color plata, ideal para fiestas, forrado.',18900.00,'S',25,'tops'),(40,'Camisa Denim','Camisa de denim suave, color celeste oscuro, con bolsillos en el pecho.',24500.00,'M',48,'camisas'),(41,'Cardigan Lana','Cardigan de lana, color crudo, tejido grueso, abierto al frente.',37000.00,'L',20,'abrigo'),(42,'Pollera Jean Elastizada','Pollera de jean, color azul, elastizada, corte clásico.',16800.00,'M',55,'polleras'),(43,'Pantalón Mom','Pantalón de jean, color azul claro, corte mom, tiro alto.',26500.00,'S',40,'pantalones'),(44,'Vestido Lencero','Vestido lencero de satén, color rosa viejo, con puntilla en el escote.',33000.00,'M',22,'vestidos'),(45,'Top de Punto','Top de punto fino, color bordó, cuello tortuga, sin mangas.',13500.00,'L',68,'tops'),(46,'Camisa Poplín','Camisa de poplín, color negro, entallada, ideal para oficina.',20800.00,'S',35,'camisas'),(47,'Parka','Parka de algodón, color verde oliva, forrada, con capucha desmontable.',49000.00,'M',17,'abrigo'),(48,'Pollera Cuero','Pollera de cuero ecológico, color negro, con cierre expuesto.',29500.00,'L',29,'polleras'),(49,'Jean Skynny','Jean de denim elastizado, color gris oscuro, tiro alto, calce ajustado.',24000.00,'S',52,'pantalones'),(50,'Vestido Floreado','Vestido de bambula, estampado floral, color blanco y rosa, vuelo en la falda.',30500.00,'M',31,'vestidos');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promociones`
--

DROP TABLE IF EXISTS `promociones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promociones` (
  `id_promocion` int NOT NULL AUTO_INCREMENT,
  `nombre_promocion` varchar(45) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `tipo_descuento` varchar(45) NOT NULL,
  `valor_descuento` decimal(10,2) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `aplicable_a` varchar(45) NOT NULL,
  PRIMARY KEY (`id_promocion`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promociones`
--

LOCK TABLES `promociones` WRITE;
/*!40000 ALTER TABLE `promociones` DISABLE KEYS */;
INSERT INTO `promociones` VALUES (1,'Promo Verano 2025','15% de descuento en todos los vestidos.','porcentaje',0.15,'2025-07-20','2025-08-31','vestidos'),(2,'Envío Gratis SF','Envío sin costo para compras en Santa Fe Capital.','valor de envio',0.00,'2025-07-20','2025-07-27','valor del envio'),(3,'Descuento Pantalones','Descuento de $3000 en cualquier pantalón.','monto fijo',3000.00,'2025-07-25','2025-08-15','pantalones'),(4,'Top Oferta','20% de descuento en tops de la nueva colección.','porcentaje',0.20,'2025-08-01','2025-09-30','tops'),(5,'Abrigo de Temporada','Descuento de $5000 en abrigos seleccionados.','monto fijo',5000.00,'2025-07-20','2025-08-20','abrigo');
/*!40000 ALTER TABLE `promociones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `tel` varchar(25) NOT NULL,
  `rol` varchar(25) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Ana','García','ana.garcia@empresa.com','3424123450','gerente'),(2,'Luisa','Martínez','luisa.martinez@empresa.com','3424123451','vendedor'),(3,'Sofía','López','sofia.lopez@empresa.com','3424123452','vendedor');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'chela'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-20 20:23:41
