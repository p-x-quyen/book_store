-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: online_book_store_tl
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Username_UNIQUE` (`Username`),
  KEY `FKAccount437857` (`CustomerID`),
  CONSTRAINT `FKAccount437857` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (2,2,'an123','an123'),(3,3,'long123','long123'),(4,4,'manh123','manh123');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int NOT NULL,
  `City` varchar(255) DEFAULT NULL,
  `District` varchar(255) DEFAULT NULL,
  `Street` varchar(255) DEFAULT NULL,
  `HouseNumber` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKAddress64710` (`CustomerID`),
  CONSTRAINT `FKAddress64710` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (2,2,'H?? N???i','Th?????ng T??n','V??n T???o','no'),(3,3,'H?? N???i','Th?????ng T??n','V??n T???o','no'),(4,4,'H???i D????ng','M?? L??nh','V??n Anh','9');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(255) DEFAULT NULL,
  `Biography` varchar(500) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Nguy???n V??n An','T???t nghi???p ?????i h???c H?? N???i - 2000','H?? N???i'),(2,'Ph???m V??n T??m','T???t nghi???p ?????i h???c Qu???c Gia- 2000','H?? T??y'),(6,'Tr???n ????nh V??n','T???t nghi???p H???c Vi???n Ngo???i Giao','H?? N???i'),(7,'H??? V??n Linh','T???t nghi???p ?????i H???c Ngh??? An','H?? Giang'),(23,'H?? V??n Linh','T???t nghi???p th??? khoa tr?????ng B??ch Khoa H?? N???i','L???ng S??n'),(24,'Bessel van der Kolk','England','England'),(25,'David J.Pollay','?????n t??? M???','M???');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PublisherID` int NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Summary` varchar(1000) DEFAULT NULL,
  `NumberOfPages` int DEFAULT NULL,
  `Language` varchar(255) DEFAULT NULL,
  `ISBN` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKBook221643` (`PublisherID`),
  CONSTRAINT `FKBook221643` FOREIGN KEY (`PublisherID`) REFERENCES `publisher` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,1,'?????c Nh??n T??m','?????i s???ng, h??n nh??n, giao ti???p',100,'Ti???ng Vi???t','11111'),(2,2,'????nh Th???c Gi???i H???n','H???nh ph??c, ph??t tri???n b???n th??n',100,'Ti???ng Vi???t','22222'),(8,1,'Khi T??i Kh??ng Bi???t B???n Th??n Mu???n G??','Kho???nh kh???c nh???ng c??u h???i ???y tr??n ng???p trong t??m tr??, b???ng ch???c b???n s??? c???m th???y ki???t qu???, n?????c m???t ?????t ng???t tr??o d??ng. ???? l?? khi m???i c???m x??c d???n n??n b???y l??u v??? ??a v?? c??? ph???i b???n r???n s???ng qua ng??y m?? ch???ng c?? th???i gian t??m ra c??u tr??? l???i',345,'Ti???ng Vi???t','345679878'),(9,1,'Kh??ng gia ????nh','T??nh c???m gia ????nh v???n thi??ng li??n v?? ?????p ????? song ??? nhi???u th???i ??i???m, t??nh c???m ???y l???i ?????n t??? nh???ng ng?????i t?????ng nh?? xa l??? v?? kh??ng c??ng huy???t th???ng. Gi???a m???t x?? h???i Ph??p v???i nhi???u ?????n ??au v?? kh???c nghi???t c?? m???t c??u chuy???n v??? t??nh ng?????i c???m ?????ng nh?? th???, ???? l?? Kh??ng gia ????nh.',456,'Ti???ng Vi???t','64643765'),(10,2,'The Body Keeps the Score','Trauma is a fact of life. Veterans and their families deal with the painful aftermath of combat; one in five Americans has been molested; one in four grew up with alcoholics; one in three couples have engaged in physical violence. Such experiences inevitably leave traces on minds, emotions, and even on biology. Sadly, trauma sufferers frequently pass on their stress to their partners and children.',567,'Ti???ng Anh','34747457547'),(11,1,'T??i th???y hoa v??ng tr??n c??? xanh','Ta b???t g???p trong T??i Th???y Hoa V??ng Tr??n C??? Xanh m???t th??? gi???i ?????y b???t ng??? v?? thi v??? non tr??? v???i nh???ng suy ng???m gi???n d??? th??i nh??ng g???n g??i ?????n l???.',465,'Ti???ng Vi???t','3463463443'),(12,1,'999 b???c th?? g???i cho ch??nh m??nh','Ta b???t g???p trong 999 b???c th?? g???i cho ch??nh m??nh m???t th??? gi???i ?????y b???t ng??? v?? thi v??? non tr??? v???i nh???ng suy ng???m gi???n d??? th??i nh??ng g???n g??i ?????n l???.',465,'Ti???ng Vi???t','346457'),(18,1,'B??i H???c Di???u K??? T??? Chi???c Xe R??c','B???n c?? d??? b??? t??c ?????ng b???i c??ch h??nh x??? c???a ng?????i kh??c kh??ng? Li???u m???t t??i x??? taxi ch???y ???u, ng?????i ph???c v??? b??n th?? l???, ng?????i qu???n l?? n??ng n???y hay m???t ?????ng nghi???p v?? ?? c?? ph?? h???ng m???t ng??y t???t ?????p c???a b???n kh??ng?',100,'Ti???ng Anh','346457457');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_author`
