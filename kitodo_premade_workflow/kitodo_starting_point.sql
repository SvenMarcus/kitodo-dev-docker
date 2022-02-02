-- MySQL dump 10.19  Distrib 10.3.32-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: kitodo
-- ------------------------------------------------------
-- Server version	10.3.32-MariaDB-0ubuntu0.20.04.1

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
-- Table structure for table `authority`
--

DROP TABLE IF EXISTS `authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authority`
--

LOCK TABLES `authority` WRITE;
/*!40000 ALTER TABLE `authority` DISABLE KEYS */;
INSERT INTO `authority` VALUES (172,'addAuthority_globalAssignable'),(149,'addBatch_clientAssignable'),(6,'addClient_globalAssignable'),(75,'addDocket_clientAssignable'),(44,'addLdapGroup_globalAssignable'),(49,'addLdapServer_globalAssignable'),(85,'addProcess_clientAssignable'),(68,'addProject_clientAssignable'),(121,'addRole_clientAssignable'),(29,'addRole_globalAssignable'),(80,'addRuleset_clientAssignable'),(111,'addTask_clientAssignable'),(24,'addTask_globalAssignable'),(159,'addTemplate_clientAssignable'),(126,'addUser_clientAssignable'),(34,'addUser_globalAssignable'),(140,'addWorkflow_clientAssignable'),(167,'assignTasks_clientAssignable'),(163,'assignTasks_globalAssignable'),(171,'configureColumns_clientAssignable'),(170,'configureColumns_globalAssignable'),(174,'deleteAuthority_globalAssignable'),(151,'deleteBatch_clientAssignable'),(5,'deleteClient_globalAssignable'),(74,'deleteDocket_clientAssignable'),(46,'deleteLdapGroup_globalAssignable'),(51,'deleteLdapServer_globalAssignable'),(187,'deleteMedia_clientAssignable'),(186,'deleteMedia_globalAssignable'),(84,'deleteProcess_clientAssignable'),(67,'deleteProject_clientAssignable'),(120,'deleteRole_clientAssignable'),(31,'deleteRole_globalAssignable'),(79,'deleteRuleset_clientAssignable'),(110,'deleteTask_clientAssignable'),(26,'deleteTask_globalAssignable'),(161,'deleteTemplate_clientAssignable'),(125,'deleteUser_clientAssignable'),(36,'deleteUser_globalAssignable'),(134,'deleteWorkflow_clientAssignable'),(173,'editAuthority_globalAssignable'),(150,'editBatch_clientAssignable'),(63,'editClient_clientAssignable'),(4,'editClient_globalAssignable'),(73,'editDocket_clientAssignable'),(53,'editIndex_globalAssignable'),(45,'editLdapGroup_globalAssignable'),(50,'editLdapServer_globalAssignable'),(83,'editProcess_clientAssignable'),(94,'editProcessImages_clientAssignable'),(57,'editProcessImages_globalAssignable'),(91,'editProcessMetaData_clientAssignable'),(54,'editProcessMetaData_globalAssignable'),(93,'editProcessPagination_clientAssignable'),(56,'editProcessPagination_globalAssignable'),(92,'editProcessStructureData_clientAssignable'),(55,'editProcessStructureData_globalAssignable'),(66,'editProject_clientAssignable'),(119,'editRole_clientAssignable'),(30,'editRole_globalAssignable'),(78,'editRuleset_clientAssignable'),(109,'editTask_clientAssignable'),(25,'editTask_globalAssignable'),(160,'editTemplate_clientAssignable'),(124,'editUser_clientAssignable'),(35,'editUser_globalAssignable'),(133,'editWorkflow_clientAssignable'),(177,'exportProcess_clientAssignable'),(168,'overrideTasks_clientAssignable'),(164,'overrideTasks_globalAssignable'),(166,'performTask_clientAssignable'),(162,'performTask_globalAssignable'),(188,'runKitodoScript_clientAssignable'),(169,'superviseTasks_clientAssignable'),(165,'superviseTasks_globalAssignable'),(183,'unassignTasks_clientAssignable'),(182,'unassignTasks_globalAssignable'),(185,'uploadMedia_clientAssignable'),(184,'uploadMedia_globalAssignable'),(141,'viewAllAuthorities_globalAssignable'),(148,'viewAllBatches_clientAssignable'),(2,'viewAllClients_globalAssignable'),(72,'viewAllDockets_clientAssignable'),(42,'viewAllLdapGroups_globalAssignable'),(47,'viewAllLdapServers_globalAssignable'),(82,'viewAllProcesses_clientAssignable'),(65,'viewAllProjects_clientAssignable'),(118,'viewAllRoles_clientAssignable'),(27,'viewAllRoles_globalAssignable'),(77,'viewAllRulesets_clientAssignable'),(108,'viewAllTasks_clientAssignable'),(22,'viewAllTasks_globalAssignable'),(158,'viewAllTemplates_clientAssignable'),(123,'viewAllUsers_clientAssignable'),(32,'viewAllUsers_globalAssignable'),(132,'viewAllWorkflows_clientAssignable'),(175,'viewAuthority_globalAssignable'),(147,'viewBatch_clientAssignable'),(62,'viewClient_clientAssignable'),(3,'viewClient_globalAssignable'),(178,'viewDatabaseStatistic_globalAssignable'),(71,'viewDocket_clientAssignable'),(52,'viewIndex_globalAssignable'),(43,'viewLdapGroup_globalAssignable'),(48,'viewLdapServer_globalAssignable'),(181,'viewMigration_globalAssignable'),(81,'viewProcess_clientAssignable'),(98,'viewProcessImages_clientAssignable'),(61,'viewProcessImages_globalAssignable'),(95,'viewProcessMetaData_clientAssignable'),(58,'viewProcessMetaData_globalAssignable'),(97,'viewProcessPagination_clientAssignable'),(60,'viewProcessPagination_globalAssignable'),(96,'viewProcessStructureData_clientAssignable'),(59,'viewProcessStructureData_globalAssignable'),(64,'viewProject_clientAssignable'),(117,'viewRole_clientAssignable'),(28,'viewRole_globalAssignable'),(76,'viewRuleset_clientAssignable'),(107,'viewTask_clientAssignable'),(23,'viewTask_globalAssignable'),(179,'viewTaskManager_globalAssignable'),(157,'viewTemplate_clientAssignable'),(180,'viewTerms_globalAssignable'),(122,'viewUser_clientAssignable'),(33,'viewUser_globalAssignable'),(131,'viewWorkflow_clientAssignable');
/*!40000 ALTER TABLE `authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch`
--

DROP TABLE IF EXISTS `batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indexAction` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch`
--

LOCK TABLES `batch` WRITE;
/*!40000 ALTER TABLE `batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_x_process`
--

DROP TABLE IF EXISTS `batch_x_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch_x_process` (
  `process_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  PRIMARY KEY (`process_id`,`batch_id`),
  KEY `FK_ProzesseID` (`process_id`),
  KEY `FK_BatchID` (`batch_id`),
  CONSTRAINT `FK_batch_x_process_batch_id` FOREIGN KEY (`batch_id`) REFERENCES `batch` (`id`),
  CONSTRAINT `FK_batch_x_process_process_id` FOREIGN KEY (`process_id`) REFERENCES `process` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_x_process`
--

LOCK TABLES `batch_x_process` WRITE;
/*!40000 ALTER TABLE `batch_x_process` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch_x_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Client_ChangeMe');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_x_listcolumn`
--

DROP TABLE IF EXISTS `client_x_listcolumn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_x_listcolumn` (
  `client_id` int(11) NOT NULL,
  `column_id` int(11) NOT NULL,
  PRIMARY KEY (`client_id`,`column_id`),
  KEY `FK_client_x_listColumn_client_id` (`client_id`),
  KEY `FK_client_x_listColumn_column_id` (`column_id`),
  CONSTRAINT `FK_client_x_listColumn_client_id` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  CONSTRAINT `FK_client_x_listColumn_column_id` FOREIGN KEY (`column_id`) REFERENCES `listcolumn` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_x_listcolumn`
--

LOCK TABLES `client_x_listcolumn` WRITE;
/*!40000 ALTER TABLE `client_x_listcolumn` DISABLE KEYS */;
INSERT INTO `client_x_listcolumn` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33);
/*!40000 ALTER TABLE `client_x_listcolumn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_x_user`
--

DROP TABLE IF EXISTS `client_x_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_x_user` (
  `client_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `FK_client_x_user_user_id` (`user_id`),
  KEY `FK_client_x_user_client_id` (`client_id`),
  CONSTRAINT `FK_client_x_user_client_id` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  CONSTRAINT `FK_client_x_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_x_user`
--

LOCK TABLES `client_x_user` WRITE;
/*!40000 ALTER TABLE `client_x_user` DISABLE KEYS */;
INSERT INTO `client_x_user` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6);
/*!40000 ALTER TABLE `client_x_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isCorrected` tinyint(1) NOT NULL DEFAULT 0,
  `creationDate` datetime DEFAULT NULL,
  `correctionDate` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `currentTask_id` int(11) DEFAULT NULL,
  `correctionTask_id` int(11) DEFAULT NULL,
  `process_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_user_id` (`user_id`),
  KEY `FK_currentTask_id` (`currentTask_id`),
  KEY `FK_correctionTask_id` (`correctionTask_id`),
  KEY `FK_process_id` (`process_id`),
  CONSTRAINT `FK_comment_correctionTask_id` FOREIGN KEY (`correctionTask_id`) REFERENCES `task` (`id`),
  CONSTRAINT `FK_comment_currentTask_id` FOREIGN KEY (`currentTask_id`) REFERENCES `task` (`id`),
  CONSTRAINT `FK_comment_process_id` FOREIGN KEY (`process_id`) REFERENCES `process` (`id`),
  CONSTRAINT `FK_comment_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataeditor_setting`
--

DROP TABLE IF EXISTS `dataeditor_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataeditor_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `structure_width` float DEFAULT NULL,
  `metadata_width` float DEFAULT NULL,
  `gallery_width` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_dataeditorsetting_user_id` (`user_id`),
  KEY `FK_dataeditorsetting_task_id` (`task_id`),
  CONSTRAINT `FK_dataeditorsetting_task_id` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`),
  CONSTRAINT `FK_dataeditorsetting_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataeditor_setting`
--

LOCK TABLES `dataeditor_setting` WRITE;
/*!40000 ALTER TABLE `dataeditor_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataeditor_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docket`
--

DROP TABLE IF EXISTS `docket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indexAction` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_docket_client_id` (`client_id`),
  CONSTRAINT `FK_docket_client_id` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docket`
--

LOCK TABLES `docket` WRITE;
/*!40000 ALTER TABLE `docket` DISABLE KEYS */;
INSERT INTO `docket` VALUES (1,'default','docket.xsl','DONE',1,1);
/*!40000 ALTER TABLE `docket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filter`
--

DROP TABLE IF EXISTS `filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `indexAction` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_filter_x_user_id` (`user_id`),
  CONSTRAINT `FK_filter_x_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filter`
--

LOCK TABLES `filter` WRITE;
/*!40000 ALTER TABLE `filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flyway_schema_history`
--

DROP TABLE IF EXISTS `flyway_schema_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flyway_schema_history` (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int(11) DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `flyway_schema_history_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flyway_schema_history`
--

LOCK TABLES `flyway_schema_history` WRITE;
/*!40000 ALTER TABLE `flyway_schema_history` DISABLE KEYS */;
INSERT INTO `flyway_schema_history` VALUES (1,'1','<< Flyway Baseline >>','BASELINE','<< Flyway Baseline >>',NULL,'kitodo','2022-02-02 10:56:57',0,1),(2,'2.0','Translate tables names English','SQL','V2_0__Translate_tables_names_English.sql',1003915713,'kitodo','2022-02-02 10:57:03',1119,1),(3,'2.1','Translate columns names to English','SQL','V2_1__Translate_columns_names_to_English.sql',678095644,'kitodo','2022-02-02 10:57:04',789,1),(4,'2.2','Remove dangling data','SQL','V2_2__Remove_dangling_data.sql',1931059347,'kitodo','2022-02-02 10:57:04',3,1),(5,'2.3','Add foreign keys','SQL','V2_3__Add_foreign_keys.sql',1283934716,'kitodo','2022-02-02 10:57:11',6720,1),(6,'2.4','Adjust database for datamanagement module','SQL','V2_4__Adjust_database_for_datamanagement_module.sql',-2020492123,'kitodo','2022-02-02 10:57:11',366,1),(7,'2.5','Rename docket name','SQL','V2_5__Rename_docket_name.sql',-986073616,'kitodo','2022-02-02 10:57:11',15,1),(8,'2.6','Store properties only in one table','SQL','V2_6__Store_properties_only_in_one_table.sql',-1714665569,'kitodo','2022-02-02 10:57:18',6689,1),(9,'2.7','Add column indexAction for ElasticSearch','SQL','V2_7__Add_column_indexAction_for_ElasticSearch.sql',-1126446108,'kitodo','2022-02-02 10:57:18',179,1),(10,'2.8','Add uri field to process','SQL','V2_8__Add_uri_field_to_process.sql',-227692621,'kitodo','2022-02-02 10:57:18',185,1),(11,'2.9','Move user property to filter table','SQL','V2_9__Move_user_property_to_filter_table.sql',-2029373619,'kitodo','2022-02-02 10:57:20',1627,1),(12,'2.10','Change visible from varchar to tinyint','SQL','V2_10__Change_visible_from_varchar_to_tinyint.sql',-2037286993,'kitodo','2022-02-02 10:57:20',250,1),(13,'2.11','Remove script columns from task table','SQL','V2_11__Remove_script_columns_from_task_table.sql',653887945,'kitodo','2022-02-02 10:57:20',174,1),(14,'2.12','Convert encoding of tables to utf8','SQL','V2_12__Convert_encoding_of_tables_to_utf8.sql',-1434370806,'kitodo','2022-02-02 10:57:24',3384,1),(15,'2.13','Set css values of users to null','SQL','V2_13__Set_css_values_of_users_to_null.sql',-1595856457,'kitodo','2022-02-02 10:57:24',5,1),(16,'2.14','Remove module from task','SQL','V2_14__Remove_module_from_task.sql',-2077041126,'kitodo','2022-02-02 10:57:24',561,1),(17,'2.15','Remove plugins from task','SQL','V2_15__Remove_plugins_from_task.sql',-1210428766,'kitodo','2022-02-02 10:57:25',314,1),(18,'2.16','Rename and remove columns in task','SQL','V2_16__Rename_and_remove_columns_in_task.sql',2143230672,'kitodo','2022-02-02 10:57:25',249,1),(19,'2.17','Add authorization table','SQL','V2_17__Add_authorization_table.sql',1341768269,'kitodo','2022-02-02 10:57:26',877,1),(20,'2.18','Change process id to not null for template','SQL','V2_18__Change_process_id_to_not_null_for_template.sql',-1132392981,'kitodo','2022-02-02 10:57:26',269,1),(21,'2.19','Set properies to unique not null','SQL','V2_19__Set_properies_to_unique_not_null.sql',-163526521,'kitodo','2022-02-02 10:57:27',713,1),(22,'2.20','Simplify properties','SQL','V2_20__Simplify_properties.sql',-1094690472,'kitodo','2022-02-02 10:57:28',1271,1),(23,'2.21','Remove container column from property table','SQL','V2_21__Remove_container_column_from_property_table.sql',-1630933214,'kitodo','2022-02-02 10:57:28',133,1),(24,'2.22','Add ldapServer table','SQL','V2_22__Add_ldapServer_table.sql',-1454346803,'kitodo','2022-02-02 10:57:29',252,1),(25,'2.23','Rename authorization add client project relation','SQL','V2_23__Rename_authorization_add_client_project_relation.sql',-219677408,'kitodo','2022-02-02 10:57:31',2152,1),(26,'2.24','Add assignable columns to authority table','SQL','V2_24__Add_assignable_columns_to_authority_table.sql',-1871778020,'kitodo','2022-02-02 10:57:31',25,1),(27,'2.25','Remove history table','SQL','V2_25__Remove_history_table.sql',630878678,'kitodo','2022-02-02 10:57:31',46,1),(28,'2.26','Add first authorities','SQL','V2_26__Add_first_authorities.sql',-1054939046,'kitodo','2022-02-02 10:57:31',52,1),(29,'2.27','Replace project archived with active','SQL','V2_27__Replace_project_archived_with_active.sql',-122579497,'kitodo','2022-02-02 10:57:31',17,1),(30,'2.28','Remove permission column from userGroup add authorities','SQL','V2_28__Remove_permission_column_from_userGroup_add_authorities.sql',232093684,'kitodo','2022-02-02 10:57:31',158,1),(31,'2.29','Split processes and templates','SQL','V2_29__Split_processes_and_templates.sql',-1124676778,'kitodo','2022-02-02 10:57:33',2110,1),(32,'2.30','Remove template column from process','SQL','V2_30__Remove_template_column_from_process.sql',-760773527,'kitodo','2022-02-02 10:57:34',169,1),(33,'2.31','Remove session timeout in user table','SQL','V2_31__Remove_session_timeout_in_user_table.sql',-131626747,'kitodo','2022-02-02 10:57:34',145,1),(34,'2.32','Add workflow table','SQL','V2_32__Add_workflow_table.sql',-393715476,'kitodo','2022-02-02 10:57:34',320,1),(35,'2.33','Add workflowId column to task table','SQL','V2_33__Add_workflowId_column_to_task_table.sql',-1650737766,'kitodo','2022-02-02 10:57:34',19,1),(36,'2.34','Add authorities','SQL','V2_34__Add_authorities.sql',-600235642,'kitodo','2022-02-02 10:57:34',7,1),(37,'2.35','Add flags for workflow','SQL','V2_35__Add_flags_for_workflow.sql',829804577,'kitodo','2022-02-02 10:57:34',25,1),(38,'2.36','Add active flags to docket ruleset workflow','SQL','V2_36__Add_active_flags_to_docket_ruleset_workflow.sql',1219224149,'kitodo','2022-02-02 10:57:34',42,1),(39,'2.37','Add indexAction to workflow table','SQL','V2_37__Add_indexAction_to_workflow_table.sql',1071486182,'kitodo','2022-02-02 10:57:34',21,1),(40,'2.38','Add client column to docket and ruleset','SQL','V2_38__Add_client_column_to_docket_and_ruleset.sql',-675462076,'kitodo','2022-02-02 10:57:35',377,1),(41,'2.39','Add language column to user table','SQL','V2_39__Add_language_column_to_user_table.sql',-1292882401,'kitodo','2022-02-02 10:57:35',13,1),(42,'2.40','Change projectfilegroup to folder','SQL','V2_40__Change_projectfilegroup_to_folder.sql',1467010213,'kitodo','2022-02-02 10:57:36',787,1),(43,'2.41','Add active flag to template','SQL','V2_41__Add_active_flag_to_template.sql',-1657644448,'kitodo','2022-02-02 10:57:36',13,1),(44,'2.42','Change project template to many','SQL','V2_42__Change_project_template_to_many.sql',-377174417,'kitodo','2022-02-02 10:57:36',647,1),(45,'2.43','Add dummy client','SQL','V2_43__Add_dummy_client.sql',-908260322,'kitodo','2022-02-02 10:57:36',194,1),(46,'2.44','Change authority concept','SQL','V2_44__Change_authority_concept.sql',-1884580473,'kitodo','2022-02-02 10:57:37',901,1),(47,'2.45','Add selectable folders to project','SQL','V2_45__Add_selectable_folders_to_project.sql',-293571299,'kitodo','2022-02-02 10:57:38',260,1),(48,'2.46','Increase length of scriptPath','SQL','V2_46__Increase_length_of_scriptPath.sql',176458964,'kitodo','2022-02-02 10:57:38',17,1),(49,'2.47','Remove column outputName','SQL','V2_47__Remove_column_outputName.sql',781566833,'kitodo','2022-02-02 10:57:38',324,1),(50,'2.48','Add first example workflow','SQL','V2_48__Add_first_example_workflow.sql',-1088782537,'kitodo','2022-02-02 10:57:38',1,1),(51,'2.49','Remove css column','SQL','V2_49__Remove_css_column.sql',1579291855,'kitodo','2022-02-02 10:57:38',166,1),(52,'2.50','Add missing rights for workflow','SQL','V2_50__Add_missing_rights_for_workflow.sql',2016906006,'kitodo','2022-02-02 10:57:38',3,1),(53,'2.51','Create table contentFolders task x folder','SQL','V2_51__Create_table_contentFolders_task_x_folder.sql',-1422647784,'kitodo','2022-02-02 10:57:38',116,1),(54,'2.52','Remove importfilebyupload and exportrussian','SQL','V2_52__Remove_importfilebyupload_and_exportrussian.sql',-2092772211,'kitodo','2022-02-02 10:57:39',300,1),(55,'2.53','Add missing authorities','SQL','V2_53__Add_missing_authorities.sql',851537434,'kitodo','2022-02-02 10:57:39',6,1),(56,'2.54','update LDAP Group table','SQL','V2_54__update_LDAP_Group_table.sql',-2050356457,'kitodo','2022-02-02 10:57:39',1,1),(57,'2.55','Create table validationFolders task x folder','SQL','V2_55__Create_table_validationFolders_task_x_folder.sql',681595144,'kitodo','2022-02-02 10:57:39',75,1),(58,'2.56','Add client user group remove user task','SQL','V2_56__Add_client_user_group_remove_user_task.sql',791979796,'kitodo','2022-02-02 10:57:39',540,1),(59,'2.57','Remove project authorities','SQL','V2_57__Remove_project_authorities.sql',605287867,'kitodo','2022-02-02 10:57:40',233,1),(60,'2.58','Change relationship usegroup client and add dumy client to docket ruleset and usergroup','SQL','V2_58__Change_relationship_usegroup_client_and_add_dumy_client_to_docket_ruleset_and_usergroup.sql',348902989,'kitodo','2022-02-02 10:57:40',471,1),(61,'2.59','Change usergroup to role','SQL','V2_59__Change_usergroup_to_role.sql',-1992320266,'kitodo','2022-02-02 10:57:41',1160,1),(62,'2.60','Add client to workflow','SQL','V2_60__Add_client_to_workflow.sql',-1534154878,'kitodo','2022-02-02 10:57:42',241,1),(63,'2.61','Add initial authorties','SQL','V2_61__Add_initial_authorties.sql',1769151973,'kitodo','2022-02-02 10:57:42',61,1),(64,'2.62','Convert encoding of project x template table to utf8','SQL','V2_62__Convert_encoding_of_project_x_template_table_to_utf8.sql',-1380936332,'kitodo','2022-02-02 10:57:42',12,1),(65,'2.63','Add columns for parallel tasks','SQL','V2_63__Add_columns_for_parallel_tasks.sql',1917871253,'kitodo','2022-02-02 10:57:42',23,1),(66,'2.64','Fill values for last and concurrent','SQL','V2_64__Fill_values_for_last_and_concurrent.sql',-1570105798,'kitodo','2022-02-02 10:57:42',2,1),(67,'2.65','Remove wikifield from template','SQL','V2_65__Remove_wikifield_from_template.sql',1893068703,'kitodo','2022-02-02 10:57:42',152,1),(68,'2.66','Remove index column from client user and role','SQL','V2_66__Remove_index_column_from_client_user_and_role.sql',-25533809,'kitodo','2022-02-02 10:57:42',434,1),(69,'2.67','Add workflowcondition table','SQL','V2_67__Add_workflowcondition_table.sql',-1385573588,'kitodo','2022-02-02 10:57:43',523,1),(70,'2.68','Add table for list columns','SQL','V2_68__Add_table_for_list_columns.sql',1266171681,'kitodo','2022-02-02 10:57:43',197,1),(71,'2.69','Remove filename column in workflow and index column in authority','SQL','V2_69__Remove_filename_column_in_workflow_and_index_column_in_authority.sql',1489482844,'kitodo','2022-02-02 10:57:44',353,1),(72,'2.70','Change active and ready to status in workflow','SQL','V2_70__Change_active_and_ready_to_status_in_workflow.sql',814830437,'kitodo','2022-02-02 10:57:44',683,1),(73,'2.71','Update initial roles','SQL','V2_71__Update_initial_roles.sql',-1061746512,'kitodo','2022-02-02 10:57:44',42,1),(74,'2.72','Add client to template','SQL','V2_72__Add_client_to_template.sql',-1991283519,'kitodo','2022-02-02 10:57:45',272,1),(75,'2.73','Add autohrities for authorities management','SQL','V2_73__Add_autohrities_for_authorities_management.sql',-1673949233,'kitodo','2022-02-02 10:57:45',5,1),(76,'2.74','Add repeatOnCorrection to task table','SQL','V2_74__Add_repeatOnCorrection_to_task_table.sql',616175597,'kitodo','2022-02-02 10:57:45',12,1),(77,'2.75','Add comment table','SQL','V2_75__Add_comment_table.sql',-303023255,'kitodo','2022-02-02 10:57:45',91,1),(78,'2.76','Add exportprocess authority','SQL','V2_76__Add_exportprocess_authority.sql',1244739167,'kitodo','2022-02-02 10:57:45',2,1),(79,'2.77','Add task list columns','SQL','V2_77__Add_task_list_columns.sql',1520760884,'kitodo','2022-02-02 10:57:45',1,1),(80,'2.78','Add hierarchy columns to process','SQL','V2_78__Add_hierarchy_columns_to_process.sql',98312668,'kitodo','2022-02-02 10:57:45',257,1),(81,'2.79','Increase comment message size','SQL','V2_79__Increase_comment_message_size.sql',-692515316,'kitodo','2022-02-02 10:57:45',214,1),(82,'2.80','Replace priority with correction','SQL','V2_80__Replace_priority_with_correction.sql',-788794095,'kitodo','2022-02-02 10:57:45',179,1),(83,'2.81','Remove unique from role title','SQL','V2_81__Remove_unique_from_role_title.sql',-165176391,'kitodo','2022-02-02 10:57:46',42,1),(84,'2.82','Remove obsolete project fields','SQL','V2_82__Remove_obsolete_project_fields.sql',1342021972,'kitodo','2022-02-02 10:57:47',1075,1),(85,'2.83','Remove unique from project title','SQL','V2_83__Remove_unique_from_project_title.sql',352420284,'kitodo','2022-02-02 10:57:47',37,1),(86,'2.84','Add separateStructure to task table','SQL','V2_84__Add_separateStructure_to_task_table.sql',-1931580638,'kitodo','2022-02-02 10:57:47',17,1),(87,'2.85','Add images properties to task table','SQL','V2_85__Add_images_properties_to_task_table.sql',431938112,'kitodo','2022-02-02 10:57:47',20,1),(88,'2.86','Add validateFolder to folder table','SQL','V2_86__Add_validateFolder_to_folder_table.sql',-2086118568,'kitodo','2022-02-02 10:57:47',10,1),(89,'2.87','Delete contentFolders and validationFolders','SQL','V2_87__Delete_contentFolders_and_validationFolders.sql',2012537538,'kitodo','2022-02-02 10:57:47',86,1),(90,'2.88','Add Database statistics authority and role','SQL','V2_88__Add_Database_statistics_authority_and_role.sql',-135524572,'kitodo','2022-02-02 10:57:47',1,1),(91,'2.89','Remove dms import timeout','SQL','V2_89__Remove_dms_import_timeout.sql',-224511192,'kitodo','2022-02-02 10:57:47',162,1),(92,'2.90','Delete templates','SQL','V2_90__Delete_templates.sql',-1593547779,'kitodo','2022-02-02 10:57:47',295,1),(93,'2.91','Add exported flag','SQL','V2_91__Add_exported_flag.sql',831080754,'kitodo','2022-02-02 10:57:47',10,1),(94,'2.92','Remove unused columns from project','SQL','V2_92__Remove_unused_columns_from_project.sql',1509577098,'kitodo','2022-02-02 10:57:48',183,1),(95,'2.93','Change URI to String','SQL','V2_93__Change_URI_to_String.sql',1681987630,'kitodo','2022-02-02 10:57:48',225,1),(96,'2.94','Add correctionMessage list columns','SQL','V2_94__Add_correctionMessage_list_columns.sql',2133571698,'kitodo','2022-02-02 10:57:48',1,1),(97,'2.95','Add list column for process id','SQL','V2_95__Add_list_column_for_process_id.sql',1750635005,'kitodo','2022-02-02 10:57:48',1,1),(98,'2.96','Remove format columns from project','SQL','V2_96__Remove_format_columns_from_project.sql',812344874,'kitodo','2022-02-02 10:57:48',158,1),(99,'2.97','Add columns for last processed task','SQL','V2_97__Add_columns_for_last_processed_task.sql',-1426795086,'kitodo','2022-02-02 10:57:48',41,1),(100,'2.98','Add user shortcuts','SQL','V2_98__Add_user_shortcuts.sql',-1121124039,'kitodo','2022-02-02 10:57:48',20,1),(101,'2.99','Set booleans not null','SQL','V2_99__Set_booleans_not_null.sql',-700835014,'kitodo','2022-02-02 10:57:49',1196,1),(102,'2.100','Add authorities for system page tabs','SQL','V2_100__Add_authorities_for_system_page_tabs.sql',-1211298404,'kitodo','2022-02-02 10:57:49',2,1),(103,'2.101','Add table for metadataeditor settings','SQL','V2_101__Add_table_for_metadataeditor_settings.sql',-804651963,'kitodo','2022-02-02 10:57:50',84,1),(104,'2.102','Add Authorities for unassign tasks','SQL','V2_102__Add_Authorities_for_unassign_tasks.sql',382647082,'kitodo','2022-02-02 10:57:50',3,1),(105,'2.103','Rename list column user active to logged in','SQL','V2_103__Rename_list_column_user_active_to_logged_in.sql',-780481765,'kitodo','2022-02-02 10:57:50',4,1),(106,'2.104','Move separateStructure to workflow','SQL','V2_104__Move_separateStructure_to_workflow.sql',-899238404,'kitodo','2022-02-02 10:57:50',183,1),(107,'2.105','Fixes #3998','SQL','V2_105__Fixes_#3998.sql',717475100,'kitodo','2022-02-02 10:57:50',193,1),(108,'2.106','Remove inChoiceListShown column from templates','SQL','V2_106__Remove_inChoiceListShown_column_from_templates.sql',-466236680,'kitodo','2022-02-02 10:57:50',177,1),(109,'2.107','Add authorities for upload and delete media','SQL','V2_107__Add_authorities_for_upload_and_delete_media.sql',-1919067915,'kitodo','2022-02-02 10:57:50',2,1),(110,'2.108','Add authority to run Kitodo Scripts','SQL','V2_108__Add_authority_to_run_Kitodo_Scripts.sql',832272565,'kitodo','2022-02-02 10:57:50',1,1);
/*!40000 ALTER TABLE `flyway_schema_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folder`
--

DROP TABLE IF EXISTS `folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileGroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'USE attribute for METS fileGroup',
  `urlStructure` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Path where the folder is published on a web server',
  `mimeType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Path to the folder relative to the process directory, may contain variables',
  `project_id` int(11) DEFAULT NULL,
  `copyFolder` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'whether the folder is copied during export',
  `createFolder` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'whether the folder is created with a new process',
  `derivative` double DEFAULT NULL COMMENT 'the percentage of scaling for createDerivative()',
  `dpi` int(11) DEFAULT NULL COMMENT 'the new DPI for changeDpi()',
  `imageScale` double DEFAULT NULL COMMENT 'the percentage of scaling for getScaledWebImage()',
  `imageSize` int(11) DEFAULT NULL COMMENT 'the new width in pixels for getSizedWebImage()',
  `linkingMode` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ALL' COMMENT 'how to link the contents in a METS fileGrp',
  `validateFolder` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `FK_ProjekteID` (`project_id`),
  CONSTRAINT `FK_folder_project_id` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  CONSTRAINT `CK_folder_linkingMode` CHECK (`linkingMode` in ('ALL','EXISTING','NO','PREVIEW_IMAGE'))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folder`
--

LOCK TABLES `folder` WRITE;
/*!40000 ALTER TABLE `folder` DISABLE KEYS */;
INSERT INTO `folder` VALUES (1,'MAX','http://www.example.com/content/$(meta.CatalogIDDigital)/jpgs/max/','image/jpeg','jpgs/max',1,1,1,NULL,NULL,NULL,NULL,'ALL',1),(2,'DEFAULT','http://www.example.com/content/$(meta.CatalogIDDigital)/jpgs/default/','image/jpeg','jpgs/default',1,1,1,NULL,NULL,NULL,NULL,'ALL',1),(3,'THUMBS','http://www.example.com/content/$(meta.CatalogIDDigital)/jpgs/thumbs/','image/jpeg','jpgs/thumbs',1,1,1,NULL,NULL,NULL,NULL,'ALL',1),(4,'FULLTEXT','http://www.example.com/content/$(meta.CatalogIDDigital)/ocr/alto/','application/alto+xml','ocr/alto',1,1,1,NULL,NULL,NULL,NULL,'ALL',1),(5,'DOWNLOAD','http://www.example.com/content/$(meta.CatalogIDDigital)/pdf/','application/pdf','pdf',1,1,1,NULL,NULL,NULL,NULL,'ALL',1),(6,'LOCAL','','image/tiff','images/(processtitle)_tif',1,0,1,NULL,NULL,NULL,NULL,'NO',1);
/*!40000 ALTER TABLE `folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldapgroup`
--

DROP TABLE IF EXISTS `ldapgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldapgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homeDirectory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gidNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userDn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `objectClasses` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sambaSid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gecos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loginShell` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sambaAcctFlags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sambaLogonScript` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sambaPrimaryGroupSid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sambaPasswordMustChange` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sambaPasswordHistory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sambaLogonHours` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sambaKickoffTime` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldapserver_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ldapGroup_ldapServer_id` (`ldapserver_id`),
  CONSTRAINT `FK_ldapGroup_ldapServer_id` FOREIGN KEY (`ldapserver_id`) REFERENCES `ldapserver` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldapgroup`
--

LOCK TABLES `ldapgroup` WRITE;
/*!40000 ALTER TABLE `ldapgroup` DISABLE KEYS */;
INSERT INTO `ldapgroup` VALUES (2,'Local LDAP','/usr/local/kitodo/users/{login}','100','cn={login},ou=users,dc=nodomain','top,inetOrgPerson,posixAccount,shadowAccount,sambaSamAccount','S-1-5-21-1234567890-123456789-1234567890-{uidnumber*2+1001}','{login}','{login}','Exemplary configuration of an LDAP group','{user full name}','{user full name}','/bin/false','[U          ]','_{login}.bat','S-1-5-21-1234567890-123456789-1234567890-1000','2147483647','00000000000000000000000000000000000000','FFFFFFFFFFFFFFFFFFFF','0',NULL);
/*!40000 ALTER TABLE `ldapgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldapserver`
--

DROP TABLE IF EXISTS `ldapserver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldapserver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `managerLogin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `managerPassword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nextFreeUnixIdPattern` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useSsl` tinyint(1) NOT NULL DEFAULT 0,
  `readOnly` tinyint(1) NOT NULL DEFAULT 0,
  `passwordEncryption` int(11) NOT NULL DEFAULT 0,
  `rootCertificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdcCertificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keystore` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keystorePassword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldapserver`
--

LOCK TABLES `ldapserver` WRITE;
/*!40000 ALTER TABLE `ldapserver` DISABLE KEYS */;
/*!40000 ALTER TABLE `ldapserver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listcolumn`
--

DROP TABLE IF EXISTS `listcolumn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listcolumn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listcolumn`
--

LOCK TABLES `listcolumn` WRITE;
/*!40000 ALTER TABLE `listcolumn` DISABLE KEYS */;
INSERT INTO `listcolumn` VALUES (1,'project.title',0),(2,'project.metsRightsOwner',0),(3,'project.active',0),(4,'template.title',0),(5,'template.ruleset',0),(6,'workflow.title',0),(7,'workflow.filename',0),(8,'workflow.status',0),(10,'docket.title',0),(11,'docket.filename',0),(12,'ruleset.title',0),(13,'ruleset.filename',0),(14,'ruleset.sorting',0),(15,'task.title',0),(16,'task.process',0),(17,'task.project',0),(18,'task.state',0),(19,'process.title',0),(20,'process.state',0),(21,'process.project',0),(22,'user.username',0),(23,'user.location',0),(24,'user.roles',0),(25,'user.clients',0),(26,'user.projects',0),(27,'user.loggedIn',0),(28,'role.role',0),(29,'role.client',0),(30,'client.client',0),(31,'ldapgroup.ldapgroup',0),(32,'ldapgroup.home_directory',0),(33,'ldapgroup.gidNumber',0),(34,'task.priority',0),(35,'task.duration',0),(36,'process.duration',0),(37,'process.correctionMessage',0),(38,'task.correctionMessage',0),(39,'task.processId',0),(40,'process.lastEditingUser',0),(41,'process.processingBeginLastTask',0),(42,'process.processingEndLastTask',0),(43,'task.lastEditingUser',0),(44,'task.processingBegin',0),(45,'task.processingEnd',0);
/*!40000 ALTER TABLE `listcolumn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `process`
--

DROP TABLE IF EXISTS `process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `process` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inChoiceListShown` tinyint(1) NOT NULL DEFAULT 0,
  `sortHelperStatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sortHelperImages` int(11) DEFAULT NULL,
  `sortHelperArticles` int(11) DEFAULT NULL,
  `sortHelperDocstructs` int(11) DEFAULT NULL,
  `sortHelperMetadata` int(11) DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `wikiField` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `ruleset_id` int(11) DEFAULT NULL,
  `docket_id` int(11) DEFAULT NULL,
  `indexAction` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processBaseUri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `ordering` int(6) DEFAULT NULL,
  `exported` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_ProjekteID` (`project_id`),
  KEY `FK_MetadatenKonfigurationID` (`ruleset_id`),
  KEY `FK_DocketID` (`docket_id`),
  KEY `FK_process_template_id` (`template_id`),
  KEY `FK_process_parent_id` (`parent_id`),
  CONSTRAINT `FK_process_docket_id` FOREIGN KEY (`docket_id`) REFERENCES `docket` (`id`),
  CONSTRAINT `FK_process_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `process` (`id`),
  CONSTRAINT `FK_process_project_id` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  CONSTRAINT `FK_process_ruleset_id` FOREIGN KEY (`ruleset_id`) REFERENCES `ruleset` (`id`),
  CONSTRAINT `FK_process_template_id` FOREIGN KEY (`template_id`) REFERENCES `template` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process`
--

LOCK TABLES `process` WRITE;
/*!40000 ALTER TABLE `process` DISABLE KEYS */;
INSERT INTO `process` VALUES (2,'Script_Process',0,'000000100000',0,0,0,0,'2022-02-02 11:05:19','',1,2,1,'DONE','2/',1,NULL,NULL,0);
/*!40000 ALTER TABLE `process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `process_x_property`
--

DROP TABLE IF EXISTS `process_x_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `process_x_property` (
  `process_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  KEY `FK_process_x_property_process_id` (`process_id`),
  KEY `FK_process_x_property_property_id` (`property_id`),
  CONSTRAINT `FK_process_x_property_process_id` FOREIGN KEY (`process_id`) REFERENCES `process` (`id`),
  CONSTRAINT `FK_process_x_property_property_id` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process_x_property`
--

LOCK TABLES `process_x_property` WRITE;
/*!40000 ALTER TABLE `process_x_property` DISABLE KEYS */;
INSERT INTO `process_x_property` VALUES (2,1),(2,2);
/*!40000 ALTER TABLE `process_x_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dmsImportRootPath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metsRightsOwner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metsRightsOwnerLogo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metsRightsOwnerSite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metsRightsOwnerMail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metsDigiprovReference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metsDigiprovPresentation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metsPointerPath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metsPurl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metsContentId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `numberOfPages` int(11) DEFAULT NULL,
  `numberOfVolumes` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `indexAction` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `generatorSource_folder_id` int(11) DEFAULT NULL COMMENT 'folder with templates to create derived media from',
  `mediaView_folder_id` int(11) DEFAULT NULL COMMENT 'media to use for single medium view',
  `preview_folder_id` int(11) DEFAULT NULL COMMENT 'media to use for gallery preview',
  PRIMARY KEY (`id`),
  KEY `FK_project_client_id` (`client_id`),
  KEY `CK_project_generatorSource_folder_id` (`generatorSource_folder_id`),
  KEY `CK_project_mediaView_folder_id` (`mediaView_folder_id`),
  KEY `CK_project_preview_folder_id` (`preview_folder_id`),
  CONSTRAINT `CK_project_generatorSource_folder_id` FOREIGN KEY (`generatorSource_folder_id`) REFERENCES `folder` (`id`),
  CONSTRAINT `CK_project_mediaView_folder_id` FOREIGN KEY (`mediaView_folder_id`) REFERENCES `folder` (`id`),
  CONSTRAINT `CK_project_preview_folder_id` FOREIGN KEY (`preview_folder_id`) REFERENCES `folder` (`id`),
  CONSTRAINT `FK_project_client_id` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'Example Project','/usr/local/kitodo/hotfolder/','Digital Library Kitodo','http://www.example.com/fileadmin/groups/kitodo/Logo/kitodo_logo_rgb.png','http://www.example.com','info@kitodo.org','http://www.example.com/DB=1/PPN?PPN=$(meta.topstruct.CatalogIDDigital)','http://www.example.com/resolver?id=$(meta.topstruct.CatalogIDDigital)','http://www.example.com/content/$(meta.CatalogIDDigital)/$(meta.topstruct.CatalogIDDigital).xml','http://www.example.com/resolver?id=$(meta.CatalogIDDigital)','','2016-01-01 00:00:00','2019-12-31 00:00:00',0,0,1,'DONE',1,6,1,3);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_x_template`
--

DROP TABLE IF EXISTS `project_x_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_x_template` (
  `project_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  KEY `FK_project_x_template_project_id` (`project_id`),
  KEY `FK_project_x_template_template_id` (`template_id`),
  CONSTRAINT `FK_project_x_template_project_id` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  CONSTRAINT `FK_project_x_template_template_id` FOREIGN KEY (`template_id`) REFERENCES `template` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_x_template`
--

LOCK TABLES `project_x_template` WRITE;
/*!40000 ALTER TABLE `project_x_template` DISABLE KEYS */;
INSERT INTO `project_x_template` VALUES (1,1);
/*!40000 ALTER TABLE `project_x_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_x_user`
--

DROP TABLE IF EXISTS `project_x_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_x_user` (
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`project_id`),
  KEY `FK_ProjekteID` (`project_id`),
  KEY `FK_BenutzerID` (`user_id`),
  CONSTRAINT `FK_project_x_user_project_id` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  CONSTRAINT `FK_project_x_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_x_user`
--

LOCK TABLES `project_x_user` WRITE;
/*!40000 ALTER TABLE `project_x_user` DISABLE KEYS */;
INSERT INTO `project_x_user` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1);
/*!40000 ALTER TABLE `project_x_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `obligatory` tinyint(1) NOT NULL DEFAULT 0,
  `dataType` int(11) DEFAULT NULL,
  `choice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `indexAction` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,'Template','Script_Template',0,5,NULL,'2022-02-02 11:06:04',NULL),(2,'TemplateID','1',0,5,NULL,'2022-02-02 11:06:04',NULL),(3,'Sprache','ger',0,5,NULL,'2022-02-02 11:06:04',NULL),(4,'HauptTitel','Puppenfee',0,5,NULL,'2022-02-02 11:06:04',NULL),(5,'Ausmaße/Dimension (Quelle)','25 Seiten überwiegend Illustriert 300 mm x 240 mm 1 CD',0,5,NULL,'2022-02-02 11:06:04',NULL),(6,'Erscheinungsort','BerlinBetz2015',0,5,NULL,'2022-02-02 11:06:04',NULL),(7,'UnterTitel','das Ballett nach Josef Bayer',0,5,NULL,'2022-02-02 11:06:04',NULL),(8,'erstes Erscheinungsjahr','1505',0,5,NULL,'2022-02-02 11:06:04',NULL),(9,'Person','DumasKristina',0,5,NULL,'2022-02-02 11:06:04',NULL),(10,'Person','BayerJosef',0,5,NULL,'2022-02-02 11:06:04',NULL),(11,'Person','BogadeMaria',0,5,NULL,'2022-02-02 11:06:04',NULL),(12,'PPN (digital)','825772478',0,5,NULL,'2022-02-02 11:06:04',NULL),(13,'Besitzer','SBB-PK Berlin <1+1A>',0,5,NULL,'2022-02-02 11:06:04',NULL),(14,'Digitale Kollektion','eins',0,5,NULL,'2022-02-02 11:06:04',NULL),(15,'Link zum rezensierten Werk','http://deposit.d-nb.de/cgi-bin/dokserv?id=5250847&prov=M&dok_var=1&dok_ext=htm',0,5,NULL,'2022-02-02 11:06:04',NULL),(16,'docType','Monograph',0,5,NULL,'2022-02-02 11:06:04',NULL),(17,'slub_linktext','Katalognachweis',0,5,NULL,'2022-02-02 11:06:04',NULL),(18,'DocType','PeriodicalVolume',0,5,NULL,'2022-02-02 11:06:04',NULL),(19,'TifHeaderImagedescription','',0,5,NULL,'2022-02-02 11:06:04',NULL),(20,'TifHeaderDocumentname','Script_Process',0,5,NULL,'2022-02-02 11:06:04',NULL);
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_role_client_id` (`client_id`),
  CONSTRAINT `FK_role_client_id` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Administration',1),(2,'Scanning',1),(3,'QualityControl',1),(4,'Imaging',1),(5,'Metadata',1),(6,'Projectmanagement',1),(8,'ClientManagement',1),(9,'RoleManagement',1),(10,'UserManagement',1),(11,'ProcessManagement',1),(15,'ConfigureColumns',1),(16,'WorkflowManagement',1),(17,'DatabaseStatistic',1);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_x_authority`
--

DROP TABLE IF EXISTS `role_x_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_x_authority` (
  `role_id` int(11) NOT NULL,
  `authority_id` int(11) NOT NULL,
  PRIMARY KEY (`authority_id`,`role_id`),
  KEY `FK_userGroup_x_authority_userGroup_id` (`role_id`),
  CONSTRAINT `FK_role_x_authority_authority_id` FOREIGN KEY (`authority_id`) REFERENCES `authority` (`id`),
  CONSTRAINT `FK_role_x_authority_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_x_authority`
--

LOCK TABLES `role_x_authority` WRITE;
/*!40000 ALTER TABLE `role_x_authority` DISABLE KEYS */;
INSERT INTO `role_x_authority` VALUES (1,2),(8,2),(1,3),(8,3),(1,4),(8,4),(1,5),(8,5),(1,6),(8,6),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(8,27),(1,28),(8,28),(1,29),(8,29),(1,30),(8,30),(1,31),(8,31),(1,32),(8,32),(1,33),(8,33),(1,34),(8,34),(1,35),(8,35),(1,36),(8,36),(1,42),(1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,50),(1,51),(1,52),(1,53),(1,54),(1,55),(1,56),(1,57),(1,58),(1,59),(1,60),(1,61),(1,62),(1,63),(1,64),(6,64),(1,65),(6,65),(11,65),(1,66),(6,66),(1,67),(6,67),(1,68),(6,68),(1,71),(6,71),(16,71),(1,72),(6,72),(16,72),(1,73),(16,73),(1,74),(16,74),(1,75),(16,75),(1,76),(6,76),(16,76),(1,77),(6,77),(16,77),(1,78),(16,78),(1,79),(16,79),(1,80),(16,80),(1,81),(2,81),(5,81),(11,81),(1,82),(2,82),(5,82),(11,82),(1,83),(11,83),(1,84),(11,84),(1,85),(11,85),(1,91),(5,91),(1,92),(5,92),(1,93),(5,93),(1,94),(2,94),(1,95),(5,95),(1,96),(5,96),(1,97),(5,97),(1,98),(2,98),(5,98),(1,107),(1,108),(1,109),(1,110),(1,111),(1,117),(9,117),(10,117),(1,118),(9,118),(10,118),(1,119),(9,119),(1,120),(9,120),(1,121),(9,121),(1,122),(10,122),(1,123),(10,123),(1,124),(10,124),(1,125),(10,125),(1,126),(10,126),(1,131),(6,131),(16,131),(1,132),(6,132),(16,132),(1,133),(16,133),(1,134),(16,134),(1,140),(16,140),(1,141),(1,147),(1,148),(1,149),(1,150),(1,151),(1,157),(6,157),(16,157),(1,158),(6,158),(11,158),(16,158),(1,159),(16,159),(1,160),(16,160),(1,161),(16,161),(1,162),(1,163),(1,164),(1,165),(1,166),(1,167),(1,168),(1,169),(1,170),(15,170),(1,171),(15,171),(1,172),(1,173),(1,174),(1,175),(1,177),(1,178),(17,178),(1,179),(1,180),(1,181),(1,182),(1,183),(1,184),(1,185),(1,186),(1,187),(1,188);
/*!40000 ALTER TABLE `role_x_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruleset`
--

DROP TABLE IF EXISTS `ruleset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ruleset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderMetadataByRuleset` tinyint(1) NOT NULL DEFAULT 1,
  `indexAction` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ruleset_client_id` (`client_id`),
  CONSTRAINT `FK_ruleset_client_id` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruleset`
--

LOCK TABLES `ruleset` WRITE;
/*!40000 ALTER TABLE `ruleset` DISABLE KEYS */;
INSERT INTO `ruleset` VALUES (1,'Simple book','simple-book.xml',0,'DONE',1,1),(2,'SUBHH','subhh.xml',0,'DONE',1,1),(3,'DFG-Viewer','dfg-viewer.xml',0,'DONE',1,1);
/*!40000 ALTER TABLE `ruleset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `processingStatus` int(11) DEFAULT NULL,
  `editType` int(11) DEFAULT NULL,
  `processingTime` datetime DEFAULT NULL,
  `processingBegin` datetime DEFAULT NULL,
  `processingEnd` datetime DEFAULT NULL,
  `homeDirectory` smallint(6) DEFAULT NULL,
  `typeMetadata` tinyint(1) NOT NULL DEFAULT 0,
  `typeAutomatic` tinyint(1) NOT NULL DEFAULT 0,
  `typeImagesRead` tinyint(1) NOT NULL DEFAULT 0,
  `typeImagesWrite` tinyint(1) NOT NULL DEFAULT 0,
  `typeExportDms` tinyint(1) NOT NULL DEFAULT 0,
  `typeAcceptClose` tinyint(1) NOT NULL DEFAULT 0,
  `scriptName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scriptPath` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `typeCloseVerify` tinyint(1) NOT NULL DEFAULT 0,
  `batchStep` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(11) DEFAULT NULL COMMENT 'This field contains information about user, which works on this task.',
  `process_id` int(11) DEFAULT NULL,
  `indexAction` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `workflowCondition_id` int(11) DEFAULT NULL,
  `workflowId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `concurrent` tinyint(1) NOT NULL DEFAULT 0,
  `last` tinyint(1) NOT NULL DEFAULT 0,
  `repeatOnCorrection` tinyint(1) DEFAULT 0,
  `correction` tinyint(1) NOT NULL DEFAULT 0,
  `typeGenerateImages` tinyint(1) NOT NULL DEFAULT 0,
  `typeValidateImages` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_ProzesseID` (`process_id`),
  KEY `FK_BearbeitungsBenutzerID` (`user_id`),
  KEY `FK_task_template_id` (`template_id`),
  KEY `FK_task_workflowCondition_workflowCondition_id` (`workflowCondition_id`),
  CONSTRAINT `FK_task_process_id` FOREIGN KEY (`process_id`) REFERENCES `process` (`id`),
  CONSTRAINT `FK_task_template_id` FOREIGN KEY (`template_id`) REFERENCES `template` (`id`),
  CONSTRAINT `FK_task_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_task_workflowCondition_workflowCondition_id` FOREIGN KEY (`workflowCondition_id`) REFERENCES `workflowcondition` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (5,'Script',1,1,4,'2022-02-02 11:04:49',NULL,NULL,0,1,0,1,1,0,0,'testscript','/usr/local/kitodo/scripts/testscript.sh (processid)',0,0,NULL,NULL,'DONE',1,NULL,'Task_0i1d0ke',0,1,0,0,0,0),(6,'Script',1,2,1,'2022-02-02 11:06:22','2022-02-02 11:06:22',NULL,0,1,0,1,1,0,0,'testscript','/usr/local/kitodo/scripts/testscript.sh (processid)',0,0,1,2,'DONE',NULL,NULL,'Task_0i1d0ke',0,1,0,0,0,0);
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_x_role`
--

DROP TABLE IF EXISTS `task_x_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_x_role` (
  `role_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  PRIMARY KEY (`task_id`,`role_id`),
  KEY `FK_SchritteID` (`task_id`),
  KEY `FK_BenutzerGruppenID` (`role_id`),
  CONSTRAINT `FK_task_x_role_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FK_task_x_role_task_id` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_x_role`
--

LOCK TABLES `task_x_role` WRITE;
/*!40000 ALTER TABLE `task_x_role` DISABLE KEYS */;
INSERT INTO `task_x_role` VALUES (1,5),(1,6);
/*!40000 ALTER TABLE `task_x_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template`
--

DROP TABLE IF EXISTS `template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `sortHelperStatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ruleset_id` int(11) DEFAULT NULL,
  `docket_id` int(11) DEFAULT NULL,
  `indexAction` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workflow_id` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_template_ruleset_id` (`ruleset_id`),
  KEY `FK_template_docket_id` (`docket_id`),
  KEY `FK_template_workflow_id` (`workflow_id`),
  KEY `FK_template_client_id` (`client_id`),
  CONSTRAINT `FK_template_client_id` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  CONSTRAINT `FK_template_docket_id` FOREIGN KEY (`docket_id`) REFERENCES `docket` (`id`),
  CONSTRAINT `FK_template_ruleset_id` FOREIGN KEY (`ruleset_id`) REFERENCES `ruleset` (`id`),
  CONSTRAINT `FK_template_workflow_id` FOREIGN KEY (`workflow_id`) REFERENCES `workflow` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template`
--

LOCK TABLES `template` WRITE;
/*!40000 ALTER TABLE `template` DISABLE KEYS */;
INSERT INTO `template` VALUES (1,'Script_Template','2022-02-02 11:04:28',NULL,2,1,'DONE',2,1,1);
/*!40000 ALTER TABLE `template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_x_property`
--

DROP TABLE IF EXISTS `template_x_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_x_property` (
  `process_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  KEY `FK_template_x_property_template_id` (`process_id`),
  KEY `FK_template_x_property_property_id` (`property_id`),
  CONSTRAINT `FK_template_x_property_property_id` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`),
  CONSTRAINT `FK_template_x_property_template_id` FOREIGN KEY (`process_id`) REFERENCES `process` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_x_property`
--

LOCK TABLES `template_x_property` WRITE;
/*!40000 ALTER TABLE `template_x_property` DISABLE KEYS */;
INSERT INTO `template_x_property` VALUES (2,3),(2,4),(2,5),(2,6),(2,7),(2,8);
/*!40000 ALTER TABLE `template_x_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldapLogin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `deleted` tinyint(1) NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadataLanguage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `withMassDownload` tinyint(1) NOT NULL DEFAULT 0,
  `configProductionDateShow` tinyint(1) NOT NULL DEFAULT 0,
  `tableSize` int(11) DEFAULT NULL,
  `ldapGroup_id` int(11) DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'de',
  `shortcuts` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT '{"detailView":"Control Shift BracketRight","help":"Shift Minus","nextItem":"Control ArrowDown","nextItemMulti":"Control Shift ArrowDown","previousItem":"Control ArrowUp","previousItemMulti":"Control Shift ArrowUp","structuredView":"Control Shift Slash"}',
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`),
  KEY `FK_LdapgruppenID` (`ldapGroup_id`),
  CONSTRAINT `FK_user_ldapGroup_id` FOREIGN KEY (`ldapGroup_id`) REFERENCES `ldapgroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'test','Admin','testAdmin',NULL,'OvEJ00yyYZQ=',1,0,'Göttingen','de',0,0,10,NULL,'de','{\"detailView\":\"Control Shift BracketRight\",\"help\":\"Shift Minus\",\"nextItem\":\"Control ArrowDown\",\"nextItemMulti\":\"Control Shift ArrowDown\",\"previousItem\":\"Control ArrowUp\",\"previousItemMulti\":\"Control Shift ArrowUp\",\"structuredView\":\"Control Shift Slash\"}'),(2,'test','Scanning','testScanning',NULL,'OvEJ00yyYZQ=',1,0,'Göttingen','de',0,0,10,NULL,'de','{\"detailView\":\"Control Shift BracketRight\",\"help\":\"Shift Minus\",\"nextItem\":\"Control ArrowDown\",\"nextItemMulti\":\"Control Shift ArrowDown\",\"previousItem\":\"Control ArrowUp\",\"previousItemMulti\":\"Control Shift ArrowUp\",\"structuredView\":\"Control Shift Slash\"}'),(3,'test','QC','testQC',NULL,'OvEJ00yyYZQ=',1,0,'Göttingen','de',0,0,10,NULL,'de','{\"detailView\":\"Control Shift BracketRight\",\"help\":\"Shift Minus\",\"nextItem\":\"Control ArrowDown\",\"nextItemMulti\":\"Control Shift ArrowDown\",\"previousItem\":\"Control ArrowUp\",\"previousItemMulti\":\"Control Shift ArrowUp\",\"structuredView\":\"Control Shift Slash\"}'),(4,'test','Imaging','testImaging',NULL,'OvEJ00yyYZQ=',1,0,'Göttingen','de',0,0,10,NULL,'de','{\"detailView\":\"Control Shift BracketRight\",\"help\":\"Shift Minus\",\"nextItem\":\"Control ArrowDown\",\"nextItemMulti\":\"Control Shift ArrowDown\",\"previousItem\":\"Control ArrowUp\",\"previousItemMulti\":\"Control Shift ArrowUp\",\"structuredView\":\"Control Shift Slash\"}'),(5,'test','MetaData','testMetaData',NULL,'OvEJ00yyYZQ=',1,0,'Göttingen','de',0,0,10,NULL,'de','{\"detailView\":\"Control Shift BracketRight\",\"help\":\"Shift Minus\",\"nextItem\":\"Control ArrowDown\",\"nextItemMulti\":\"Control Shift ArrowDown\",\"previousItem\":\"Control ArrowUp\",\"previousItemMulti\":\"Control Shift ArrowUp\",\"structuredView\":\"Control Shift Slash\"}'),(6,'test','Projectmanagement','testProjectmanagement',NULL,'OvEJ00yyYZQ=',1,0,'Göttingen','de',0,0,10,NULL,'de','{\"detailView\":\"Control Shift BracketRight\",\"help\":\"Shift Minus\",\"nextItem\":\"Control ArrowDown\",\"nextItemMulti\":\"Control Shift ArrowDown\",\"previousItem\":\"Control ArrowUp\",\"previousItemMulti\":\"Control Shift ArrowUp\",\"structuredView\":\"Control Shift Slash\"}');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_x_role`
--

DROP TABLE IF EXISTS `user_x_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_x_role` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK_BenutzerGruppenID` (`role_id`),
  KEY `FK_BenutzerID` (`user_id`),
  CONSTRAINT `FK_user_x_role_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FK_user_x_role_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_x_role`
--

LOCK TABLES `user_x_role` WRITE;
/*!40000 ALTER TABLE `user_x_role` DISABLE KEYS */;
INSERT INTO `user_x_role` VALUES (1,1),(8,1),(2,2),(3,3),(4,4),(5,5),(6,6),(16,6);
/*!40000 ALTER TABLE `user_x_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow`
--

DROP TABLE IF EXISTS `workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indexAction` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `separateStructure` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `FK_workflow_client_id` (`client_id`),
  CONSTRAINT `FK_workflow_client_id` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow`
--

LOCK TABLES `workflow` WRITE;
/*!40000 ALTER TABLE `workflow` DISABLE KEYS */;
INSERT INTO `workflow` VALUES (1,'Example_Workflow','ACTIVE','DONE',1,0),(2,'Script_Workflow','ACTIVE','DONE',1,0);
/*!40000 ALTER TABLE `workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowcondition`
--

DROP TABLE IF EXISTS `workflowcondition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowcondition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowcondition`
--

LOCK TABLES `workflowcondition` WRITE;
/*!40000 ALTER TABLE `workflowcondition` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflowcondition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workpiece_x_property`
--

DROP TABLE IF EXISTS `workpiece_x_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workpiece_x_property` (
  `process_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  KEY `FK_workpiece_x_property_workpiece_id` (`process_id`),
  KEY `FK_workpiece_x_property_property_id` (`property_id`),
  CONSTRAINT `FK_workpiece_x_property_property_id` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`),
  CONSTRAINT `FK_workpiece_x_property_workpiece_id` FOREIGN KEY (`process_id`) REFERENCES `process` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workpiece_x_property`
--

LOCK TABLES `workpiece_x_property` WRITE;
/*!40000 ALTER TABLE `workpiece_x_property` DISABLE KEYS */;
INSERT INTO `workpiece_x_property` VALUES (2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20);
/*!40000 ALTER TABLE `workpiece_x_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'kitodo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-02 11:09:34
