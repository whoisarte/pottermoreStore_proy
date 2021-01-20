/*
SQLyog Enterprise v10.42 
MySQL - 8.0.18 : Database - carritocompras
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`carritocompras` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `carritocompras`;

/*Table structure for table `compras` */

DROP TABLE IF EXISTS `compras`;

CREATE TABLE `compras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numeroventa` int(11) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` varchar(50) NOT NULL,
  `cantidad` varchar(50) NOT NULL,
  `subtotal` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB 

/*Data for the table `compras` */

insert  into `compras`(`id`,`numeroventa`,`imagen`,`nombre`,`precio`,`cantidad`,`subtotal`) values (2,1,'galaxy.jpg','galaxy','3500','5','17500'),(3,3,'galaxy.jpg','galaxy','3500','5','17500'),(4,3,'cebolla.jpg','cebolla','200','2','400'),(5,5,'galaxy.jpg','galaxy','3500','5','17500'),(6,5,'cebolla.jpg','cebolla','200','2','400'),(7,6,'galaxy.jpg','galaxy','3500','5','17500'),(8,6,'cebolla.jpg','cebolla','200','2','400'),(9,9,'galaxy.jpg','galaxy','3500','5','17500'),(10,9,'cebolla.jpg','cebolla','200','2','400'),(11,10,'galaxy.jpg','galaxy','3500','5','17500'),(12,10,'cebolla.jpg','cebolla','200','2','400'),(13,13,'galaxy.jpg','galaxy','3500','5','17500'),(14,13,'cebolla.jpg','cebolla','200','2','400'),(15,14,'galaxy.jpg','galaxy','3500','5','17500'),(16,14,'cebolla.jpg','cebolla','200','2','400'),(17,17,'galaxy.jpg','galaxy','3500','5','17500'),(18,17,'cebolla.jpg','cebolla','200','2','400'),(19,18,'galaxy.jpg','galaxy','3500','5','17500'),(20,18,'cebolla.jpg','cebolla','200','2','400'),(21,21,'galaxy.jpg','galaxy','3500','5','17500'),(22,21,'cebolla.jpg','cebolla','200','2','400'),(23,22,'galaxy.jpg','galaxy','3500','5','17500'),(24,22,'cebolla.jpg','cebolla','200','2','400'),(25,25,'galaxy.jpg','galaxy','3500','5','17500'),(26,25,'cebolla.jpg','cebolla','200','2','400'),(27,26,'galaxy.jpg','galaxy','3500','5','17500'),(28,26,'cebolla.jpg','cebolla','200','2','400'),(29,29,'galaxy.jpg','galaxy','3500','5','17500'),(30,29,'cebolla.jpg','cebolla','200','2','400'),(31,30,'galaxy.jpg','galaxy','3500','5','17500'),(32,30,'cebolla.jpg','cebolla','200','3','600'),(33,33,'cebolla.jpg','cebolla','200','1','200'),(34,34,'cebolla.jpg','cebolla','200','2','400'),(35,34,'computadora.jpg','computadora','2000.5','14','28007'),(36,36,'cebolla.jpg','cebolla','200','2','400'),(37,36,'computadora.jpg','computadora','2000.5','14','28007'),(38,37,'cebolla.jpg','cebolla','200','2','400'),(39,37,'computadora.jpg','computadora','2000.5','15','30007.5'),(40,40,'cebolla.jpg','cebolla','200','2','400'),(41,40,'computadora.jpg','computadora','2000.5','18','36009'),(42,41,'cebolla.jpg','cebolla','200','2','400'),(43,41,'computadora.jpg','computadora','2000.5','19','38009.5'),(44,44,'cebolla.jpg','cebolla','200','2','400'),(45,44,'computadora.jpg','computadora','2000.5','19','38009.5'),(46,45,'cebolla.jpg','cebolla','200','2','400'),(47,45,'computadora.jpg','computadora','2000.5','19','38009.5'),(48,48,'cebolla.jpg','cebolla','200','2','400'),(49,48,'computadora.jpg','computadora','2000.5','19','38009.5'),(50,49,'cebolla.jpg','cebolla','200','3','600'),(51,49,'computadora.jpg','computadora','2000.5','1','2000.5'),(52,52,'cebolla.jpg','cebolla','200','3','600'),(53,52,'computadora.jpg','computadora','2000.5','1','2000.5'),(54,53,'cebolla.jpg','cebolla','200','3','600'),(55,53,'computadora.jpg','computadora','2000.5','1','2000.5'),(56,56,'cebolla.jpg','cebolla','200','3','600'),(57,56,'computadora.jpg','computadora','2000.5','1','2000.5'),(58,57,'cebolla.jpg','cebolla','200','1','200'),(59,59,'cebolla.jpg','cebolla','200','2','400'),(60,59,'computadora.jpg','computadora','2000.5','1','2000.5'),(61,60,'cebolla.jpg','cebolla','200','2','400'),(62,60,'computadora.jpg','computadora','2000.5','1','2000.5'),(63,63,'cebolla.jpg','cebolla','200','2','400'),(64,63,'computadora.jpg','computadora','2000.5','1','2000.5'),(65,64,'cebolla.jpg','cebolla','200','2','400'),(66,64,'computadora.jpg','computadora','2000.5','1','2000.5'),(67,67,'cebolla.jpg','cebolla','200','2','400'),(68,67,'computadora.jpg','computadora','2000.5','1','2000.5'),(69,68,'cebolla.jpg','cebolla','200','2','400'),(70,68,'computadora.jpg','computadora','2000.5','1','2000.5'),(71,71,'cebolla.jpg','cebolla','200','2','400'),(72,71,'computadora.jpg','computadora','2000.5','1','2000.5'),(73,72,'cebolla.jpg','cebolla','200','2','400'),(74,72,'computadora.jpg','computadora','2000.5','1','2000.5'),(75,75,'cebolla.jpg','cebolla','200','2','400'),(76,75,'computadora.jpg','computadora','2000.5','1','2000.5'),(77,76,'cebolla.jpg','cebolla','200','2','400'),(78,76,'computadora.jpg','computadora','2000.5','1','2000.5'),(79,79,'cebolla.jpg','cebolla','200','2','400'),(80,79,'computadora.jpg','computadora','2000.5','1','2000.5'),(81,80,'cebolla.jpg','cebolla','200','2','400'),(82,80,'computadora.jpg','computadora','2000.5','1','2000.5'),(83,83,'cebolla.jpg','cebolla','200','2','400'),(84,83,'computadora.jpg','computadora','2000.5','1','2000.5'),(85,84,'cebolla.jpg','cebolla','200','2','400'),(86,84,'computadora.jpg','computadora','2000.5','1','2000.5'),(87,87,'cebolla.jpg','cebolla','200','2','400'),(88,87,'computadora.jpg','computadora','2000.5','1','2000.5'),(89,88,'cebolla.jpg','cebolla','200','2','400'),(90,88,'computadora.jpg','computadora','2000.5','1','2000.5'),(91,91,'cebolla.jpg','cebolla','200','2','400'),(92,91,'computadora.jpg','computadora','2000.5','1','2000.5'),(93,92,'cebolla.jpg','cebolla','200','2','400'),(94,92,'computadora.jpg','computadora','2000.5','1','2000.5'),(95,95,'cebolla.jpg','cebolla','200','2','400'),(96,95,'computadora.jpg','computadora','2000.5','2','4001'),(97,96,'cebolla.jpg','cebolla','200','2','400'),(98,96,'computadora.jpg','computadora','2000.5','2','4001'),(99,99,'cebolla.jpg','cebolla','200','2','400'),(100,99,'computadora.jpg','computadora','2000.5','2','4001'),(101,100,'cebolla.jpg','cebolla','200','2','400'),(102,100,'computadora.jpg','computadora','2000.5','2','4001'),(103,103,'cebolla.jpg','cebolla','200','2','400'),(104,103,'computadora.jpg','computadora','2000.5','2','4001'),(105,104,'cebolla.jpg','cebolla','200','2','400'),(106,104,'computadora.jpg','computadora','2000.5','2','4001'),(107,107,'cebolla.jpg','cebolla','200','2','400'),(108,107,'computadora.jpg','computadora','2000.5','2','4001'),(109,108,'cebolla.jpg','cebolla','200','2','400'),(110,108,'computadora.jpg','computadora','2000.5','2','4001'),(111,111,'cebolla.jpg','cebolla','200','2','400'),(112,111,'computadora.jpg','computadora','2000.5','2','4001'),(113,112,'cebolla.jpg','cebolla','200','2','400'),(114,112,'computadora.jpg','computadora','2000.5','2','4001'),(115,115,'cebolla.jpg','cebolla','200','2','400'),(116,115,'computadora.jpg','computadora','2000.5','2','4001'),(117,116,'cebolla.jpg','cebolla','200','2','400'),(118,116,'computadora.jpg','computadora','2000.5','2','4001'),(119,119,'cebolla.jpg','cebolla','200','2','400'),(120,119,'computadora.jpg','computadora','2000.5','2','4001'),(121,120,'cebolla.jpg','cebolla','200','2','400'),(122,120,'computadora.jpg','computadora','2000.5','2','4001'),(123,123,'cebolla.jpg','cebolla','200','2','400'),(124,123,'computadora.jpg','computadora','2000.5','2','4001'),(125,124,'cebolla.jpg','cebolla','200','2','400'),(126,124,'computadora.jpg','computadora','2000.5','2','4001'),(127,127,'cebolla.jpg','cebolla','200','2','400'),(128,127,'computadora.jpg','computadora','2000.5','2','4001'),(129,128,'cebolla.jpg','cebolla','200','2','400'),(130,128,'computadora.jpg','computadora','2000.5','2','4001'),(131,131,'cebolla.jpg','cebolla','200','2','400'),(132,131,'computadora.jpg','computadora','2000.5','2','4001'),(133,132,'cebolla.jpg','cebolla','200','2','400'),(134,132,'computadora.jpg','computadora','2000.5','2','4001'),(135,135,'cebolla.jpg','cebolla','200','2','400'),(136,135,'computadora.jpg','computadora','2000.5','2','4001'),(137,136,'cebolla.jpg','cebolla','200','2','400'),(138,136,'computadora.jpg','computadora','2000.5','2','4001'),(139,139,'cebolla.jpg','cebolla','200','2','400'),(140,139,'computadora.jpg','computadora','2000.5','2','4001'),(141,140,'cebolla.jpg','cebolla','200','2','400'),(142,140,'computadora.jpg','computadora','2000.5','2','4001'),(143,143,'871948_descargar (1).jpg','Harry Potter y las reliquias de la muerte ','420','1','420'),(144,143,'4559_descargar.jpg','harry potter y la orden del fenix','270','1','270'),(145,144,'871948_descargar (1).jpg','Harry Potter y las reliquias de la muerte ','420','1','420'),(146,144,'4559_descargar.jpg','harry potter y la orden del fenix','270','1','270'),(147,147,'871948_descargar (1).jpg','Harry Potter y las reliquias de la muerte ','420','1','420'),(148,147,'4559_descargar.jpg','harry potter y la orden del fenix','270','1','270'),(149,148,'545196_51tvvDYAygL._SX313_BO1,204,203,200_.jpg','harry potter y el prisionero de azkaban','350','2','700'),(150,148,'403283_legado.jpg','harry potter y el legado maldito','100','1','100'),(151,151,'545196_51tvvDYAygL._SX313_BO1,204,203,200_.jpg','harry potter y el prisionero de azkaban','350','2','700'),(152,151,'403283_legado.jpg','harry potter y el legado maldito','100','1','100');

/*Table structure for table `productos` */

DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `descripcion` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `imagen` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `precio` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB 

/*Data for the table `productos` */

insert  into `productos`(`id`,`nombre`,`descripcion`,`imagen`,`precio`) values (7,'harry potter y el legado maldito','Ser Harry Potter nunca ha sido sencillo, y no se ha visto ahora que es un empleado ','403283_legado.jpg',100),(8,'Harry Potter y las reliquias de la muerte ','Harry Potter y las reliquias de la muerte es el séptimo y último volumen de la ya clásica serie fantástica de la autora británica J.K. Rowling.','871948_descargar (1).jpg',420),(9,'harry potter y el misterio del principe','Harry Potter y el misterio del príncipe es la sexta novela de la ya clásica serie fantástica de la autora británica J.K. Rowling.','668474_978849838921.jpg',320),(10,'harry potter y la orden del fenix','Harry Potter y la Orden del Fénix es la quinta entrega de la ya clásica serie de fantasía de la autora británica J.K. Rowling.','4559_descargar.jpg',270),(11,'harry potter y el caliz de fuego','Harry Potter y el cáliz de fuego es la cuarta entrega de la serie fantástica de la autora británica J.K. Rowling.','705797_9789585234079.jpg',400),(12,'harry potter y el prisionero de azkaban','Harry Potter y el prisionero de Azkaban es la tercera novela de la ya clásica serie fantástica de la autora británica J.K. Rowling.','545196_51tvvDYAygL._SX313_BO1,204,203,200_.jpg',350),(13,'harry potter y la camara de los secretos','Harry Potter y la cámara secreta, el segundo volumen de la ya clásica serie de novelas fantásticas de la autora británica J.K. Rowling.','929850_harry-potter-y-la-camara-secreta-j-k-rowling.jpg',250),(14,'harry potter y la piedra filosofar','Harry Potter y la piedra filosofal es el primer volumen de la ya clásica serie de novelas fantásticas de la autora británica J.K. Rowling.','341862_piedrafilosofar.jpg',230);

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `usuario` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB 

/*Data for the table `usuarios` */

insert  into `usuarios`(`id`,`nombre`,`apellido`,`usuario`,`password`) values (1,'artemio','panuco','artemio','arte123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