--

DROP TABLE IF EXISTS `book_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_author` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `BookID` int NOT NULL,
  `AuthorID` int NOT NULL,
  PRIMARY KEY (`ID`,`BookID`,`AuthorID`),
  UNIQUE KEY `BookID` (`BookID`,`AuthorID`),
  KEY `FKBook_Autho438413` (`AuthorID`),
  CONSTRAINT `FKBook_Autho139474` FOREIGN KEY (`BookID`) REFERENCES `book` (`ID`),
  CONSTRAINT `FKBook_Autho438413` FOREIGN KEY (`AuthorID`) REFERENCES `author` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_author`
--

LOCK TABLES `book_author` WRITE;
/*!40000 ALTER TABLE `book_author` DISABLE KEYS */;
INSERT INTO `book_author` VALUES (1,1,1),(9,8,1),(10,9,1),(16,11,1),(17,12,1),(23,18,1),(2,2,2),(5,1,2),(11,9,2),(12,9,6),(13,9,7),(14,9,23),(15,10,24),(24,18,25);
/*!40000 ALTER TABLE `book_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookitem`
--

DROP TABLE IF EXISTS `bookitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookitem` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `BookID` int NOT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Discount` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKBookItem474144` (`BookID`),
  CONSTRAINT `FKBookItem474144` FOREIGN KEY (`BookID`) REFERENCES `book` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookitem`
--

