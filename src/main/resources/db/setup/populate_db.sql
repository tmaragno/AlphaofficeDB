-- MySQL dump 10.13  Distrib 5.6.23, for Linux (x86_64)
--
-- Host: localhost    Database: AlphaofficeDB
-- ------------------------------------------------------
-- Server version	5.6.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `alphaoffice`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `AlphaofficeDB` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `AlphaofficeDB`;

--
-- Table structure for table `PRODUCTS`
--

DROP TABLE IF EXISTS `PRODUCTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCTS` (
  `PRODUCT_ID` decimal(15,0) DEFAULT NULL,
  `PARENT_CATEGORY_ID` decimal(15,0) DEFAULT NULL,
  `CATEGORY_ID` decimal(15,0) DEFAULT NULL,
  `PRODUCT_NAME` varchar(150) DEFAULT NULL,
  `PRODUCT_STATUS` varchar(30) DEFAULT NULL,
  `COST_PRICE` decimal(8,2) DEFAULT NULL,
  `LIST_PRICE` decimal(8,2) DEFAULT NULL,
  `MIN_PRICE` decimal(8,2) DEFAULT NULL,
  `WARRANTY_PERIOD_MONTHS` decimal(2,0) DEFAULT NULL,
  `EXTERNAL_URL` varchar(200) DEFAULT NULL,
  `ATTRIBUTE_CATEGORY` varchar(30) DEFAULT NULL,
  `ATTRIBUTE1` varchar(150) DEFAULT NULL,
  `ATTRIBUTE2` varchar(150) DEFAULT NULL,
  `ATTRIBUTE3` varchar(150) DEFAULT NULL,
  `ATTRIBUTE4` varchar(150) DEFAULT NULL,
  `ATTRIBUTE5` varchar(150) DEFAULT NULL,
  `CREATED_BY` varchar(60) DEFAULT NULL,
  `CREATION_DATE` date DEFAULT NULL,
  `LAST_UPDATED_BY` varchar(60) DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT NULL,
  `OBJECT_VERSION_ID` decimal(15,0) DEFAULT NULL,
  UNIQUE KEY `PRODUCTS_PK` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCTS`
--

LOCK TABLES `PRODUCTS` WRITE;
/*!40000 ALTER TABLE `PRODUCTS` DISABLE KEYS */;
INSERT INTO `PRODUCTS` VALUES (1039,1002,1011,'Crayola Original Markers - Broad Line, Classic Colors','AVAILABLE',3.19,4.25,2.99,6,'Images/OfficeSupplyProducts/Write/Write-Crayola_Markers.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1040,1002,1011,'Expo Low Odor Chisel Tip Dry Erase Markers, 4 Colored Markers','AVAILABLE',4.99,6.99,4.29,6,'Images/OfficeSupplyProducts/Write/Write-Expo_Dry_Erase.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1041,1003,1013,'Scotch Magic Tape Deluxe Dispenser Value Pack','AVAILABLE',17.99,22.99,15.99,6,'Images/OfficeSupplyProducts/Fasten/Fasten-Scotch_Tape_and_Dispenser.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1042,1003,1013,'Scotch Gift Wrap Tape in Handheld Dispenser 3/4 x 600 2-pk','AVAILABLE',6.29,8.99,4.99,6,'Images/OfficeSupplyProducts/Fasten/Fasten-Scotch_Gift_Tape.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1043,1003,1013,'Scotch Chameleon Tape Dispenser with Scotch Magic Tape','AVAILABLE',9.25,13.99,6.99,6,'Images/OfficeSupplyProducts/Fasten/Fasten-Scotch_Chameleon.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1044,1004,1015,'Bankers Box Stor/File Basic Strength Letter/Legal, 10-Pack','AVAILABLE',19.99,22.99,6.99,6,'Images/OfficeSupplyProducts/Organize/Organize-File_Storage_Box.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1045,1004,1015,'Iris Open-Top Large File Bin','AVAILABLE',11.99,8.99,6.99,6,'Images/OfficeSupplyProducts/Organize/Organize-Iris_Open_Bin.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1046,1004,1015,'Iris File-n-Stack Storage Box, Silver','AVAILABLE',14.79,18.99,12.99,6,'Images/OfficeSupplyProducts/Organize/Organize-Iris_File_Storage_Box.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1047,1004,1016,'AT-A-GLANCE 2014 Recycled Monthly Academic Planner Black 6-7/8 X 8-3/4','AVAILABLE',16.99,20.55,12.99,6,'Images/OfficeSupplyProducts/Organize/Organize-Academic_Planner.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1048,1004,1016,'FranklinCovey Simulated Leather Wire-Bound Cover With Closure','AVAILABLE',34.99,40.55,32.55,6,'Images/OfficeSupplyProducts/Organize/Organize-Covey_Bound_Planner.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1049,1004,1016,'Day-Timer Pink Ribbon Leather Starter Set, 5 1/2 x 8 1/','AVAILABLE',71.99,80.99,65.99,6,'Images/OfficeSupplyProducts/Organize/Organize-DayTimer_Pink_Planner.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1050,1004,1017,'Post-it(R) Notes, 1 1/2 x 2, Canary Yellow, 12 Pads/Pack','AVAILABLE',7.79,8.99,6.99,6,'Images/OfficeSupplyProducts/Organize/Organize-PostIt_Notes_Pack_Yellow.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1051,1004,1017,'Post-it(R) Notes, 1 1/2x 2, Neon Collection, 12 Pads/Pack','AVAILABLE',7.49,8.99,6.99,6,'Images/OfficeSupplyProducts/Organize/Organize-PostIt_Notes_Pack_Neon.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1052,1004,1017,'Post-it(R) Flags Value Pack, Assorted Colors, 1/2 Wide, 35/Dispenser, 8 Dispensers/Pack plus FREE Arrow Flags','AVAILABLE',10.79,12.99,8.99,6,'Images/OfficeSupplyProducts/Organize/Organize-PostIt_Flags.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1053,1005,1018,'Caremail Kraft Self-Seal Rigid Mailers','AVAILABLE',19.08,22.99,16.99,6,'Images/OfficeSupplyProducts/Ship/Ship-Mailer_Envelopes.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1054,1005,1018,'White Self-Seal Flat Mailers','AVAILABLE',21.09,23.99,19.99,6,'Images/OfficeSupplyProducts/Ship/Ship-White_Self_Seal_Mailers.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1055,1005,1019,'4-Inch and 5-Inch Long Corrugated Shipping Boxes','AVAILABLE',9.69,12.99,6.99,6,'Images/OfficeSupplyProducts/Ship/Ship-Small_Shipping_Boxes.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1056,1005,1020,'Scotch 3850 Premium Performance Packaging Tape Refill Rolls','AVAILABLE',19.99,22.99,15.99,6,'Images/OfficeSupplyProducts/Ship/Ship-Scotch_Refill_Tape.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1057,1005,1020,'Duck Brand Extra-Wide Packaging Tape Dispenser, 1/pk.','AVAILABLE',12.99,14.99,10.99,6,'Images/OfficeSupplyProducts/Ship/Ship-Duck_Brand_Tape_Dispenser.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1001,1001,1007,'Compatible Canon Inkjet Cartridge w/ Smart Chip, 4530B001AA / PGI-225 Pigment Black Ink','AVAILABLE',14.79,16.79,12.79,6,'Images/OfficeSupplyProducts/Print/Print-CanonInk_225bk.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1002,1001,1007,'Compatible Canon Inkjet Cartridge w/ Smart Chip, 4549B001AA / CLI-226 Yellow Ink','AVAILABLE',15.70,18.99,13.26,6,'Images/OfficeSupplyProducts/Print/Print_CanonInk_226y.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1003,1001,1007,'Compatible Canon Inkjet Cartridge w/ Smart Chip, 4547B001AA / CLI-226 Cyan Ink','AVAILABLE',16.70,18.79,14.25,6,'Images/OfficeSupplyProducts/Print/Print-CanonInk_226c.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1004,1001,1007,'Compatible Canon Inkjet Cartridge w/ Smart Chip, 4548B001AA / CLI-226 Magenta Ink','AVAILABLE',18.70,22.79,14.22,6,'Images/OfficeSupplyProducts/Print/Print-CanonInk_226m.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1005,1001,1007,'Compatible Canon Inkjet Cartridges, PGI225 / CLI226 (12 Piece Set includes 4 Pigment Black, 2 Dye Black, 2 Cyan, 2 Magenta and 2 Yellow)','AVAILABLE',19.70,21.79,14.75,6,'Images/OfficeSupplyProducts/Print/Print-CanonInk_pgi225bulk.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1006,1002,1009,'Bic Crystal Fine point','AVAILABLE',5.90,8.99,3.99,6,'Images/OfficeSupplyProducts/Write/Write-cristal_fine1.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1007,1002,1009,'Bic Crystal Large bold','AVAILABLE',6.99,8.99,3.99,6,'Images/OfficeSupplyProducts/Write/Write-cristal_largebold.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1008,1002,1009,'Bic Crystal Grip black','AVAILABLE',7.99,8.99,3.99,6,'Images/OfficeSupplyProducts/Write/Write-CristalGrip_bkHR.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1009,1002,1009,'Bic Crystal Click','AVAILABLE',8.99,10.99,3.99,6,'Images/OfficeSupplyProducts/Write/Write-Crystal_Click.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1010,1002,1009,'Bic Crystal Decor','AVAILABLE',9.99,12.99,4.99,6,'Images/OfficeSupplyProducts/Write/Write-Crystal_Decor.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1011,1003,1012,'Medium Binder Clips, 1 1/4 Wide, 5/8 Capacity, Black, Pack Of 24','AVAILABLE',4.99,7.99,2.99,6,'Images/OfficeSupplyProducts/Fasten/Fasten-BinderClips_medium.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1012,1003,1012,'Small Binder Clips, 3/4 Wide, 3/8 Capacity, Black, Pack Of 36','AVAILABLE',3.49,4.25,2.25,6,'Images/OfficeSupplyProducts/Fasten/Fasten-BinderClips_small.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1013,1003,1012,'Paper Clips-100','AVAILABLE',1.99,2.99,1.25,6,'Images/OfficeSupplyProducts/Fasten/Fasten-PaperClips_smooth.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1014,1003,1012,'Clip-RiteÂ¿ Clip-TabsÂ¿, 1 1/4, Assorted Colors, Pack Of 36','AVAILABLE',3.99,4.99,2.99,6,'Images/OfficeSupplyProducts/Fasten/Fasten-ClipRite_colors.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1015,1003,1012,'Ideal Clamps, 1 1/2, Silver, Pack Of 50','AVAILABLE',4.99,5.99,3.99,6,'Images/OfficeSupplyProducts/Fasten/Fasten-Clamps.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1016,1003,1014,'AveryÂ¿ Self-Adhesive Index Tabs With Printable Inserts, 2, Clear, Pack Of 25','AVAILABLE',6.49,8.99,5.49,6,'Images/OfficeSupplyProducts/Organize/Organize-IndexTabs-25.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1017,1003,1014,'Redi-TagÂ¿ Permanent Index Tabs, Blank, White, Pack Of 104 Tabs','AVAILABLE',5.49,6.49,3.25,6,'Images/OfficeSupplyProducts/Organize/Organize-IndexTabs-104.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1018,1003,1014,'AveryÂ¿ Write-OnÂ¿ Tabs, 1 3/4, Multicolor, Pack Of 48','AVAILABLE',3.99,4.49,2.49,6,'Images/OfficeSupplyProducts/Organize/Organize-WriteonTabs-48.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1019,1003,1012,'Office DepotÂ¿ Brand Round-Head Fasteners, 1, Brass, Pack Of 100','AVAILABLE',2.99,4.99,1.51,6,'Images/OfficeSupplyProducts/Fasten/Fasten-RoundHead-100.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1020,1003,1012,'Office DepotÂ¿ Brand Brass Fasteners, 1 1/2 Length, Pack Of 60','AVAILABLE',2.49,3.99,1.52,6,'Images/OfficeSupplyProducts/Fasten/Fasten-RoundHead-60.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1021,1003,1012,'Charles Leonard Aluminum Screw Posts, 3L x 3/16D, Box Of 100','AVAILABLE',3.49,4.99,1.53,6,'Images/OfficeSupplyProducts/Fasten/Fasten-SilverScrews_100.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1022,1005,1018,'ScotchÂ¿ Bubble Pouches, 8 x 10, Clear, Pack Of 8','AVAILABLE',14.37,16.99,12.25,6,'Images/OfficeSupplyProducts/Ship/Ship-BubbleWrap_8x10.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1023,1005,1019,'Office DepotÂ¿ Brand 100% Recycled Packing Paper, 24 x 36, Natural','AVAILABLE',8.99,12.99,7.25,6,'Images/OfficeSupplyProducts/Ship/Ship-PackingPaper_1.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1024,1005,1019,'Office DepotÂ¿ Brand Flo-PakÂ¿ 100% Recycled Peanuts, Heavy-Duty','AVAILABLE',14.25,18.99,12.99,6,'Images/OfficeSupplyProducts/Ship/Ship-PackingPnuts_1.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1025,1005,1019,'ScotchÂ¿ Packing Paper, 19 3/4 x 25, Pack Of 75 Sheets','AVAILABLE',8.99,12.99,6.99,6,'Images/OfficeSupplyProducts/Ship/Ship-PackingPaper_20x25.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1026,1005,1020,'ScotchÂ¿ Heavy-Duty Shipping Tape With Dispenser, 2 x 22.2 Yd., Clear','AVAILABLE',26.99,29.99,24.99,6,'Images/OfficeSupplyProducts/Ship/Ship-ShippingTape_22yd.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1027,1001,1006,'Hammermill Color Copy Laser Paper','AVAILABLE',13.49,17.49,9.99,6,'Images/OfficeSupplyProducts/Print/Print-Hammermill_Color_Laser.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1028,1001,1006,'Boise HD:P Presentation Laser Paper 24 Lb.','AVAILABLE',18.99,22.99,16.99,6,'Images/OfficeSupplyProducts/Print/Print-Boise_Presentation_Laser.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1029,1001,1006,'Boise Aspen Laser 30% Recycled Paper','AVAILABLE',12.49,15.49,10.49,6,'Images/OfficeSupplyProducts/Print/Print-Aspen_Laser.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1030,1001,1008,'Epson S051016 Black Imaging Cartridge','AVAILABLE',164.99,179.99,149.99,6,'Images/OfficeSupplyProducts/Print/Print-Epson_Black_Toner.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1031,1001,1008,'Ricoh 885375 Cyan Toner Cartridge','AVAILABLE',219.81,225.99,209.99,6,'Images/OfficeSupplyProducts/Print/Print-Richoh_Cyan_Toner.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1032,1001,1008,'Panasonic UG-3313 Black Toner Cartridge','AVAILABLE',234.99,249.99,199.99,6,'Images/OfficeSupplyProducts/Print/Print-Panasonic_Black_Toner',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1033,1002,1010,'Paper Mate Sharpwriter Mechanical Pencil,Yellow, 0.7mm, 12/pk','AVAILABLE',4.99,5.99,3.99,6,'Images/OfficeSupplyProducts/Write/Write-Papermate_Sharpwriter_Mechanical.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1034,1002,1010,'Paper Mate Write Bros. Mechanical Pencil With Grip, 0.7mm, 12/pk','AVAILABLE',6.49,8.99,5.25,6,'Images/OfficeSupplyProducts/Write/Write-Papermate_WriteBros_Mechanical.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1035,1002,1010,'Just Basics Economy #2 Medium Soft Woodcase Pencils, 12/pk','AVAILABLE',1.49,2.25,0.99,6,'Images/OfficeSupplyProducts/Write/Write-JustBasics_Economy_Wood.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1036,1002,1010,'Ticonderoga Premium Presharpened #2 Pencils, 30/pk','AVAILABLE',7.99,8.99,6.99,6,'Images/OfficeSupplyProducts/Write/Write-Ticonderoga_Presharpened.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1037,1002,1011,'Sharpie Fine Point Permanent Markers, 12 Colored Markers','AVAILABLE',9.99,11.99,8.99,6,'Images/OfficeSupplyProducts/Write/Write-Sharpie_Fine_Point_Permanent.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1),(1038,1002,1011,'Expo Low Odor Chisel Tip Dry Erase Markers, 12 Assorted Markers','AVAILABLE',15.99,18.99,12.99,6,'Images/OfficeSupplyProducts/Write/Write-Expo_Dry_Erase_12.jpg',NULL,NULL,NULL,NULL,NULL,NULL,'0','2014-01-10','0','2014-01-10',1);
/*!40000 ALTER TABLE `PRODUCTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT_CATEGORIES`
--

DROP TABLE IF EXISTS `PRODUCT_CATEGORIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT_CATEGORIES` (
  `CATEGORY_ID` decimal(15,0) DEFAULT NULL,
  `CATEGORY_NAME` varchar(40) DEFAULT NULL,
  `PARENT_CATEGORY_ID` decimal(15,0) DEFAULT NULL,
  `CATEGORY_LEVEL` decimal(15,0) DEFAULT NULL,
  `CATEGORY_LOCKED_FLAG` varchar(1) DEFAULT 'N',
  `REPRESENTATIVE_PRODUCT_ID` decimal(15,0) DEFAULT NULL,
  `CREATED_BY` varchar(60) DEFAULT NULL,
  `CREATION_DATE` date DEFAULT NULL,
  `LAST_UPDATED_BY` varchar(60) DEFAULT NULL,
  `LAST_UPDATE_DATE` date DEFAULT NULL,
  `OBJECT_VERSION_ID` decimal(15,0) DEFAULT NULL,
  UNIQUE KEY `PRODUCT_CATEGORIES_PK` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT_CATEGORIES`
--

LOCK TABLES `PRODUCT_CATEGORIES` WRITE;
/*!40000 ALTER TABLE `PRODUCT_CATEGORIES` DISABLE KEYS */;
INSERT INTO `PRODUCT_CATEGORIES` VALUES (1001,'Print',1001,0,'N',NULL,'0','2014-01-10','0','2014-01-10',1),(1002,'Write',1002,0,'N',NULL,'0','2014-01-10','0','2014-01-10',1),(1003,'Fasten',1003,0,'N',NULL,'0','2014-01-10','0','2014-01-10',1),(1004,'Organize',1004,0,'N',NULL,'0','2014-01-10','0','2014-01-10',1),(1005,'Ship',1005,0,'N',NULL,'0','2014-01-10','0','2014-01-10',1),(1006,'Paper',1001,1,'N',NULL,'0','2014-01-10','0','2014-01-10',1),(1007,'Ink',1001,1,'N',NULL,'0','2014-01-10','0','2014-01-10',1),(1008,'Toner',1001,1,'N',NULL,'0','2014-01-10','0','2014-01-10',1),(1009,'Pens',1002,1,'N',NULL,'0','2014-01-10','0','2014-01-10',1),(1010,'Pencils',1002,1,'N',NULL,'0','2014-01-10','0','2014-01-10',1),(1011,'Markers',1002,1,'N',NULL,'0','2014-01-10','0','2014-01-10',1),(1012,'Clips',1003,1,'N',NULL,'0','2014-01-10','0','2014-01-10',1),(1013,'Tape',1003,1,'N',NULL,'0','2014-01-10','0','2014-01-10',1),(1014,'Adhesives',1003,1,'N',NULL,'0','2014-01-10','0','2014-01-10',1),(1015,'File Storage',1004,1,'N',NULL,'0','2014-01-10','0','2014-01-10',1),(1016,'Calendars and Planners',1004,1,'N',NULL,'0','2014-01-10','0','2014-01-10',1),(1017,'Post-It Notes and Flages',1004,1,'N',NULL,'0','2014-01-10','0','2014-01-10',1),(1018,'Envelopes',1004,1,'N',NULL,'0','2014-01-10','0','2014-01-10',1),(1019,'Boxes',1004,1,'N',NULL,'0','2014-01-10','0','2014-01-10',1),(1020,'Shipping Tape',1004,1,'N',NULL,'0','2014-01-10','0','2014-01-10',1);
/*!40000 ALTER TABLE `PRODUCT_CATEGORIES` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-12  8:14:43
