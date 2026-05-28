-- MySQL dump 10.13  Distrib 8.4.3, for Win64 (x86_64)
--
-- Host: localhost    Database: db_penjualan
-- ------------------------------------------------------
-- Server version	8.4.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pelanggan`
--

DROP TABLE IF EXISTS `pelanggan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pelanggan` (
  `id_pelanggan` int NOT NULL AUTO_INCREMENT,
  `nama_pelanggan` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelanggan`
--

LOCK TABLES `pelanggan` WRITE;
/*!40000 ALTER TABLE `pelanggan` DISABLE KEYS */;
INSERT INTO `pelanggan` VALUES (1,'Andi Saputra','Jl. Merdeka No. 1'),(2,'Budi Santoso','Jl. Mawar No. 2'),(3,'Citra Lestari','Jl. Melati No. 3'),(4,'Dewi Anggraini','Jl. Kenanga No. 4'),(5,'Eko Prasetyo','Jl. Anggrek No. 5'),(6,'Fajar Nugroho','Jl. Flamboyan No. 6'),(7,'Gina Permata','Jl. Dahlia No. 7'),(8,'Hendra Wijaya','Jl. Cemara No. 8'),(9,'Indah Sari','Jl. Sakura No. 9'),(10,'Joko Susilo','Jl. Teratai No. 10'),(11,'Kartika Dewi','Jl. Mangga No. 11'),(12,'Lukman Hakim','Jl. Rambutan No. 12'),(13,'Maya Putri','Jl. Durian No. 13'),(14,'Nanda Pratama','Jl. Pepaya No. 14'),(15,'Oki Setiawan','Jl. Nangka No. 15'),(16,'Putri Amelia','Jl. Alpukat No. 16'),(17,'Qori Rahma','Jl. Jeruk No. 17'),(18,'Rizky Ramadhan','Jl. Apel No. 18'),(19,'Sinta Maharani','Jl. Salak No. 19'),(20,'Teguh Firmansyah','Jl. Pisang No. 20'),(21,'Umar Fauzi','Jl. Cempaka No. 21'),(22,'Vina Oktaviani','Jl. Kamboja No. 22'),(23,'Wahyu Hidayat','Jl. Bougenville No. 23'),(24,'Xavier Prakoso','Jl. Rajawali No. 24'),(25,'Yuni Astuti','Jl. Elang No. 25'),(26,'Zaki Maulana','Jl. Garuda No. 26'),(27,'Anisa Putri','Jl. Merpati No. 27'),(28,'Bayu Saputra','Jl. Kenari No. 28'),(29,'Cahya Nugraha','Jl. Jalak No. 29'),(30,'Dimas Aditya','Jl. Cendrawasih No. 30'),(31,'Elsa Maharani','Jl. Kakaktua No. 31'),(32,'Farhan Akbar','Jl. Merak No. 32'),(33,'Galih Pratama','Jl. Camar No. 33'),(34,'Hani Lestari','Jl. Belibis No. 34'),(35,'Iqbal Ramadhan','Jl. Kutilang No. 35'),(36,'Jihan Safitri','Jl. Pipit No. 36'),(37,'Kevin Setiawan','Jl. Elang Laut No. 37'),(38,'Larasati Dewi','Jl. Pelikan No. 38'),(39,'Mochammad Rizal','Jl. Bangau No. 39'),(40,'Nabila Azzahra','Jl. Kasuari No. 40'),(41,'Oscar Fernando','Jl. Rajawali Timur No. 41'),(42,'Putra Mahendra','Jl. Merdeka Selatan No. 42'),(43,'Queen Natalia','Jl. Veteran No. 43'),(44,'Rafi Kurniawan','Jl. Sudirman No. 44'),(45,'Silvia Oktarina','Jl. Ahmad Yani No. 45'),(46,'Tio Pramana','Jl. Diponegoro No. 46'),(47,'Ulfa Rahmawati','Jl. Gatot Subroto No. 47'),(48,'Vicky Saputra','Jl. Imam Bonjol No. 48'),(49,'Wulan Cahyaningrum','Jl. Pemuda No. 49'),(50,'Yoga Prasetya','Jl. Pahlawan No. 50');
/*!40000 ALTER TABLE `pelanggan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produk`
--

DROP TABLE IF EXISTS `produk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produk` (
  `kode_produk` varchar(10) NOT NULL,
  `nama_produk` varchar(50) DEFAULT NULL,
  `harga` int DEFAULT NULL,
  PRIMARY KEY (`kode_produk`),
  UNIQUE KEY `idx_kode_produk` (`kode_produk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produk`
--

LOCK TABLES `produk` WRITE;
/*!40000 ALTER TABLE `produk` DISABLE KEYS */;
INSERT INTO `produk` VALUES ('P001','Produk 1',1000),('P002','Produk 2',2000),('P003','Produk 3',3000),('P004','Produk 4',4000),('P005','Produk 5',5000),('P006','Produk 6',6000),('P007','Produk 7',7000),('P008','Produk 8',8000),('P009','Produk 9',9000),('P010','Produk 10',10000),('P011','Produk 11',11000),('P012','Produk 12',12000),('P013','Produk 13',13000),('P014','Produk 14',14000),('P015','Produk 15',15000),('P016','Produk 16',16000),('P017','Produk 17',17000),('P018','Produk 18',18000),('P019','Produk 19',19000),('P020','Produk 20',20000),('P021','Produk 21',21000),('P022','Produk 22',22000),('P023','Produk 23',23000),('P024','Produk 24',24000),('P025','Produk 25',25000),('P026','Produk 26',26000),('P027','Produk 27',27000),('P028','Produk 28',28000),('P029','Produk 29',29000),('P030','Produk 30',30000),('P031','Produk 31',31000),('P032','Produk 32',32000),('P033','Produk 33',33000),('P034','Produk 34',34000),('P035','Produk 35',35000),('P036','Produk 36',36000),('P037','Produk 37',37000),('P038','Produk 38',38000),('P039','Produk 39',39000),('P040','Produk 40',40000),('P041','Produk 41',41000),('P042','Produk 42',42000),('P043','Produk 43',43000),('P044','Produk 44',44000),('P045','Produk 45',45000),('P046','Produk 46',46000),('P047','Produk 47',47000),('P048','Produk 48',48000),('P049','Produk 49',49000),('P050','Produk 50',50000),('P051','Produk 51',51000),('P052','Produk 52',52000),('P053','Produk 53',53000),('P054','Produk 54',54000),('P055','Produk 55',55000),('P056','Produk 56',56000),('P057','Produk 57',57000),('P058','Produk 58',58000),('P059','Produk 59',59000),('P060','Produk 60',60000),('P061','Produk 61',61000),('P062','Produk 62',62000),('P063','Produk 63',63000),('P064','Produk 64',64000),('P065','Produk 65',65000),('P066','Produk 66',66000),('P067','Produk 67',67000),('P068','Produk 68',68000),('P069','Produk 69',69000),('P070','Produk 70',70000),('P071','Produk 71',71000),('P072','Produk 72',72000),('P073','Produk 73',73000),('P074','Produk 74',74000),('P075','Produk 75',75000),('P076','Produk 76',76000),('P077','Produk 77',77000),('P078','Produk 78',78000),('P079','Produk 79',79000),('P080','Produk 80',80000),('P081','Produk 81',81000),('P082','Produk 82',82000),('P083','Produk 83',83000),('P084','Produk 84',84000),('P085','Produk 85',85000),('P086','Produk 86',86000),('P087','Produk 87',87000),('P088','Produk 88',88000),('P089','Produk 89',89000),('P090','Produk 90',90000),('P091','Produk 91',91000),('P092','Produk 92',92000),('P093','Produk 93',93000),('P094','Produk 94',94000),('P095','Produk 95',95000),('P096','Produk 96',96000),('P097','Produk 97',97000),('P098','Produk 98',98000),('P099','Produk 99',99000),('P100','Produk 100',100000),('P101','Produk 101',101000),('P102','Produk 102',102000),('P103','Produk 103',103000),('P104','Produk 104',104000),('P105','Produk 105',105000),('P106','Produk 106',106000),('P107','Produk 107',107000),('P108','Produk 108',108000),('P109','Produk 109',109000),('P110','Produk 110',110000),('P111','Produk 111',111000),('P112','Produk 112',112000),('P113','Produk 113',113000),('P114','Produk 114',114000),('P115','Produk 115',115000),('P116','Produk 116',116000),('P117','Produk 117',117000),('P118','Produk 118',118000),('P119','Produk 119',119000),('P120','Produk 120',120000),('P121','Produk 121',121000),('P122','Produk 122',122000),('P123','Produk 123',123000),('P124','Produk 124',124000),('P125','Produk 125',125000),('P126','Produk 126',126000),('P127','Produk 127',127000),('P128','Produk 128',128000),('P129','Produk 129',129000),('P130','Produk 130',130000),('P131','Produk 131',131000),('P132','Produk 132',132000),('P133','Produk 133',133000),('P134','Produk 134',134000),('P135','Produk 135',135000),('P136','Produk 136',136000),('P137','Produk 137',137000),('P138','Produk 138',138000),('P139','Produk 139',139000),('P140','Produk 140',140000),('P141','Produk 141',141000),('P142','Produk 142',142000),('P143','Produk 143',143000),('P144','Produk 144',144000),('P145','Produk 145',145000),('P146','Produk 146',146000),('P147','Produk 147',147000),('P148','Produk 148',148000),('P149','Produk 149',149000),('P150','Produk 150',150000),('P151','Produk 151',151000),('P152','Produk 152',152000),('P153','Produk 153',153000),('P154','Produk 154',154000),('P155','Produk 155',155000),('P156','Produk 156',156000),('P157','Produk 157',157000),('P158','Produk 158',158000),('P159','Produk 159',159000),('P160','Produk 160',160000),('P161','Produk 161',161000),('P162','Produk 162',162000),('P163','Produk 163',163000),('P164','Produk 164',164000),('P165','Produk 165',165000),('P166','Produk 166',166000),('P167','Produk 167',167000),('P168','Produk 168',168000),('P169','Produk 169',169000),('P170','Produk 170',170000),('P171','Produk 171',171000),('P172','Produk 172',172000),('P173','Produk 173',173000),('P174','Produk 174',174000),('P175','Produk 175',175000),('P176','Produk 176',176000),('P177','Produk 177',177000),('P178','Produk 178',178000),('P179','Produk 179',179000),('P180','Produk 180',180000),('P181','Produk 181',181000),('P182','Produk 182',182000),('P183','Produk 183',183000),('P184','Produk 184',184000),('P185','Produk 185',185000),('P186','Produk 186',186000),('P187','Produk 187',187000),('P188','Produk 188',188000),('P189','Produk 189',189000),('P190','Produk 190',190000),('P191','Produk 191',191000),('P192','Produk 192',192000),('P193','Produk 193',193000),('P194','Produk 194',194000),('P195','Produk 195',195000),('P196','Produk 196',196000),('P197','Produk 197',197000),('P198','Produk 198',198000),('P199','Produk 199',199000),('P200','Produk 200',200000);
/*!40000 ALTER TABLE `produk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaksi` (
  `id_transaksi` int NOT NULL AUTO_INCREMENT,
  `kode_produk` varchar(10) DEFAULT NULL,
  `jumlah` int DEFAULT NULL,
  `total_harga` int DEFAULT NULL,
  `id_pelanggan` int DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`),
  KEY `idx_kode_produk` (`kode_produk`),
  KEY `idx_total_harga` (`total_harga`),
  KEY `fk_id_pelangan` (`id_pelanggan`),
  CONSTRAINT `fk_id_pelangan` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`),
  CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`kode_produk`) REFERENCES `produk` (`kode_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi`
--

LOCK TABLES `transaksi` WRITE;
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
INSERT INTO `transaksi` VALUES (1,'P001',2,2000,1),(2,'P002',1,2000,1),(3,'P003',5,15000,1),(4,'P004',3,12000,1),(5,'P005',4,20000,1),(6,'P006',2,12000,1),(7,'P007',6,42000,1),(8,'P008',1,8000,1),(9,'P009',7,63000,20),(10,'P010',2,20000,1),(11,'P011',3,33000,1),(12,'P012',4,48000,1),(13,'P013',5,65000,20),(14,'P014',2,28000,1),(15,'P015',1,15000,1),(16,'P016',6,96000,20),(17,'P017',3,51000,20),(18,'P018',4,72000,20),(19,'P019',2,38000,1),(20,'P020',5,100000,15),(21,'P021',2,42000,1),(22,'P022',3,66000,20),(23,'P023',1,23000,1),(24,'P024',4,96000,20),(25,'P025',5,125000,15),(26,'P026',2,52000,20),(27,'P027',6,162000,32),(28,'P028',3,84000,20),(29,'P029',1,29000,1),(30,'P030',4,120000,15),(31,'P031',5,155000,32),(32,'P032',2,64000,20),(33,'P033',3,99000,20),(34,'P034',6,204000,32),(35,'P035',1,35000,1),(36,'P036',4,144000,15),(37,'P037',5,185000,32),(38,'P038',2,76000,20),(39,'P039',3,117000,15),(40,'P040',6,240000,32),(41,'P041',2,82000,20),(42,'P042',1,42000,1),(43,'P043',5,215000,32),(44,'P044',3,132000,15),(45,'P045',4,180000,32),(46,'P046',2,92000,20),(47,'P047',6,282000,27),(48,'P048',1,48000,1),(49,'P049',7,343000,27),(50,'P050',2,100000,15),(51,'P051',3,153000,32),(52,'P052',4,208000,32),(53,'P053',5,265000,27),(54,'P054',2,108000,15),(55,'P055',1,55000,20),(56,'P056',6,336000,27),(57,'P057',3,171000,32),(58,'P058',4,232000,32),(59,'P059',2,118000,15),(60,'P060',5,300000,27),(61,'P061',2,122000,15),(62,'P062',3,186000,32),(63,'P063',1,63000,20),(64,'P064',4,256000,27),(65,'P065',5,325000,27),(66,'P066',2,132000,15),(67,'P067',6,402000,27),(68,'P068',3,204000,32),(69,'P069',1,69000,20),(70,'P070',4,280000,27),(71,'P071',5,355000,27),(72,'P072',2,144000,15),(73,'P073',3,219000,32),(74,'P074',6,444000,27),(75,'P075',1,75000,20),(76,'P076',4,304000,27),(77,'P077',5,385000,27),(78,'P078',2,156000,32),(79,'P079',3,237000,32),(80,'P080',6,480000,27),(81,'P081',2,162000,32),(82,'P082',1,82000,20),(83,'P083',5,415000,27),(84,'P084',3,252000,27),(85,'P085',4,340000,27),(86,'P086',2,172000,32),(87,'P087',6,522000,27),(88,'P088',1,88000,20),(89,'P089',7,623000,42),(90,'P090',2,180000,32),(91,'P091',3,273000,27),(92,'P092',4,368000,27),(93,'P093',5,465000,27),(94,'P094',2,188000,32),(95,'P095',1,95000,20),(96,'P096',6,576000,42),(97,'P097',3,291000,27),(98,'P098',4,392000,27),(99,'P099',2,198000,32),(100,'P100',5,500000,27),(101,'P101',2,202000,32),(102,'P102',3,306000,27),(103,'P103',1,103000,15),(104,'P104',4,416000,27),(105,'P105',5,525000,27),(106,'P106',2,212000,32),(107,'P107',6,642000,42),(108,'P108',3,324000,27),(109,'P109',1,109000,15),(110,'P110',4,440000,27),(111,'P111',5,555000,42),(112,'P112',2,224000,32),(113,'P113',3,339000,27),(114,'P114',6,684000,42),(115,'P115',1,115000,15),(116,'P116',4,464000,27),(117,'P117',5,585000,42),(118,'P118',2,236000,32),(119,'P119',3,357000,27),(120,'P120',6,720000,38),(121,'P121',2,242000,32),(122,'P122',1,122000,15),(123,'P123',5,615000,42),(124,'P124',3,372000,27),(125,'P125',4,500000,27),(126,'P126',2,252000,27),(127,'P127',6,762000,38),(128,'P128',1,128000,15),(129,'P129',7,903000,38),(130,'P130',2,260000,27),(131,'P131',3,393000,27),(132,'P132',4,528000,27),(133,'P133',5,665000,42),(134,'P134',2,268000,27),(135,'P135',1,135000,15),(136,'P136',6,816000,38),(137,'P137',3,411000,27),(138,'P138',4,552000,42),(139,'P139',2,278000,27),(140,'P140',5,700000,38),(141,'P141',2,282000,27),(142,'P142',3,426000,27),(143,'P143',1,143000,15),(144,'P144',4,576000,42),(145,'P145',5,725000,38),(146,'P146',2,292000,27),(147,'P147',6,882000,38),(148,'P148',3,444000,27),(149,'P149',1,149000,15),(150,'P150',4,600000,42),(151,'P151',5,755000,38),(152,'P152',2,304000,27),(153,'P153',3,459000,27),(154,'P154',6,924000,38),(155,'P155',1,155000,32),(156,'P156',4,624000,42),(157,'P157',5,785000,38),(158,'P158',2,316000,27),(159,'P159',3,477000,27),(160,'P160',6,960000,38),(161,'P161',2,322000,27),(162,'P162',1,162000,32),(163,'P163',5,815000,38),(164,'P164',3,492000,27),(165,'P165',4,660000,42),(166,'P166',2,332000,27),(167,'P167',6,1002000,50),(168,'P168',1,168000,32),(169,'P169',7,1183000,50),(170,'P170',2,340000,27),(171,'P171',3,513000,27),(172,'P172',4,688000,42),(173,'P173',5,865000,38),(174,'P174',2,348000,27),(175,'P175',1,175000,32),(176,'P176',6,1056000,50),(177,'P177',3,531000,27),(178,'P178',4,712000,38),(179,'P179',2,358000,27),(180,'P180',5,900000,38),(181,'P181',2,362000,27),(182,'P182',3,546000,27),(183,'P183',1,183000,32),(184,'P184',4,736000,38),(185,'P185',5,925000,38),(186,'P186',2,372000,27),(187,'P187',6,1122000,50),(188,'P188',3,564000,42),(189,'P189',1,189000,32),(190,'P190',4,760000,38),(191,'P191',5,955000,38),(192,'P192',2,384000,27),(193,'P193',3,579000,42),(194,'P194',6,1164000,50),(195,'P195',1,195000,32),(196,'P196',4,784000,38),(197,'P197',5,985000,47),(198,'P198',2,396000,27),(199,'P199',3,597000,42),(200,'P200',6,1200000,50);
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-28 21:56:56