LOCK TABLES `bookitem` WRITE;
/*!40000 ALTER TABLE `bookitem` DISABLE KEYS */;
INSERT INTO `bookitem` VALUES (7,1,'img1.jpg',50000,'0'),(8,2,'img2.jpg',307000,'0'),(9,10,'img10.jpg',30000,'10'),(10,18,'img18.jpg',60000,'10'),(11,8,'img8.jpg',40000,'0'),(12,9,'img9.jpg',40000,'0'),(13,11,'img11.jpg',300000,'50');
/*!40000 ALTER TABLE `bookitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int NOT NULL,
  `OrderID` int NOT NULL,
  `TotalAmount` int NOT NULL,
  `TotalPrice` float NOT NULL,
  `CreateDate` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `OrderID_UNIQUE` (`OrderID`),
  KEY `FKCart195823` (`CustomerID`),
  CONSTRAINT `FKCart195823` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`ID`),
  CONSTRAINT `FKCart92266` FOREIGN KEY (`OrderID`) REFERENCES `order` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (14,4,16,3,135000,'2022-01-01'),(15,4,17,1,307000,'2022-01-01'),(16,4,18,3,135000,'2022-01-01'),(17,4,19,1,50000,'2022-01-01');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_bookitem`
--

DROP TABLE IF EXISTS `cart_bookitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_bookitem` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CartID` int NOT NULL,
  `BookItemID` int NOT NULL,
  `Quantity` int DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Discount` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`,`CartID`,`BookItemID`),
  KEY `FKCart_BookI61621` (`CartID`),
  KEY `FKCart_BookI957184` (`BookItemID`),
  CONSTRAINT `FKCart_BookI61621` FOREIGN KEY (`CartID`) REFERENCES `cart` (`ID`),
  CONSTRAINT `FKCart_BookI957184` FOREIGN KEY (`BookItemID`) REFERENCES `bookitem` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_bookitem`
--

LOCK TABLES `cart_bookitem` WRITE;
/*!40000 ALTER TABLE `cart_bookitem` DISABLE KEYS */;
INSERT INTO `cart_bookitem` VALUES (22,14,7,3,45000,'0'),(23,15,8,1,307000,'0'),(24,16,9,1,30000,'10'),(25,16,10,2,60000,'10'),(26,17,7,1,50000,'0');
/*!40000 ALTER TABLE `cart_bookitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash`
--

DROP TABLE IF EXISTS `cash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cash` (
  `CashTendered` varchar(255) DEFAULT NULL,
  `PaymentID` int NOT NULL,
  PRIMARY KEY (`PaymentID`),
  CONSTRAINT `FKCash453060` FOREIGN KEY (`PaymentID`) REFERENCES `payment` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash`
--

LOCK TABLES `cash` WRITE;
/*!40000 ALTER TABLE `cash` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `check`
--

DROP TABLE IF EXISTS `check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `check` (
  `Name` varchar(255) DEFAULT NULL,
  `BankID` varchar(255) DEFAULT NULL,
  `PaymentID` int NOT NULL,
  PRIMARY KEY (`PaymentID`),
  CONSTRAINT `FKCheck471472` FOREIGN KEY (`PaymentID`) REFERENCES `payment` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `check`
--

LOCK TABLES `check` WRITE;
/*!40000 ALTER TABLE `check` DISABLE KEYS */;
INSERT INTO `check` VALUES ('manh','1234567890',14),('manh','1234567890',15),('manh','1234567890',16),('manh','1234567890',17);
/*!40000 ALTER TABLE `check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit`
--

DROP TABLE IF EXISTS `credit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credit` (
  `Number` varchar(255) DEFAULT NULL,
  `CreditType` varchar(255) DEFAULT NULL,
  `ExpDate` date DEFAULT NULL,
  `PaymentID` int NOT NULL,
  PRIMARY KEY (`PaymentID`),
  CONSTRAINT `FKCredit998953` FOREIGN KEY (`PaymentID`) REFERENCES `payment` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit`
--

LOCK TABLES `credit` WRITE;
/*!40000 ALTER TABLE `credit` DISABLE KEYS */;
/*!40000 ALTER TABLE `credit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Gender` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (2,'an@gmail.com','878 687 8787','2017-01-01','new','0'),(3,'long@gmail.com','878 687 8787','2017-01-01','new','1'),(4,'manh@gmail.com','878 687 8787','2017-01-01','new','0');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customermember`
--

DROP TABLE IF EXISTS `customermember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customermember` (
  `CartNumber` varchar(255) DEFAULT NULL,
  `CustomerID` int NOT NULL,
  PRIMARY KEY (`CustomerID`),
  CONSTRAINT `FKCustomerMe934788` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customermember`
--

LOCK TABLES `customermember` WRITE;
/*!40000 ALTER TABLE `customermember` DISABLE KEYS */;
/*!40000 ALTER TABLE `customermember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customernew`
--

DROP TABLE IF EXISTS `customernew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customernew` (
  `Note` varchar(255) DEFAULT NULL,
  `CustomerID` int NOT NULL,
  PRIMARY KEY (`CustomerID`),
  CONSTRAINT `FKCustomerNe893638` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customernew`
--

LOCK TABLES `customernew` WRITE;
/*!40000 ALTER TABLE `customernew` DISABLE KEYS */;
INSERT INTO `customernew` VALUES ('new',2),('new',3),('new',4);
/*!40000 ALTER TABLE `customernew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fullname`
--

DROP TABLE IF EXISTS `fullname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fullname` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `MiddleName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKFullName370828` (`CustomerID`),
  CONSTRAINT `FKFullName370828` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fullname`
--

LOCK TABLES `fullname` WRITE;
/*!40000 ALTER TABLE `fullname` DISABLE KEYS */;
INSERT INTO `fullname` VALUES (2,2,'An','Th???','Nguy???n'),(3,3,'Long','V??n','Ph???m'),(4,4,'M???nh','V??n','Nguy???n');
/*!40000 ALTER TABLE `fullname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int NOT NULL,
  `CreateDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKOrder556711` (`CustomerID`),
  CONSTRAINT `FKOrder556711` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (16,4,'2022-01-01 11:35:15','0'),(17,4,'2022-01-01 11:36:45','0'),(18,4,'2022-01-01 12:57:41','0'),(19,4,'2022-01-01 13:00:35','0');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `OrderID` int NOT NULL,
  `ShipmentID` int NOT NULL,
  `TotalPrice` float DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKPayment767140` (`ShipmentID`),
  KEY `FKPayment972219` (`OrderID`),
  CONSTRAINT `FKPayment767140` FOREIGN KEY (`ShipmentID`) REFERENCES `shipment` (`ID`),
  CONSTRAINT `FKPayment972219` FOREIGN KEY (`OrderID`) REFERENCES `order` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (14,16,14,165000,'check'),(15,17,15,337000,'check'),(16,18,16,165000,'check'),(17,19,17,80000,'check');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publisher` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES (1,'NXB H?? N???i','H?? N???i','nxbhn@gmail.com'),(2,'NXB Vi???t Nam','H?? N???i','nxbvn@gmail.com');
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment`
--

DROP TABLE IF EXISTS `shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipment` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `OrderID` int NOT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Code` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKShipment314014` (`OrderID`),
  CONSTRAINT `FKShipment314014` FOREIGN KEY (`OrderID`) REFERENCES `order` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment`
--

LOCK TABLES `shipment` WRITE;
/*!40000 ALTER TABLE `shipment` DISABLE KEYS */;
INSERT INTO `shipment` VALUES (14,16,'EXW','none','Ha B?? Tr??ng - H?? N???i',30000),(15,17,'EXW','none','H?? N???i',30000),(16,18,'EXW','none','H?? N???i',30000),(17,19,'EXW','none','H?? N???i',30000);
/*!40000 ALTER TABLE `shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'online_book_store_tl'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-02 19:17:11
