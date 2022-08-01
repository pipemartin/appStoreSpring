-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: dbstore
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(50) NOT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Zapatos Hombre'),(2,'Zapatos Mujer');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `IdState` int(11) NOT NULL,
  `dane` varchar(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fkState` (`IdState`),
  CONSTRAINT `fkState` FOREIGN KEY (`IdState`) REFERENCES `state` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Abejorral',2,'5002'),(2,'Abrego',24,'54003'),(3,'Abriaquí',2,'5004'),(4,'Acacias',22,'50006'),(5,'Acandí',14,'27006'),(6,'Acevedo',19,'41006'),(7,'Achí',7,'13006'),(8,'Agrado',19,'41013'),(9,'Agua de Dios',16,'25001'),(10,'Aguachica',13,'20011'),(11,'Aguada',28,'68013'),(12,'Aguadas',9,'17013'),(13,'Aguazul',11,'85.01'),(14,'Agustín Codazzi',13,'20013'),(15,'Aipe',19,'41016'),(16,'Albán',23,'52019'),(17,'Albán',16,'25019'),(18,'Albania',10,'18029'),(19,'Albania',20,'44035'),(20,'Albania',28,'68.02'),(21,'Alcalá',31,'76.02'),(22,'Aldana',23,'52022'),(23,'Alejandría',2,'5021'),(24,'Algarrobo',21,'47.03'),(25,'Algeciras',19,'41.02'),(26,'Almaguer',12,'19022'),(27,'Almeida',8,'15022'),(28,'Alpujarra',30,'73024'),(29,'Altamira',19,'41026'),(30,'Alto Baudo',14,'27025'),(31,'Altos del Rosario',7,'13.03'),(32,'Alvarado',30,'73026'),(33,'Amagá',2,'5.03'),(34,'Amalfi',2,'5031'),(35,'Ambalema',30,'73.03'),(36,'Anapoima',16,'25035'),(37,'Ancuyá',23,'52036'),(38,'Andalucía',31,'76036'),(39,'Andes',2,'5034'),(40,'Angelópolis',2,'5036'),(41,'Angostura',2,'5038'),(42,'Anolaima',16,'25.04'),(43,'Anorí',2,'5.04'),(44,'Anserma',9,'17042'),(45,'Ansermanuevo',31,'76041'),(46,'Anza',2,'5044'),(47,'Anzoátegui',30,'73043'),(48,'Apartadó',2,'5045'),(49,'Apía',27,'66045'),(50,'Apulo',16,'25599'),(51,'Aquitania',8,'15047'),(52,'Aracataca',21,'47053'),(53,'Aranzazu',9,'17.05'),(54,'Aratoca',28,'68051'),(55,'Arauca',3,'81001'),(56,'Arauquita',3,'81065'),(57,'Arbeláez',16,'25053'),(58,'Arboleda',23,'52051'),(59,'Arboledas',24,'54051'),(60,'Arboletes',2,'5051'),(61,'Arcabuco',8,'15051'),(62,'Arenal',7,'13042'),(63,'Argelia',2,'5055'),(64,'Argelia',12,'19.05'),(65,'Argelia',31,'76054'),(66,'Ariguaní',21,'47058'),(67,'Arjona',7,'13052'),(68,'Armenia',2,'5059'),(69,'Armenia',26,'63001'),(70,'Armero',30,'73055'),(71,'Arroyohondo',7,'13062'),(72,'Astrea',13,'20032'),(73,'Ataco',30,'73067'),(74,'Atrato',14,'27.05'),(75,'Ayapel',15,'23068'),(76,'Bagadó',14,'27073'),(77,'Bahía Solano',14,'27075'),(78,'Bajo Baudó',14,'27077'),(79,'Balboa',12,'19075'),(80,'Balboa',27,'66075'),(81,'Baranoa',5,'8078'),(82,'Baraya',19,'41078'),(83,'Barbacoas',23,'52079'),(84,'Barbosa',2,'5079'),(85,'Barbosa',28,'68077'),(86,'Barichara',28,'68079'),(87,'Barranca de Upía',22,'50.11'),(88,'Barrancabermeja',28,'68081'),(89,'Barrancas',20,'44078'),(90,'Barranco de Loba',7,'13074'),(91,'Barranco Minas',17,'94343'),(92,'Barranquilla',5,'8001'),(93,'Becerril',13,'20045'),(94,'Belalcázar',9,'17088'),(95,'Belén',23,'52083'),(96,'Belén',8,'15087'),(97,'Belén de Bajira',14,'27086'),(98,'Belén de Los Andaquies',10,'18094'),(99,'Belén de Umbría',27,'66088'),(100,'Bello',2,'5088'),(101,'Belmira',2,'5086'),(102,'Beltrán',16,'25086'),(103,'Berbeo',8,'15.09'),(104,'Betania',2,'5091'),(105,'Betéitiva',8,'15092'),(106,'Betulia',2,'5093'),(107,'Betulia',28,'68092'),(108,'Bituima',16,'25095'),(109,'Boavita',8,'15097'),(110,'Bochalema',24,'54099'),(111,'Bogotá D.C.',6,'11001'),(112,'Bojacá',16,'25099'),(113,'Bojaya',14,'27099'),(114,'Bolívar',12,'19.1'),(115,'Bolívar',28,'68101'),(116,'Bolívar',31,'76.1'),(117,'Bosconia',13,'20.06'),(118,'Boyacá',8,'15104'),(119,'Briceño',2,'5107'),(120,'Briceño',8,'15106'),(121,'Bucaramanga',28,'68001'),(122,'Bucarasica',24,'54109'),(123,'Buena Vista',8,'15109'),(124,'Buenaventura',31,'76109'),(125,'Buenavista',15,'23079'),(126,'Buenavista',26,'63111'),(127,'Buenavista',29,'70.11'),(128,'Buenos Aires',12,'19.11'),(129,'Buesaco',23,'52.11'),(130,'Bugalagrande',31,'76113'),(131,'Buriticá',2,'5113'),(132,'Busbanzá',8,'15114'),(133,'Cabrera',16,'25.12'),(134,'Cabrera',28,'68121'),(135,'Cabuyaro',22,'50124'),(136,'Cacahual',17,'94886'),(137,'Cáceres',2,'5.12'),(138,'Cachipay',16,'25123'),(139,'Cachirá',24,'54128'),(140,'Cácota',24,'54125'),(141,'Caicedo',2,'5125'),(142,'Caicedonia',31,'76122'),(143,'Caimito',29,'70124'),(144,'Cajamarca',30,'73124'),(145,'Cajibío',12,'19.13'),(146,'Cajicá',16,'25126'),(147,'Calamar',7,'13.14'),(148,'Calamar',18,'95015'),(149,'Calarcá',26,'63.13'),(150,'Caldas',2,'5129'),(151,'Caldas',8,'15131'),(152,'Caldono',12,'19137'),(153,'Cali',31,'76001'),(154,'California',28,'68132'),(155,'Calima',31,'76126'),(156,'Caloto',12,'19142'),(157,'Campamento',2,'5134'),(158,'Campo de La Cruz',5,'8137'),(159,'Campoalegre',19,'41132'),(160,'Campohermoso',8,'15135'),(161,'Canalete',15,'23.09'),(162,'Candelaria',5,'8141'),(163,'Candelaria',31,'76.13'),(164,'Cantagallo',7,'13.16'),(165,'Cañasgordas',2,'5138'),(166,'Caparrapí',16,'25148'),(167,'Capitanejo',28,'68147'),(168,'Caqueza',16,'25151'),(169,'Caracolí',2,'5142'),(170,'Caramanta',2,'5145'),(171,'Carcasí',28,'68152'),(172,'Carepa',2,'5147'),(173,'Carmen de Apicala',30,'73148'),(174,'Carmen de Carupa',16,'25154'),(175,'Carmen del Darien',14,'27.15'),(176,'Carolina',2,'5.15'),(177,'Cartagena',7,'13001'),(178,'Cartagena del Chairá',10,'18.15'),(179,'Cartago',31,'76147'),(180,'Carurú',32,'97161'),(181,'Casabianca',30,'73152'),(182,'Castilla la Nueva',22,'50.15'),(183,'Caucasia',2,'5154'),(184,'Cepitá',28,'68.16'),(185,'Cereté',15,'23162'),(186,'Cerinza',8,'15162'),(187,'Cerrito',28,'68162'),(188,'Cerro San Antonio',21,'47161'),(189,'Cértegui',14,'27.16'),(190,'Chachagüí',23,'52.24'),(191,'Chaguaní',16,'25168'),(192,'Chalán',29,'70.23'),(193,'Chámeza',11,'85015'),(194,'Chaparral',30,'73168'),(195,'Charalá',28,'68167'),(196,'Charta',28,'68169'),(197,'Chía',16,'25175'),(198,'Chigorodó',2,'5172'),(199,'Chimá',15,'23168'),(200,'Chimá',28,'68176'),(201,'Chimichagua',13,'20175'),(202,'Chinácota',24,'54172'),(203,'Chinavita',8,'15172'),(204,'Chinchiná',9,'17174'),(205,'Chinú',15,'23182'),(206,'Chipaque',16,'25178'),(207,'Chipatá',28,'68179'),(208,'Chiquinquirá',8,'15176'),(209,'Chíquiza',8,'15232'),(210,'Chiriguaná',13,'20178'),(211,'Chiscas',8,'15.18'),(212,'Chita',8,'15183'),(213,'Chitagá',24,'54174'),(214,'Chitaraque',8,'15185'),(215,'Chivatá',8,'15187'),(216,'Chivolo',21,'47.17'),(217,'Chivor',8,'15236'),(218,'Choachí',16,'25181'),(219,'Chocontá',16,'25183'),(220,'Cicuco',7,'13188'),(221,'Ciénaga',21,'47189'),(222,'Ciénaga de Oro',15,'23189'),(223,'Ciénega',8,'15189'),(224,'Cimitarra',28,'68.19'),(225,'Circasia',26,'63.19'),(226,'Cisneros',2,'5.19'),(227,'Ciudad Bolívar',2,'5101'),(228,'Clemencia',7,'13222'),(229,'Cocorná',2,'5197'),(230,'Coello',30,'73.2'),(231,'Cogua',16,'25.2'),(232,'Colombia',19,'41206'),(233,'Colón',23,'52203'),(234,'Colón',25,'86219'),(235,'Coloso',29,'70204'),(236,'Cómbita',8,'15204'),(237,'Concepción',2,'5206'),(238,'Concepción',28,'68207'),(239,'Concordia',2,'5209'),(240,'Concordia',21,'47205'),(241,'Condoto',14,'27205'),(242,'Confines',28,'68209'),(243,'Consaca',23,'52207'),(244,'Contadero',23,'52.21'),(245,'Contratación',28,'68211'),(246,'Convención',24,'54206'),(247,'Copacabana',2,'5212'),(248,'Coper',8,'15212'),(249,'Córdoba',7,'13212'),(250,'Córdoba',23,'52215'),(251,'Córdoba',26,'63212'),(252,'Corinto',12,'19212'),(253,'Coromoro',28,'68217'),(254,'Corozal',29,'70215'),(255,'Corrales',8,'15215'),(256,'Cota',16,'25214'),(257,'Cotorra',15,'23.3'),(258,'Covarachía',8,'15218'),(259,'Coveñas',29,'70221'),(260,'Coyaima',30,'73217'),(261,'Cravo Norte',3,'81.22'),(262,'Cuaspud',23,'52224'),(263,'Cubará',8,'15223'),(264,'Cubarral',22,'50223'),(265,'Cucaita',8,'15224'),(266,'Cucunubá',16,'25224'),(267,'Cúcuta',24,'54001'),(268,'Cucutilla',24,'54223'),(269,'Cuítiva',8,'15226'),(270,'Cumaral',22,'50226'),(271,'Cumaribo',33,'99773'),(272,'Cumbal',23,'52227'),(273,'Cumbitara',23,'52233'),(274,'Cunday',30,'73226'),(275,'Curillo',10,'18205'),(276,'Curití',28,'68229'),(277,'Curumaní',13,'20228'),(278,'Dabeiba',2,'5234'),(279,'Dagua',31,'76233'),(280,'Dibula',20,'44.09'),(281,'Distracción',20,'44098'),(282,'Dolores',30,'73236'),(283,'Don Matías',2,'5237'),(284,'Dosquebradas',27,'66.17'),(285,'Duitama',8,'15238'),(286,'Durania',24,'54239'),(287,'Ebéjico',2,'5.24'),(288,'El Águila',31,'76243'),(289,'El Bagre',2,'5.25'),(290,'El Banco',21,'47245'),(291,'El Cairo',31,'76246'),(292,'El Calvario',22,'50245'),(293,'El Cantón del San Pablo',14,'27135'),(294,'El Carmen',24,'54245'),(295,'El Carmen de Atrato',14,'27245'),(296,'El Carmen de Bolívar',7,'13244'),(297,'El Carmen de Chucurí',28,'68235'),(298,'El Carmen de Viboral',2,'5148'),(299,'El Castillo',22,'50251'),(300,'El Cerrito',31,'76248'),(301,'El Charco',23,'52.25'),(302,'El Cocuy',8,'15244'),(303,'El Colegio',16,'25245'),(304,'El Copey',13,'20238'),(305,'El Doncello',10,'18247'),(306,'El Dorado',22,'50.27'),(307,'El Dovio',31,'76.25'),(308,'El Encanto',1,'91263'),(309,'El Espino',8,'15248'),(310,'El Guacamayo',28,'68245'),(311,'El Guamo',7,'13248'),(312,'El Litoral del San Juan',14,'27.25'),(313,'El Molino',20,'44.11'),(314,'El Paso',13,'20.25'),(315,'El Paujil',10,'18256'),(316,'El Peñol',23,'52254'),(317,'El Peñón',7,'13268'),(318,'El Peñón',16,'25258'),(319,'El Peñón',28,'68.25'),(320,'El Piñon',21,'47258'),(321,'El Playón',28,'68255'),(322,'El Retén',21,'47268'),(323,'El Retorno',18,'95025'),(324,'El Roble',29,'70233'),(325,'El Rosal',16,'25.26'),(326,'El Rosario',23,'52256'),(327,'El Santuario',2,'5697'),(328,'El Tablón de Gómez',23,'52258'),(329,'El Tambo',12,'19256'),(330,'El Tambo',23,'52.26'),(331,'El Tarra',24,'54.25'),(332,'El Zulia',24,'54261'),(333,'Elías',19,'41244'),(334,'Encino',28,'68264'),(335,'Enciso',28,'68266'),(336,'Entrerrios',2,'5264'),(337,'Envigado',2,'5266'),(338,'Espinal',30,'73268'),(339,'Facatativá',16,'25269'),(340,'Falan',30,'73.27'),(341,'Filadelfia',9,'17272'),(342,'Filandia',26,'63272'),(343,'Firavitoba',8,'15272'),(344,'Flandes',30,'73275'),(345,'Florencia',10,'18001'),(346,'Florencia',12,'19.29'),(347,'Floresta',8,'15276'),(348,'Florián',28,'68271'),(349,'Florida',31,'76275'),(350,'Floridablanca',28,'68276'),(351,'Fomeque',16,'25279'),(352,'Fonseca',20,'44279'),(353,'Fortul',3,'81.3'),(354,'Fosca',16,'25281'),(355,'Francisco Pizarro',23,'52.52'),(356,'Fredonia',2,'5282'),(357,'Fresno',30,'73283'),(358,'Frontino',2,'5284'),(359,'Fuente de Oro',22,'50287'),(360,'Fundación',21,'47288'),(361,'Funes',23,'52287'),(362,'Funza',16,'25286'),(363,'Fúquene',16,'25288'),(364,'Fusagasugá',16,'25.29'),(365,'Gachala',16,'25293'),(366,'Gachancipá',16,'25295'),(367,'Gachantivá',8,'15293'),(368,'Gachetá',16,'25297'),(369,'Galán',28,'68296'),(370,'Galapa',5,'8296'),(371,'Galeras',29,'70235'),(372,'Gama',16,'25299'),(373,'Gamarra',13,'20295'),(374,'Gambita',28,'68298'),(375,'Gameza',8,'15296'),(376,'Garagoa',8,'15299'),(377,'Garzón',19,'41298'),(378,'Génova',26,'63302'),(379,'Gigante',19,'41306'),(380,'Ginebra',31,'76306'),(381,'Giraldo',2,'5306'),(382,'Girardot',16,'25307'),(383,'Girardota',2,'5308'),(384,'Girón',28,'68307'),(385,'Gómez Plata',2,'5.31'),(386,'González',13,'20.31'),(387,'Gramalote',24,'54313'),(388,'Granada',16,'25312'),(389,'Granada',22,'50313'),(390,'Granada',2,'5313'),(391,'Guaca',28,'68318'),(392,'Guacamayas',8,'15317'),(393,'Guacarí',31,'76318'),(394,'Guachené',12,'19.3'),(395,'Guachetá',16,'25317'),(396,'Guachucal',23,'52317'),(397,'Guadalajara de Buga',31,'76111'),(398,'Guadalupe',2,'5315'),(399,'Guadalupe',19,'41319'),(400,'Guadalupe',28,'68.32'),(401,'Guaduas',16,'25.32'),(402,'Guaitarilla',23,'52.32'),(403,'Gualmatán',23,'52323'),(404,'Guamal',21,'47318'),(405,'Guamal',22,'50318'),(406,'Guamo',30,'73319'),(407,'Guapi',12,'19318'),(408,'Guapotá',28,'68322'),(409,'Guaranda',29,'70265'),(410,'Guarne',2,'5318'),(411,'Guasca',16,'25322'),(412,'Guatapé',2,'5321'),(413,'Guataquí',16,'25324'),(414,'Guatavita',16,'25326'),(415,'Guateque',8,'15322'),(416,'Guática',27,'66318'),(417,'Guavatá',28,'68324'),(418,'Guayabal de Siquima',16,'25328'),(419,'Guayabetal',16,'25335'),(420,'Guayatá',8,'15325'),(421,'Güepsa',28,'68327'),(422,'Güicán',8,'15332'),(423,'Gutiérrez',16,'25339'),(424,'Hacarí',24,'54344'),(425,'Hatillo de Loba',7,'13.3'),(426,'Hato',28,'68344'),(427,'Hato Corozal',11,'85125'),(428,'Hatonuevo',20,'44378'),(429,'Heliconia',2,'5347'),(430,'Herrán',24,'54347'),(431,'Herveo',30,'73347'),(432,'Hispania',2,'5353'),(433,'Hobo',19,'41349'),(434,'Honda',30,'73349'),(435,'Ibagué',30,'73001'),(436,'Icononzo',30,'73352'),(437,'Iles',23,'52352'),(438,'Imués',23,'52354'),(439,'Inírida',17,'94001'),(440,'Inzá',12,'19355'),(441,'Ipiales',23,'52356'),(442,'Iquira',19,'41357'),(443,'Isnos',19,'41359'),(444,'Istmina',14,'27361'),(445,'Itagui',2,'5.36'),(446,'Ituango',2,'5361'),(447,'Iza',8,'15362'),(448,'Jambaló',12,'19364'),(449,'Jamundí',31,'76364'),(450,'Jardín',2,'5364'),(451,'Jenesano',8,'15367'),(452,'Jericó',2,'5368'),(453,'Jericó',8,'15368'),(454,'Jerusalén',16,'25368'),(455,'Jesús María',28,'68368'),(456,'Jordán',28,'68.37'),(457,'Juan de Acosta',5,'8372'),(458,'Junín',16,'25372'),(459,'Juradó',14,'27372'),(460,'La Apartada',15,'23.35'),(461,'La Argentina',19,'41378'),(462,'La Belleza',28,'68377'),(463,'La Calera',16,'25377'),(464,'La Capilla',8,'15.38'),(465,'La Ceja',2,'5376'),(466,'La Celia',27,'66383'),(467,'La Chorrera',1,'91405'),(468,'La Cruz',23,'52378'),(469,'La Cumbre',31,'76377'),(470,'La Dorada',9,'17.38'),(471,'La Esperanza',24,'54385'),(472,'La Estrella',2,'5.38'),(473,'La Florida',23,'52381'),(474,'La Gloria',13,'20383'),(475,'La Guadalupe',17,'94885'),(476,'La Jagua de Ibirico',13,'20.4'),(477,'La Jagua del Pilar',20,'44.42'),(478,'La Llanada',23,'52385'),(479,'La Macarena',22,'50.35'),(480,'La Merced',9,'17388'),(481,'La Mesa',16,'25386'),(482,'La Montañita',10,'18.41'),(483,'La Palma',16,'25394'),(484,'La Paz',13,'20621'),(485,'La Paz',28,'68397'),(486,'La Pedrera',1,'91407'),(487,'La Peña',16,'25398'),(488,'La Pintada',2,'5.39'),(489,'La Plata',19,'41396'),(490,'La Playa',24,'54398'),(491,'La Primavera',33,'99524'),(492,'La Salina',11,'85136'),(493,'La Sierra',12,'19392'),(494,'La Tebaida',26,'63401'),(495,'La Tola',23,'52.39'),(496,'La Unión',2,'5.4'),(497,'La Unión',23,'52399'),(498,'La Unión',29,'70.4'),(499,'La Unión',31,'76.4'),(500,'La Uvita',8,'15403'),(501,'La Vega',12,'19397'),(502,'La Vega',16,'25402'),(503,'La Victoria',8,'15401'),(504,'La Victoria',1,'91.43'),(505,'La Victoria',31,'76403'),(506,'La Virginia',27,'66.4'),(507,'Labateca',24,'54377'),(508,'Labranzagrande',8,'15377'),(509,'Landázuri',28,'68385'),(510,'Lebríja',28,'68406'),(511,'Leguízamo',25,'86573'),(512,'Leiva',23,'52405'),(513,'Lejanías',22,'50.4'),(514,'Lenguazaque',16,'25407'),(515,'Lérida',30,'73408'),(516,'Leticia',1,'91001'),(517,'Líbano',30,'73411'),(518,'Liborina',2,'5411'),(519,'Linares',23,'52411'),(520,'Lloró',14,'27413'),(521,'López',12,'19418'),(522,'Lorica',15,'23417'),(523,'Los Andes',23,'52418'),(524,'Los Córdobas',15,'23419'),(525,'Los Palmitos',29,'70418'),(526,'Los Patios',24,'54405'),(527,'Los Santos',28,'68418'),(528,'Lourdes',24,'54418'),(529,'Luruaco',5,'8421'),(530,'Macanal',8,'15425'),(531,'Macaravita',28,'68425'),(532,'Maceo',2,'5425'),(533,'Macheta',16,'25426'),(534,'Madrid',16,'25.43'),(535,'Magangué',7,'13.43'),(536,'Magüí',23,'52427'),(537,'Mahates',7,'13433'),(538,'Maicao',20,'44.43'),(539,'Majagual',29,'70429'),(540,'Málaga',28,'68432'),(541,'Malambo',5,'8433'),(542,'Mallama',23,'52435'),(543,'Manatí',5,'8436'),(544,'Manaure',13,'20443'),(545,'Manaure',20,'44.56'),(546,'Maní',11,'85139'),(547,'Manizales',9,'17001'),(548,'Manta',16,'25436'),(549,'Manzanares',9,'17433'),(550,'Mapiripán',22,'50325'),(551,'Mapiripana',17,'94663'),(552,'Margarita',7,'13.44'),(553,'María la Baja',7,'13442'),(554,'Marinilla',2,'5.44'),(555,'Maripí',8,'15442'),(556,'Mariquita',30,'73443'),(557,'Marmato',9,'17442'),(558,'Marquetalia',9,'17444'),(559,'Marsella',27,'66.44'),(560,'Marulanda',9,'17446'),(561,'Matanza',28,'68444'),(562,'Medellín',2,'5001'),(563,'Medina',16,'25438'),(564,'Medio Atrato',14,'27425'),(565,'Medio Baudó',14,'27.43'),(566,'Medio San Juan',14,'27.45'),(567,'Melgar',30,'73449'),(568,'Mercaderes',12,'19.45'),(569,'Mesetas',22,'50.33'),(570,'Milán',10,'18.46'),(571,'Miraflores',8,'15455'),(572,'Miraflores',18,'95.2'),(573,'Miranda',12,'19455'),(574,'Miriti Paraná',1,'91.46'),(575,'Mistrató',27,'66456'),(576,'Mitú',32,'97001'),(577,'Mocoa',25,'86001'),(578,'Mogotes',28,'68464'),(579,'Molagavita',28,'68468'),(580,'Momil',15,'23464'),(581,'Mompós',7,'13468'),(582,'Mongua',8,'15464'),(583,'Monguí',8,'15466'),(584,'Moniquirá',8,'15469'),(585,'Montebello',2,'5467'),(586,'Montecristo',7,'13458'),(587,'Montelíbano',15,'23466'),(588,'Montenegro',26,'63.47'),(589,'Montería',15,'23001'),(590,'Monterrey',11,'85162'),(591,'Moñitos',15,'23.5'),(592,'Morales',7,'13473'),(593,'Morales',12,'19473'),(594,'Morelia',10,'18479'),(595,'Morichal',17,'94888'),(596,'Morroa',29,'70473'),(597,'Mosquera',16,'25473'),(598,'Mosquera',23,'52473'),(599,'Motavita',8,'15476'),(600,'Murillo',30,'73461'),(601,'Murindó',2,'5475'),(602,'Mutatá',2,'5.48'),(603,'Mutiscua',24,'54.48'),(604,'Muzo',8,'15.48'),(605,'Nariño',2,'5483'),(606,'Nariño',16,'25483'),(607,'Nariño',23,'52.48'),(608,'Nátaga',19,'41483'),(609,'Natagaima',30,'73483'),(610,'Nechí',2,'5495'),(611,'Necoclí',2,'5.49'),(612,'Neira',9,'17486'),(613,'Neiva',19,'41001'),(614,'Nemocón',16,'25486'),(615,'Nilo',16,'25488'),(616,'Nimaima',16,'25489'),(617,'Nobsa',8,'15491'),(618,'Nocaima',16,'25491'),(619,'Norcasia',9,'17495'),(620,'Norosí',7,'13.49'),(621,'Nóvita',14,'27491'),(622,'Nueva Granada',21,'47.46'),(623,'Nuevo Colón',8,'15494'),(624,'Nunchía',11,'85225'),(625,'Nuquí',14,'27495'),(626,'Obando',31,'76497'),(627,'Ocamonte',28,'68498'),(628,'Ocaña',24,'54498'),(629,'Oiba',28,'68.5'),(630,'Oicatá',8,'15.5'),(631,'Olaya',2,'5501'),(632,'Olaya Herrera',23,'52.49'),(633,'Onzaga',28,'68502'),(634,'Oporapa',19,'41503'),(635,'Orito',25,'86.32'),(636,'Orocué',11,'85.23'),(637,'Ortega',30,'73504'),(638,'Ospina',23,'52506'),(639,'Otanche',8,'15507'),(640,'Ovejas',29,'70508'),(641,'Pachavita',8,'15511'),(642,'Pacho',16,'25513'),(643,'Pacoa',32,'97511'),(644,'Pácora',9,'17513'),(645,'Padilla',12,'19513'),(646,'Páez',8,'15514'),(647,'Páez',12,'19517'),(648,'Paicol',19,'41518'),(649,'Pailitas',13,'20517'),(650,'Paime',16,'25518'),(651,'Paipa',8,'15516'),(652,'Pajarito',8,'15518'),(653,'Palermo',19,'41524'),(654,'Palestina',9,'17524'),(655,'Palestina',19,'41.53'),(656,'Palmar',28,'68522'),(657,'Palmar de Varela',5,'8.52'),(658,'Palmas del Socorro',28,'68524'),(659,'Palmira',31,'76.52'),(660,'Palmito',29,'70523'),(661,'Palocabildo',30,'73.52'),(662,'Pamplona',24,'54518'),(663,'Pamplonita',24,'54.52'),(664,'Pana Pana',17,'94887'),(665,'Pandi',16,'25524'),(666,'Panqueba',8,'15522'),(667,'Papunahua',32,'97777'),(668,'Páramo',28,'68533'),(669,'Paratebueno',16,'25.53'),(670,'Pasca',16,'25535'),(671,'Pasto',23,'52001'),(672,'Patía',12,'19532'),(673,'Pauna',8,'15531'),(674,'Paya',8,'15533'),(675,'Paz de Ariporo',11,'85.25'),(676,'Paz de Río',8,'15537'),(677,'Pedraza',21,'47541'),(678,'Pelaya',13,'20.55'),(679,'Pensilvania',9,'17541'),(680,'Peñol',2,'5541'),(681,'Peque',2,'5543'),(682,'Pereira',27,'66001'),(683,'Pesca',8,'15542'),(684,'Piamonte',12,'19533'),(685,'Piedecuesta',28,'68547'),(686,'Piedras',30,'73547'),(687,'Piendamó',12,'19548'),(688,'Pijao',26,'63548'),(689,'Pijiño del Carmen',21,'47545'),(690,'Pinchote',28,'68549'),(691,'Pinillos',7,'13549'),(692,'Piojó',5,'8549'),(693,'Pisba',8,'15.55'),(694,'Pital',19,'41548'),(695,'Pitalito',19,'41551'),(696,'Pivijay',21,'47551'),(697,'Planadas',30,'73555'),(698,'Planeta Rica',15,'23555'),(699,'Plato',21,'47555'),(700,'Policarpa',23,'52.54'),(701,'Polonuevo',5,'8558'),(702,'Ponedera',5,'8.56'),(703,'Popayán',12,'19001'),(704,'Pore',11,'85263'),(705,'Potosí',23,'52.56'),(706,'Pradera',31,'76563'),(707,'Prado',30,'73563'),(708,'Providencia',23,'52565'),(709,'Providencia',4,'88564'),(710,'Pueblo Bello',13,'20.57'),(711,'Pueblo Nuevo',15,'23.57'),(712,'Pueblo Rico',27,'66572'),(713,'Pueblo Viejo',21,'47.57'),(714,'Pueblorrico',2,'5576'),(715,'Puente Nacional',28,'68572'),(716,'Puerres',23,'52573'),(717,'Puerto Alegría',1,'91.53'),(718,'Puerto Arica',1,'91536'),(719,'Puerto Asís',25,'86568'),(720,'Puerto Berrío',2,'5579'),(721,'Puerto Boyacá',8,'15572'),(722,'Puerto Caicedo',25,'86569'),(723,'Puerto Carreño',33,'99001'),(724,'Puerto Colombia',17,'94884'),(725,'Puerto Colombia',5,'8573'),(726,'Puerto Concordia',22,'50.45'),(727,'Puerto Escondido',15,'23574'),(728,'Puerto Gaitán',22,'50568'),(729,'Puerto Guzmán',25,'86571'),(730,'Puerto Libertador',15,'23.58'),(731,'Puerto Lleras',22,'50577'),(732,'Puerto López',22,'50573'),(733,'Puerto Nare',2,'5585'),(734,'Puerto Nariño',1,'91.54'),(735,'Puerto Parra',28,'68573'),(736,'Puerto Rico',10,'18592'),(737,'Puerto Rico',22,'50.59'),(738,'Puerto Rondón',3,'81591'),(739,'Puerto Salgar',16,'25572'),(740,'Puerto Santander',1,'91669'),(741,'Puerto Santander',24,'54553'),(742,'Puerto Tejada',12,'19573'),(743,'Puerto Triunfo',2,'5591'),(744,'Puerto Wilches',28,'68575'),(745,'Pulí',16,'25.58'),(746,'Pupiales',23,'52585'),(747,'Puracé',12,'19585'),(748,'Purificación',30,'73585'),(749,'Purísima',15,'23586'),(750,'Quebradanegra',16,'25592'),(751,'Quetame',16,'25594'),(752,'Quibdó',14,'27001'),(753,'Quimbaya',26,'63594'),(754,'Quinchía',27,'66594'),(755,'Quípama',8,'15.58'),(756,'Quipile',16,'25596'),(757,'Ragonvalia',24,'54599'),(758,'Ramiriquí',8,'15599'),(759,'Ráquira',8,'15.6'),(760,'Recetor',11,'85279'),(761,'Regidor',7,'13.58'),(762,'Remedios',2,'5604'),(763,'Remolino',21,'47605'),(764,'Repelón',5,'8606'),(765,'Restrepo',22,'50606'),(766,'Restrepo',31,'76606'),(767,'Retiro',2,'5607'),(768,'Ricaurte',16,'25612'),(769,'Ricaurte',23,'52612'),(770,'Rio Blanco',30,'73616'),(771,'Río de Oro',13,'20614'),(772,'Río Iro',14,'27.58'),(773,'Río Quito',14,'27.6'),(774,'Río Viejo',7,'13.6'),(775,'Riofrío',31,'76616'),(776,'Riohacha',20,'44001'),(777,'Rionegro',2,'5615'),(778,'Rionegro',28,'68615'),(779,'Riosucio',9,'17614'),(780,'Riosucio',14,'27615'),(781,'Risaralda',9,'17616'),(782,'Rivera',19,'41615'),(783,'Roberto Payán',23,'52621'),(784,'Roldanillo',31,'76622'),(785,'Roncesvalles',30,'73622'),(786,'Rondón',8,'15621'),(787,'Rosas',12,'19622'),(788,'Rovira',30,'73624'),(789,'Sabana de Torres',28,'68655'),(790,'Sabanagrande',5,'8634'),(791,'Sabanalarga',2,'5628'),(792,'Sabanalarga',5,'8638'),(793,'Sabanalarga',11,'85.3'),(794,'Sabanas de San Angel',21,'47.66'),(795,'Sabaneta',2,'5631'),(796,'Saboyá',8,'15632'),(797,'Sácama',11,'85315'),(798,'Sáchica',8,'15638'),(799,'Sahagún',15,'23.66'),(800,'Saladoblanco',19,'41.66'),(801,'Salamina',9,'17653'),(802,'Salamina',21,'47675'),(803,'Salazar',24,'54.66'),(804,'Saldaña',30,'73671'),(805,'Salento',26,'63.69'),(806,'Salgar',2,'5642'),(807,'Samacá',8,'15646'),(808,'Samaná',9,'17662'),(809,'Samaniego',23,'52678'),(810,'Sampués',29,'70.67'),(811,'San Agustín',19,'41668'),(812,'San Alberto',13,'20.71'),(813,'San Andrés',28,'68669'),(814,'San Andrés',4,'88001'),(815,'San Andrés de Cuerquía',2,'5647'),(816,'San Andrés de Tumaco',23,'52835'),(817,'San Andrés Sotavento',15,'23.67'),(818,'San Antero',15,'23672'),(819,'San Antonio',30,'73675'),(820,'San Antonio del Tequendama',16,'25645'),(821,'San Benito',28,'68673'),(822,'San Benito Abad',29,'70678'),(823,'San Bernardo',16,'25649'),(824,'San Bernardo',23,'52685'),(825,'San Bernardo del Viento',15,'23675'),(826,'San Calixto',24,'54.67'),(827,'San Carlos',15,'23678'),(828,'San Carlos',2,'5649'),(829,'San Carlos de Guaroa',22,'50.68'),(830,'San Cayetano',16,'25653'),(831,'San Cayetano',24,'54673'),(832,'San Cristóbal',7,'13.62'),(833,'San Diego',13,'20.75'),(834,'San Eduardo',8,'15.66'),(835,'San Estanislao',7,'13647'),(836,'San Felipe',17,'94883'),(837,'San Fernando',7,'13.65'),(838,'San Francisco',2,'5652'),(839,'San Francisco',16,'25658'),(840,'San Francisco',25,'86755'),(841,'San Gil',28,'68679'),(842,'San Jacinto',7,'13654'),(843,'San Jacinto del Cauca',7,'13655'),(844,'San Jerónimo',2,'5656'),(845,'San Joaquín',28,'68682'),(846,'San José',9,'17665'),(847,'San José de La Montaña',2,'5658'),(848,'San José de Miranda',28,'68684'),(849,'San José de Pare',8,'15664'),(850,'San José de Uré',15,'23682'),(851,'San José del Fragua',10,'18.61'),(852,'San José del Guaviare',18,'95001'),(853,'San José del Palmar',14,'27.66'),(854,'San Juan de Arama',22,'50683'),(855,'San Juan de Betulia',29,'70702'),(856,'San Juan de Río Seco',16,'25662'),(857,'San Juan de Urabá',2,'5659'),(858,'San Juan del Cesar',20,'44.65'),(859,'San Juan Nepomuceno',7,'13657'),(860,'San Juanito',22,'50686'),(861,'San Lorenzo',23,'52687'),(862,'San Luis',2,'5.66'),(863,'San Luis',30,'73678'),(864,'San Luis de Gaceno',11,'85325'),(865,'San Luis de Gaceno',8,'15667'),(866,'San Luis de Sincé',29,'70742'),(867,'San Marcos',29,'70708'),(868,'San Martín',13,'20.77'),(869,'San Martín',22,'50689'),(870,'San Martín de Loba',7,'13667'),(871,'San Mateo',8,'15673'),(872,'San Miguel',28,'68686'),(873,'San Miguel',25,'86757'),(874,'San Miguel de Sema',8,'15676'),(875,'San Onofre',29,'70713'),(876,'San Pablo',23,'52693'),(877,'San Pablo de Borbur',8,'15681'),(878,'San Pablo de Borbur',7,'13.67'),(879,'San Pedro',2,'5664'),(880,'San Pedro',29,'70717'),(881,'San Pedro',31,'76.67'),(882,'San Pedro de Cartago',23,'52694'),(883,'San Pedro de Uraba',2,'5665'),(884,'San Pelayo',15,'23686'),(885,'San Rafael',2,'5667'),(886,'San Roque',2,'5.67'),(887,'San Sebastián',12,'19693'),(888,'San Sebastián de Buenavista',21,'47692'),(889,'San Vicente',2,'5674'),(890,'San Vicente de Chucurí',28,'68689'),(891,'San Vicente del Caguán',10,'18753'),(892,'San Zenón',21,'47703'),(893,'Sandoná',23,'52683'),(894,'Santa Ana',21,'47707'),(895,'Santa Bárbara',2,'5679'),(896,'Santa Bárbara',23,'52696'),(897,'Santa Bárbara',28,'68705'),(898,'Santa Bárbara de Pinto',21,'47.72'),(899,'Santa Catalina',7,'13673'),(900,'Santa Helena del Opón',28,'68.72'),(901,'Santa Isabel',30,'73686'),(902,'Santa Lucía',5,'8675'),(903,'Santa María',8,'15.69'),(904,'Santa María',19,'41676'),(905,'Santa Marta',21,'47001'),(906,'Santa Rosa',7,'13683'),(907,'Santa Rosa',12,'19701'),(908,'Santa Rosa de Cabal',27,'66682'),(909,'Santa Rosa de Osos',2,'5686'),(910,'Santa Rosa de Viterbo',8,'15693'),(911,'Santa Rosa del Sur',7,'13688'),(912,'Santa Rosalía',33,'99624'),(913,'Santa Sofía',8,'15696'),(914,'Santacruz',23,'52699'),(915,'Santafé de Antioquia',2,'5042'),(916,'Santana',8,'15686'),(917,'Santander de Quilichao',12,'19698'),(918,'Santiago',25,'86.76'),(919,'Santiago',24,'54.68'),(920,'Santiago de Tolú',29,'70.82'),(921,'Santo Domingo',2,'5.69'),(922,'Santo Tomás',5,'8685'),(923,'Santuario',27,'66687'),(924,'Sapuyes',23,'52.72'),(925,'Saravena',3,'81736'),(926,'Sardinata',24,'54.72'),(927,'Sasaima',16,'25718'),(928,'Sativanorte',8,'15.72'),(929,'Sativasur',8,'15723'),(930,'Segovia',2,'5736'),(931,'Sesquilé',16,'25736'),(932,'Sevilla',31,'76736'),(933,'Siachoque',8,'15.74'),(934,'Sibaté',16,'25.74'),(935,'Sibundoy',25,'86749'),(936,'Silos',24,'54743'),(937,'Silvania',16,'25743'),(938,'Silvia',12,'19743'),(939,'Simacota',28,'68745'),(940,'Simijaca',16,'25745'),(941,'Simití',7,'13744'),(942,'Sincelejo',29,'70001'),(943,'Sipí',14,'27745'),(944,'Sitionuevo',21,'47745'),(945,'Soacha',16,'25754'),(946,'Soatá',8,'15753'),(947,'Socha',8,'15757'),(948,'Socorro',28,'68755'),(949,'Socotá',8,'15755'),(950,'Sogamoso',8,'15759'),(951,'Solano',10,'18756'),(952,'Soledad',5,'8758'),(953,'Solita',10,'18785'),(954,'Somondoco',8,'15761'),(955,'Sonsón',2,'5756'),(956,'Sopetrán',2,'5761'),(957,'Soplaviento',7,'13.76'),(958,'Sopó',16,'25758'),(959,'Sora',8,'15762'),(960,'Soracá',8,'15764'),(961,'Sotaquirá',8,'15763'),(962,'Sotara',12,'19.76'),(963,'Suaita',28,'68.77'),(964,'Suan',5,'8.77'),(965,'Suárez',12,'19.78'),(966,'Suárez',30,'73.77'),(967,'Suaza',19,'41.77'),(968,'Subachoque',16,'25769'),(969,'Sucre',12,'19785'),(970,'Sucre',28,'68773'),(971,'Sucre',29,'70771'),(972,'Suesca',16,'25772'),(973,'Supatá',16,'25777'),(974,'Supía',9,'17777'),(975,'Suratá',28,'68.78'),(976,'Susa',16,'25779'),(977,'Susacón',8,'15774'),(978,'Sutamarchán',8,'15776'),(979,'Sutatausa',16,'25781'),(980,'Sutatenza',8,'15778'),(981,'Tabio',16,'25785'),(982,'Tadó',14,'27787'),(983,'Talaigua Nuevo',7,'13.78'),(984,'Tamalameque',13,'20787'),(985,'Támara',11,'85.4'),(986,'Tame',3,'81794'),(987,'Támesis',2,'5789'),(988,'Taminango',23,'52786'),(989,'Tangua',23,'52788'),(990,'Taraira',32,'97666'),(991,'Tarapacá',1,'91798'),(992,'Tarazá',2,'5.79'),(993,'Tarqui',19,'41791'),(994,'Tarso',2,'5792'),(995,'Tasco',8,'15.79'),(996,'Tauramena',11,'85.41'),(997,'Tausa',16,'25793'),(998,'Tello',19,'41799'),(999,'Tena',16,'25797'),(1000,'Tenerife',21,'47798'),(1001,'Tenjo',16,'25799'),(1002,'Tenza',8,'15798'),(1003,'Teorama',24,'54.8'),(1004,'Teruel',19,'41801'),(1005,'Tesalia',19,'41797'),(1006,'Tibacuy',16,'25805'),(1007,'Tibaná',8,'15804'),(1008,'Tibasosa',8,'15806'),(1009,'Tibirita',16,'25807'),(1010,'Tibú',24,'54.81'),(1011,'Tierralta',15,'23807'),(1012,'Timaná',19,'41807'),(1013,'Timbío',12,'19807'),(1014,'Timbiquí',12,'19809'),(1015,'Tinjacá',8,'15808'),(1016,'Tipacoque',8,'15.81'),(1017,'Tiquisio',7,'13.81'),(1018,'Titiribí',2,'5809'),(1019,'Toca',8,'15814'),(1020,'Tocaima',16,'25815'),(1021,'Tocancipá',16,'25817'),(1022,'Togüí',8,'15816'),(1023,'Toledo',2,'5819'),(1024,'Toledo',24,'54.82'),(1025,'Tolú Viejo',29,'70823'),(1026,'Tona',28,'68.82'),(1027,'Tópaga',8,'15.82'),(1028,'Topaipí',16,'25823'),(1029,'Toribio',12,'19821'),(1030,'Toro',31,'76823'),(1031,'Tota',8,'15822'),(1032,'Totoró',12,'19824'),(1033,'Trinidad',11,'85.43'),(1034,'Trujillo',31,'76828'),(1035,'Tubará',5,'8832'),(1036,'Tuchín',15,'23815'),(1037,'Tuluá',31,'76834'),(1038,'Tunja',8,'15001'),(1039,'Tununguá',8,'15832'),(1040,'Túquerres',23,'52838'),(1041,'Turbaco',7,'13836'),(1042,'Turbaná',7,'13838'),(1043,'Turbo',2,'5837'),(1044,'Turmequé',8,'15835'),(1045,'Tuta',8,'15837'),(1046,'Tutazá',8,'15839'),(1047,'Ubalá',16,'25839'),(1048,'Ubaque',16,'25841'),(1049,'Ulloa',31,'76845'),(1050,'Umbita',8,'15842'),(1051,'Une',16,'25845'),(1052,'Unguía',14,'27.8'),(1053,'Unión Panamericana',14,'27.81'),(1054,'Uramita',2,'5842'),(1055,'Uribe',22,'50.37'),(1056,'Uribia',20,'44847'),(1057,'Urrao',2,'5847'),(1058,'Urumita',20,'44855'),(1059,'Usiacurí',5,'8849'),(1060,'Útica',16,'25851'),(1061,'Valdivia',2,'5854'),(1062,'Valencia',15,'23855'),(1063,'Valle de Guamez',25,'86865'),(1064,'Valle de San José',28,'68855'),(1065,'Valle de San Juan',30,'73854'),(1066,'Valledupar',13,'20001'),(1067,'Valparaíso',2,'5856'),(1068,'Valparaíso',10,'18.86'),(1069,'Vegachí',2,'5858'),(1070,'Vélez',28,'68861'),(1071,'Venadillo',30,'73861'),(1072,'Venecia',2,'5861'),(1073,'Venecia',16,'25506'),(1074,'Ventaquemada',8,'15861'),(1075,'Vergara',16,'25862'),(1076,'Versalles',31,'76863'),(1077,'Vetas',28,'68867'),(1078,'Vianí',16,'25867'),(1079,'Victoria',9,'17867'),(1080,'Vigía del Fuerte',2,'5873'),(1081,'Vijes',31,'76869'),(1082,'Villa Caro',24,'54871'),(1083,'Villa de Leyva',8,'15407'),(1084,'Villa de San Diego de Ubate',16,'25843'),(1085,'Villa del Rosario',24,'54874'),(1086,'Villa Rica',12,'19845'),(1087,'Villagarzón',25,'86885'),(1088,'Villagómez',16,'25871'),(1089,'Villahermosa',30,'73.87'),(1090,'Villamaría',9,'17873'),(1091,'Villanueva',7,'13873'),(1092,'Villanueva',20,'44874'),(1093,'Villanueva',28,'68872'),(1094,'Villanueva',11,'85.44'),(1095,'Villapinzón',16,'25873'),(1096,'Villarrica',30,'73873'),(1097,'Villavicencio',22,'50001'),(1098,'Villavieja',19,'41872'),(1099,'Villeta',16,'25875'),(1100,'Viotá',16,'25878'),(1101,'Viracachá',8,'15879'),(1102,'Vista Hermosa',22,'50711'),(1103,'Viterbo',9,'17877'),(1104,'Yacopí',16,'25885'),(1105,'Yacuanquer',23,'52885'),(1106,'Yaguará',19,'41885'),(1107,'Yalí',2,'5885'),(1108,'Yarumal',2,'5887'),(1109,'Yavaraté',32,'97889'),(1110,'Yolombó',2,'5.89'),(1111,'Yondó',2,'5893'),(1112,'Yopal',11,'85001'),(1113,'Yotoco',31,'76.89'),(1114,'Yumbo',31,'76892'),(1115,'Zambrano',7,'13894'),(1116,'Zapatoca',28,'68895'),(1117,'Zapayán',21,'47.96'),(1118,'Zaragoza',2,'5895'),(1119,'Zarzal',31,'76895'),(1120,'Zetaquira',8,'15897'),(1121,'Zipacón',16,'25898'),(1122,'Zipaquirá',16,'25899'),(1123,'Zona Bananera',21,'47.98'),(1124,'Otro',100,'0');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customerID` varchar(12) NOT NULL,
  `customerName` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `phone` int(11) NOT NULL,
  `mobileno` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `notes` longtext NOT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('112','kkkk','kkk','kkk','kkk',444,5555,'capedraza@gmail.com',''),('12','eee','eee','eee','eee',333,444,'capedraza@gmail.com',''),('122','bbbbbbbbb','mnnnnnnnnnn','mmmmmmm','nnnn',6557,9999,'capedraza@gmail.com',''),('13','rrr','rrrr','rrrr','rrrr',4444,5555,'capedraza@gmail.com',''),('14','tttt','ttt','ttt','ttt',5555,6666,'capedraza@gmail.com',''),('15','tttt','yyyy','yyyy','yyy',555,666,'capedraza@gmail.com',''),('16','gggg','ggg','ggg','ggg',555,666,'capedraza@gmail.com',''),('17','hhhh','hhh','hhh','hh',777,7777,'capedraza@gmail.com',''),('18','ccccc','kkkkkkk','lllllll','ppppppp',9999,8888,'capedraza@gmail.com',''),('19','kkkk','kkkk','kkkk','kkkk',1111,2222,'capedraza@gmail.com',''),('1996702','nobis','16605 Ruthie Ferry\nWest Jewelbury, KY 08315-0881','Port Kailyn','Florida',296,653286858,'uquigley@example.org','Notes Customer'),('2','ut','68490 Mossie Underpass\nNinafurt, MS 38362','Port Bobbie','Virginia',0,409955428,'maurine13@example.org','Notes Customer'),('20','zzzz','zzzz','zzz','zzz',444,555,'capedraza@gmail.com',''),('2389814','voluptas','54864 Victoria Course\nBrandynhaven, WY 46336-3456','Port Bennettmouth','Alabama',251743,8301346,'lonny.hackett@example.org','Notes Customer'),('29371631','earum','1088 Schultz Union\nEast Austyn, PA 27130','North Miltonfort','SouthCarolina',393,56989,'blanda.orpha@example.net','Notes Customer'),('30236952','possimus','10668 Gardner Center Apt. 046\nEast Thurman, IN 381','Baileyton','Idaho',238216,363483,'matilde.dibbert@example.org','Notes Customer'),('342','rrr','reee','wewew','eeee',4444,333,'capedraza@gmail.com',''),('366','repellendus','351 Wiegand Stravenue Apt. 791\nNorth Geohaven, MD ','North Sam','Florida',558,269054,'destini.powlowski@example.net','Notes Customer'),('39344','dicta','0782 Keon Gateway\nTremaynefurt, AR 35521','East Destineybury','SouthDakota',2147483647,94811778,'rau.gina@example.org','Notes Customer'),('4','in','1004 Huel Wall Apt. 962\nNorth Stephenstad, IA 8015','Lake Connermouth','Florida',0,231,'lilla56@example.com','Notes Customer'),('4038338','voluptate','95786 Mraz Hills\nJamarcuschester, SC 96621-0351','Port Jaquan','Washington',1,6,'ycremin@example.org','Notes Customer'),('434','Carlos A','dasd','dsdsad','eweq',3423423,43242,'carlos@email.co',''),('45413','et','40560 Jorge Forges\nKemmerfurt, MS 09945','Orvaltown','RhodeIsland',15,738245100,'kmclaughlin@example.org','Notes Customer'),('4663','felipe mi','42863 Annalise ViewsWelchville, ME 41533-3692','New Josiebury','Minnesota',1,666678,'hassie22@example.com',''),('501','juan felipe','Centro','Neiva','Huila',123456,4567890,'carlos@email.co',''),('5630225','reprehenderit','1082 Hansen Mews Suite 143\nEast Chelsey, ID 90029-','Boyleland','RhodeIsland',0,1605976,'celine57@example.org','Notes Customer'),('6666','Juan Felipe Martin ','Calle4impar5numero98','rivera','Region orinoco',3155244,3434,'test10@gmail.com',''),('72496397','dolorum','237 Rosanna Cape\nBrownborough, VA 05895-5189','Joeyhaven','Massachusetts',0,1020929,'tessie37@example.org','Notes Customer'),('79','magni','5198 Priscilla Forest\nWest Harley, OK 15854-1575','New Eduardo','Louisiana',0,4704,'merlin.schmeler@example.org','Notes Customer'),('961948','vel','942 Balistreri View Suite 399\nHirtheville, NE 8253','Emmaleeland','Montana',1,7219552,'alvah.brown@example.org','Notes Customer');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalleventa`
--

DROP TABLE IF EXISTS `detalleventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalleventa` (
  `ventaId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `IdentificacionVenta` int(150) NOT NULL,
  PRIMARY KEY (`ventaId`),
  UNIQUE KEY `ventaId` (`ventaId`),
  KEY `IdentificacionVenta` (`IdentificacionVenta`),
  CONSTRAINT `detalleventa_ibfk_1` FOREIGN KEY (`IdentificacionVenta`) REFERENCES `venta` (`IdentificacionVenta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalleventa`
--

LOCK TABLES `detalleventa` WRITE;
/*!40000 ALTER TABLE `detalleventa` DISABLE KEYS */;
INSERT INTO `detalleventa` VALUES (2,1),(7,3);
/*!40000 ALTER TABLE `detalleventa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(50) NOT NULL,
  `categoryId` int(11) NOT NULL,
  PRIMARY KEY (`productId`),
  KEY `fkCategory` (`categoryId`),
  CONSTRAINT `fkCategory` FOREIGN KEY (`categoryId`) REFERENCES `category` (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Mocasines',1),(2,'Zapatillas',2),(6,'Tenis',2);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `dane` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'Amazonas','91'),(2,'Antioquia','5'),(3,'Arauca','81'),(4,'Archipiélago de San Andrés, Providencia y Santa Catalina','88'),(5,'Atlántico','8'),(6,'Bogotá D.C.','11'),(7,'Bolívar','13'),(8,'Boyacá','15'),(9,'Caldas','17'),(10,'Caquetá','18'),(11,'Casanare','85'),(12,'Cauca','19'),(13,'Cesar','20'),(14,'Chocó','27'),(15,'Córdoba','23'),(16,'Cundinamarca','25'),(17,'Guainía','94'),(18,'Guaviare','95'),(19,'Huila','41'),(20,'La Guajira','44'),(21,'Magdalena','47'),(22,'Meta','50'),(23,'Nariño','52'),(24,'Norte de Santander','54'),(25,'Putumayo','86'),(26,'Quindío','63'),(27,'Risaralda','66'),(28,'Santander','68'),(29,'Sucre','70'),(30,'Tolima','73'),(31,'Valle del Cauca','76'),(32,'Vaupés','97'),(33,'Vichada','99'),(100,'otro','100');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(30) NOT NULL,
  `pwd` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','12345'),(2,'client','12345');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venta` (
  `IdentificacionVenta` int(150) NOT NULL,
  `productId` int(15) NOT NULL,
  `customerId` varchar(12) CHARACTER SET utf8 NOT NULL,
  `cantidad` int(150) NOT NULL,
  `precioUnid` int(150) NOT NULL,
  PRIMARY KEY (`IdentificacionVenta`),
  KEY `productId` (`productId`),
  KEY `customerId` (`customerId`),
  CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `venta_ibfk_4` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (0,6,'501',6,30000),(1,6,'501',2323,3232323),(3,1,'434',4,3235);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-27 15:36:52
