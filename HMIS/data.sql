-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` tinyint(4) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `codename` varchar(21) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_user','Can add user'),(14,4,'change_user','Can change user'),(15,4,'delete_user','Can delete user'),(16,4,'view_user','Can view user'),(17,5,'add_contenttype','Can add content type'),(18,5,'change_contenttype','Can change content type'),(19,5,'delete_contenttype','Can delete content type'),(20,5,'view_contenttype','Can view content type'),(21,6,'add_session','Can add session'),(22,6,'change_session','Can change session'),(23,6,'delete_session','Can delete session'),(24,6,'view_session','Can view session'),(25,7,'add_storemanager','Can add store manager'),(26,7,'change_storemanager','Can change store manager'),(27,7,'delete_storemanager','Can delete store manager'),(28,7,'view_storemanager','Can view store manager'),(29,8,'add_specialization','Can add specialization'),(30,8,'change_specialization','Can change specialization'),(31,8,'delete_specialization','Can delete specialization'),(32,8,'view_specialization','Can view specialization'),(33,9,'add_nurse','Can add nurse'),(34,9,'change_nurse','Can change nurse'),(35,9,'delete_nurse','Can delete nurse'),(36,9,'view_nurse','Can view nurse'),(37,10,'add_doctor','Can add doctor'),(38,10,'change_doctor','Can change doctor'),(39,10,'delete_doctor','Can delete doctor'),(40,10,'view_doctor','Can view doctor'),(41,11,'add_medicine','Can add medicine'),(42,11,'change_medicine','Can change medicine'),(43,11,'delete_medicine','Can delete medicine'),(44,11,'view_medicine','Can view medicine'),(45,12,'add_patient','Can add patient'),(46,12,'change_patient','Can change patient'),(47,12,'delete_patient','Can delete patient'),(48,12,'view_patient','Can view patient'),(49,13,'add_case','Can add case'),(50,13,'change_case','Can change case'),(51,13,'delete_case','Can delete case'),(52,13,'view_case','Can view case'),(53,14,'add_prescriptions','Can add prescriptions'),(54,14,'change_prescriptions','Can change prescriptions'),(55,14,'delete_prescriptions','Can delete prescriptions'),(56,14,'view_prescriptions','Can view prescriptions');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` tinyint(4) DEFAULT NULL,
  `password` varchar(88) DEFAULT NULL,
  `last_login` varchar(10) DEFAULT NULL,
  `is_superuser` tinyint(4) DEFAULT NULL,
  `username` varchar(9) DEFAULT NULL,
  `last_name` varchar(0) DEFAULT NULL,
  `email` varchar(26) DEFAULT NULL,
  `is_staff` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `date_joined` varchar(10) DEFAULT NULL,
  `first_name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$wFLryqN2Kty2QegeyBS71V$jULbCH3gzKZYv8jnc/TodjGc3rcic9uuxF6oMrVJ4AE=','2023-08-26',1,'manav1011','','manavshah1011.ms@gmail.com',1,1,'2023-08-26',''),(2,'pbkdf2_sha256$600000$ewWJ8ve75hykmrsSSiCdxs$A/ynz/H/gQskE15H9mCe1LV9dBEGje1sRzkg+PeoMms=','',0,'aman','','',0,1,'2023-08-26',''),(3,'pbkdf2_sha256$600000$nyStbhFqqgTgbkiFya7nUC$7NpvEhbL1+uKQCFV5zsqB4ZFg/zlUJmzGVZCC0CQG7c=','',0,'mayur','','',0,1,'2023-08-26',''),(4,'pbkdf2_sha256$600000$ZlmWbN6nDn1qNHrspXHkyL$zuwEBj776lMklRH9HWgmoW44vGQDN+VnXyfYxzlGqq0=','',0,'nihal','','',0,1,'2023-08-26','');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `case_case`
--

DROP TABLE IF EXISTS `case_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `case_case` (
  `id` varchar(0) DEFAULT NULL,
  `symptoms` varchar(0) DEFAULT NULL,
  `diagnostic` varchar(0) DEFAULT NULL,
  `treatment` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `assigned_doctor_id` varchar(0) DEFAULT NULL,
  `assigned_nurse_id` varchar(0) DEFAULT NULL,
  `patient_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case_case`
--

LOCK TABLES `case_case` WRITE;
/*!40000 ALTER TABLE `case_case` DISABLE KEYS */;
/*!40000 ALTER TABLE `case_case` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `case_medicine`
--

DROP TABLE IF EXISTS `case_medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `case_medicine` (
  `id` smallint(6) DEFAULT NULL,
  `name` varchar(53) DEFAULT NULL,
  `sale_type` varchar(35) DEFAULT NULL,
  `manufacturer` varchar(44) DEFAULT NULL,
  `salt` varchar(142) DEFAULT NULL,
  `price` varchar(9) DEFAULT NULL,
  `quantity` tinyint(4) DEFAULT NULL,
  `uses` varchar(242) DEFAULT NULL,
  `working` text,
  `side_effect` text,
  `created_at` varchar(10) DEFAULT NULL,
  `updated_at` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case_medicine`
--

LOCK TABLES `case_medicine` WRITE;
/*!40000 ALTER TABLE `case_medicine` DISABLE KEYS */;
INSERT INTO `case_medicine` VALUES (1,'Augmentin 625 Duo Tablet','10 tablets in 1 strip','Glaxo SmithKline Pharmaceuticals Ltd','Amoxycillin  (500mg) +  Clavulanic Acid (125mg),','₹201.71',5,'Treatment of Bacterial infections,','Augmentin 625 Duo Tablet is a combination of two medicines: Amoxycillin  and  Clavulanic Acid. Amoxycillin  is an antibiotic. It works by preventing the formation of the bacterial protective covering which is essential for the survival of bacteria.  Clavulanic Acid is a beta-lactamase inhibitor which reduces resistance and enhances the activity of Amoxycillin  against bacteria.','Vomiting,Nausea,Diarrhea,','2023-08-26','2023-08-26'),(2,'Azithral 500 Tablet','5 tablets in 1 strip','Alembic Pharmaceuticals Ltd','Azithromycin (500mg),','₹119.5',5,'Treatment of Bacterial infections,','Azithral 500 Tablet is an antibiotic. It works by preventing synthesis of essential proteins required by bacteria to carry out vital functions. Thus, it stops the bacteria from growing, and prevents the infection from spreading.','Vomiting,Nausea,Abdominal pain,Diarrhea,','2023-08-26','2023-08-26'),(3,'Ascoril LS Syrup','100 ml in 1 bottle','Glenmark Pharmaceuticals Ltd','Ambroxol (30mg/5ml) + Levosalbutamol (1mg/5ml) + Guaifenesin (50mg/5ml),','₹108',5,'Treatment of Cough with mucus,','Ascoril LS Syrup is a combination of three medicines: Ambroxol, Levosalbutamol and Guaifenesin, which relieves cough with mucus. Ambroxol is a mucolytic which thins and loosens mucus (phlegm), making it easier to cough out. Levosalbutamol is a bronchodilator. It works by relaxing the muscles in the airways and widens airways. Guaifenesin is an expectorant which decreases the stickiness of mucus (phlegm) and helps in its removal from the airways. Together, they make breathing easier.','Nausea,Vomiting,Diarrhea,Upset stomach,Stomach pain,Allergic reaction,Dizziness,Headache,Rash,Hives,Tremors,Palpitations,Muscle cramp,Increased heart rate,','2023-08-26','2023-08-26'),(4,'Allegra 120mg Tablet','10 tablets in 1 strip','Sanofi India  Ltd','Fexofenadine (120mg),','₹198.93',5,'Treatment of Sneezing and runny nose due to allergies,Treatment of Allergic conditions,','Allegra 120mg Tablet belongs to a class of medicines called antihistamines. It blocks the release of a chemical called histamine, which is responsible for causing inflammation and its associated symptoms such as itching, redness, swelling, and irritation.','Headache,Drowsiness,Dizziness,Nausea,','2023-08-26','2023-08-26'),(5,'Avil 25 Tablet','15 tablets in 1 strip','Sanofi India  Ltd','Pheniramine (25mg),','₹9.97',5,'Treatment of Allergic conditions,','Avil 25 Tablet is an antiallergic medication. It works by blocking the action of a chemical messenger (histamine). This relieves symptoms of severe allergic reactions due to insect bite/sting, certain medicines, hives (rashes, swelling, etc).','Sleepiness,Dryness in mouth,','2023-08-26','2023-08-26'),(6,'Aciloc 150 Tablet','30 tablets in 1 strip','Cadila Pharmaceuticals Ltd','Ranitidine (150mg),','₹36.96',5,'Treatment of Gastroesophageal reflux disease (Acid reflux),Treatment of Peptic ulcer disease,','nan','Sleepiness,Headache,Tiredness,Constipation,Diarrhea,','2023-08-26','2023-08-26'),(7,'Atarax 25mg Tablet','15 tablets in 1 strip','Dr Reddy\'s Laboratories Ltd','Hydroxyzine (25mg),','₹77.75',5,'Treatment of Anxiety,Treatment of Skin conditions with inflammation & itching,','Atarax 25mg Tablet is an antihistaminic medication. In allergy, it works by blocking the action of a chemical messenger (histamine). This relieves allergy symptoms such as itching, swelling, and rashes. In short-term anxiety, it works by decreasing the activity in brain, thereby helping you feel relaxed/sleepy.','Sedation,Nausea,Vomiting,Upset stomach,Constipation,','2023-08-26','2023-08-26'),(8,'Amoxyclav 625 Tablet','strip of 6 tablets','Abbott','Amoxycillin  (500mg) +  Clavulanic Acid (125mg),','₹113.25',5,'Treatment of Bacterial infections,','Amoxyclav 625 Tablet is a combination of two medicines: Amoxycillin  and  Clavulanic Acid. Amoxycillin  is an antibiotic. It works by preventing the formation of the bacterial protective covering which is essential for the survival of bacteria.  Clavulanic Acid is a beta-lactamase inhibitor which reduces resistance and enhances the activity of Amoxycillin  against bacteria.','Vomiting,Nausea,Diarrhea,','2023-08-26','2023-08-26'),(9,'Anovate Cream','20 gm in 1 tube','USV Ltd','Phenylephrine (0.10% w/w) + Beclometasone (0.025% w/w) + Lidocaine (2.50% w/w),','₹122',5,'Treatment of Piles,','Anovate Cream is a combination of three medicines: Phenylephrine, Beclometasone and Lidocaine, which treats piles. Phenylephrine is a decongestant which shrinks the blood vessels in the affected area of skin and decreases swelling. Beclometasone is a steroid which blocks the production of certain chemical messengers (prostaglandins) that make the skin red, swollen and itchy. Lidocaine is a local anesthetic which works by blocking pain signals from the nerves to the brain thereby decreasing pain sensation.','Application site reactions (burning, irritation, itching and redness),','2023-08-26','2023-08-26'),(10,'Avomine Tablet','strip of 10 tablets','Abbott','Promethazine (25mg),','₹50.89',5,'Treatment of Nausea,Treatment of Vomiting,Treatment of Allergic conditions,Treatment of Motion sickness,','Avomine Tablet is an antiallergic medication. When your body is exposed to an allergen (pollen, animal dander, house dust etc.), it produces a chemical called histamine. This causes watery eyes, runny or blocked nose, sneezing, skin rashes, itching etc. Avomine Tablet works by blocking the action of histamine, thereby relieving these symptoms. It also works directly on several areas of the brain to prevent nausea/vomiting and help you feel more relaxed.','Dryness in mouth,Blurred vision,Headache,Dizziness,','2023-08-26','2023-08-26'),(11,'Allegra-M Tablet','10 tablets in 1 strip','Sanofi India  Ltd','Montelukast (10mg) + Fexofenadine (120mg),','₹228.46',5,'Treatment of Sneezing and runny nose due to allergies,','Montelukast is a leukotriene antagonist. It works by blocking the action of a chemical messenger called leukotriene. This reduces inflammation (swelling) in the airways and nose and improves symptoms. Fexofenadine is an antiallergic which blocks the action of another chemical messenger (histamine) responsible for runny nose, watery eyes and sneezing.','Nausea,Diarrhea,Vomiting,Skin rash,Flu-like symptoms,Headache,Drowsiness,Dizziness,','2023-08-26','2023-08-26'),(12,'Alprax 0.25 Tablet','strip of 15 tablets','Torrent Pharmaceuticals Ltd','Alprazolam (0.25mg),','₹29',5,'Treatment of Anxiety,Treatment of Panic disorder,','Alprax 0.25 Tablet is a benzodiazepine. It works by increasing the action of a chemical messenger (GABA) which suppresses the abnormal and excessive activity of the nerve cells in the brain.','Lightheadedness,Drowsiness,','2023-08-26','2023-08-26'),(13,'Arkamin Tablet','30 tablets in 1 strip','Torrent Pharmaceuticals Ltd','Clonidine (100mcg),','₹66.05',5,'Treatment of Hypertension (high blood pressure),','Arkamin Tablet is an alpha-2 agonist. It works by relaxing blood vessels which makes the heart more efficient at pumping blood around the body.','Dizziness,Dryness in mouth,Constipation,Headache,Nausea,Fatigue,Insomnia (difficulty in sleeping),','2023-08-26','2023-08-26'),(14,'Alkasol Oral Solution','bottle of 100 ml Oral Solution','Stadmed Pvt Ltd','Disodium Hydrogen Citrate (1.4gm/5ml),','₹115.14',5,'Treatment of Gout,Treatment of Kidney stone,','Alkasol Oral Solution is a urine alkalizer. It works by increasing the pH of urine which makes it less acidic. This helps the kidneys get rid of excess uric acid, thereby preventing gout and certain types of kidney stones.','Stomach pain,Tiredness,Diarrhea,Nausea,Vomiting,Frequent urge to urinate,','2023-08-26','2023-08-26'),(15,'Augmentin Duo Oral Suspension','30 ml in 1 bottle','Glaxo SmithKline Pharmaceuticals Ltd','Amoxycillin  (200mg) +  Clavulanic Acid (28.5mg),','₹60.82',5,'Treatment of Resistance Tuberculosis (TB),Treatment of Bacterial infections,','Augmentin Duo Oral Suspension is an antibiotic. It has two active agents, amoxycillin and clavulanic acid. Amoxycillin works by preventing the formation of the bacterial protective covering (cell wall) essential for the survival of the bacteria. Whereas, clavulanic acid serves a special purpose of inhibiting an enzyme (beta-lactamase) that is produced by resistant bacteria. This makes the combination of amoxycillin and clavulanic acid an effective line of treatment for many types of infections.','Nausea,Vomiting,Abdominal pain,Diarrhea,Allergy,Skin rash,','2023-08-26','2023-08-26'),(16,'Azee 500 Tablet','5 tablets in 1 strip','Cipla Ltd','Azithromycin (500mg),','₹119.5',5,'Treatment of Bacterial infections,','Azee 500 Tablet is an antibiotic. It works by preventing synthesis of essential proteins required by bacteria to carry out vital functions. Thus, it stops the bacteria from growing, and prevents the infection from spreading.','Vomiting,Nausea,Abdominal pain,Diarrhea,','2023-08-26','2023-08-26'),(17,'Ambrodil-S Syrup','100 ml in 1 bottle','Aristo Pharmaceuticals Pvt Ltd','Ambroxol (15mg/5ml) + Salbutamol (1mg/5ml),','₹30.2',5,'Treatment of Cough,','Ambrodil-S Syrup is a combination of two medicines: Ambroxol and Salbutamol, which relieves cough. Ambroxol and salbutamol. Ambroxol is a mucolytic which thins and loosens mucus (phlegm), making it easier to cough out. Salbutamol is a bronchodilator which relaxes the muscles in your airways and widens the airways. Together, they make breathing easier.','Headache,Palpitations,Upset stomach,Tremors,Muscle cramp,Allergic reaction,Increased heart rate,','2023-08-26','2023-08-26'),(18,'Asthalin Syrup','100 ml in 1 bottle','Cipla Ltd','Salbutamol (2mg/5ml),','₹16.8',5,'Treatment of Chronic obstructive pulmonary disease (COPD),','Asthalin Syrup is a bronchodilator. It works by relaxing the muscles in the airways and widens airways. This makes breathing easier.','Tremors,Headache,Palpitations,Increased heart rate,Muscle cramp,','2023-08-26','2023-08-26'),(19,'Alex Syrup','100 ml in 1 bottle','Glenmark Pharmaceuticals Ltd','Phenylephrine (5mg/5ml) + Chlorpheniramine Maleate (2mg/5ml) + Dextromethorphan Hydrobromide (10mg/5ml),','₹118',5,'Treatment of Dry cough,','Alex Syrup is a combination of three medicines: Phenylephrine, Chlorpheniramine Maleate and Dextromethorphan Hydrobromide, which relieves dry cough. Phenylephrine is a decongestant which narrows the small blood vessels providing relief from congestion or stuffiness in the nose. Chlorpheniramine Maleate is an antiallergic which relieves allergy symptoms like runny nose, watery eyes and sneezing. Dextromethorphan Hydrobromide is a cough suppressant that relieves cough by reducing the activity of cough center in the brain.','Nausea,Vomiting,Loss of appetite,Headache,','2023-08-26','2023-08-26'),(20,'Allegra 180mg Tablet','10 tablets in 1 strip','Sanofi India  Ltd','Fexofenadine (180mg),','₹228.37',5,'Treatment of Sneezing and runny nose due to allergies,Treatment of Allergic conditions,','Allegra 180mg Tablet belongs to a class of medicines called antihistamines. It blocks the natural chemical substance (histamine) produced in the body during an allergic state and subsides (lowers) your immune system’s response to these conditions.','Headache,Drowsiness,Dizziness,Nausea,','2023-08-26','2023-08-26'),(21,'Ativan 2mg Tablet','strip of 30 tablets','Pfizer Ltd','Lorazepam (2mg),','₹82.99',5,'Treatment of Short term anxiety,Treatment of Anxiety disorder,','Ativan 2mg Tablet is a benzodiazepine. It works by increasing the action of a chemical messenger (GABA) which suppresses the abnormal and excessive activity of the nerve cells in the brain.','Fatigue,Balance disorder (loss of balance),Dizziness,Sleepiness,','2023-08-26','2023-08-26'),(22,'Ascoril D Plus Syrup Sugar Free','100 ml in 1 bottle','Glenmark Pharmaceuticals Ltd','Phenylephrine (5mg) + Chlorpheniramine Maleate (2mg) + Dextromethorphan Hydrobromide (10mg),','₹118',5,'Treatment of Dry cough,','Ascoril D Plus Syrup Sugar Free is a combination of three medicines: Phenylephrine, Chlorpheniramine Maleate and Dextromethorphan Hydrobromide, which relieves dry cough. Phenylephrine is a decongestant which narrows the small blood vessels providing relief from congestion or stuffiness in the nose. Chlorpheniramine Maleate is an antiallergic which relieves allergy symptoms like runny nose, watery eyes and sneezing. Dextromethorphan Hydrobromide is a cough suppressant that relieves cough by reducing the activity of cough center in the brain.','Nausea,Vomiting,Loss of appetite,Headache,','2023-08-26','2023-08-26'),(23,'Altraday Capsule SR','10 capsule sr in 1 strip','Sun Pharmaceutical Industries Ltd','Aceclofenac (200mg) + Rabeprazole (20mg),','₹120',5,'Pain relief,','Altraday Capsule SR is a combination of two medicines: Aceclofenac and Rabeprazole, which relieves pain. Aceclofenac is a non-steroidal anti-inflammatory drug (NSAID) which works by blocking the release of certain chemical messengers that cause pain and inflammation (redness and swelling). Rabeprazole is a proton-pump inhibitor which prevents damage to the stomach lining caused by Aceclofenac.','Nausea,Flatulence,Indigestion,Diarrhea,Constipation,','2023-08-26','2023-08-26'),(24,'Ativan 1mg Tablet','strip of 30 tablets','Pfizer Ltd','Lorazepam (1mg),','₹68.36',5,'Treatment of Short term anxiety,Treatment of Anxiety disorder,','Ativan 1mg Tablet is a benzodiazepine. It works by increasing the action of a chemical messenger (GABA) which suppresses the abnormal and excessive activity of the nerve cells in the brain.','Dizziness,Weakness,Sedation,Balance disorder (loss of balance),','2023-08-26','2023-08-26'),(25,'Alprax 0.5mg Tablet SR','strip of 15 tablet sr','Torrent Pharmaceuticals Ltd','Alprazolam (0.5mg),','₹60.85',5,'Treatment of Anxiety,Treatment of Panic disorder,','Alprax 0.5mg Tablet SR is a benzodiazepine. It works by increasing the action of a chemical messenger (GABA) which suppresses the abnormal and excessive activity of the nerve cells in the brain.','Lightheadedness,Drowsiness,','2023-08-26','2023-08-26'),(26,'Atarax 10mg Tablet','15 tablets in 1 strip','Dr Reddy\'s Laboratories Ltd','Hydroxyzine (10mg),','₹43.56',5,'Treatment of Anxiety,Treatment of Skin conditions with inflammation & itching,','Atarax 10mg Tablet is an antihistaminic medication. In allergy, it works by blocking the action of a chemical messenger (histamine). This relieves allergy symptoms such as itching, swelling, and rashes. In short-term anxiety, it works by decreasing the activity in brain, thereby helping you feel relaxed/sleepy.','Sedation,Nausea,Vomiting,Upset stomach,Constipation,','2023-08-26','2023-08-26'),(27,'Aldactone Tablet','15 tablets in 1 strip','RPG Life Sciences Ltd','Spironolactone (25mg),','₹31.95',5,'Hypertension (high blood pressure),Edema,Low potassium,Heart failure,','Aldactone Tablet is a potassium-sparing diuretic. It lowers blood pressure and swelling by removing the extra water and electrolytes from the body without loss of potassium.','Nausea,Vomiting,Leg cramps,Dizziness,Drowsiness,Confusion,Breast enlargement in male,Increased creatinine level in blood,','2023-08-26','2023-08-26'),(28,'Allegra Suspension Raspberry & Vanilla','100 ml in 1 bottle','Sanofi India  Ltd','Fexofenadine (30mg/5ml),','₹188.78',5,'Treatment of Sneezing and runny nose due to allergies,Treatment of Allergic conditions,','Allegra Suspension Raspberry & Vanilla belongs to a class of medicines called antihistamines It blocks the natural chemical substance (histamine) produced in the body during an allergic state and subsides (lowers) your child’s immune system’s response to these conditions.','Headache,Drowsiness,Dizziness,Nausea,','2023-08-26','2023-08-26'),(29,'Albendazole 400mg Tablet','1 Tablet in 1 strip','Cadila Pharmaceuticals Ltd','Albendazole (400mg),','₹8.1',5,'Treatment of Parasitic infections,','Albendazole 400mg Tablet is an antiparasitic medication. It works by keeping the worms from absorbing sugar (glucose), thereby depleting their energy level. This causes the worms to die and treats your infection.','Vomiting,Dizziness,Increased liver enzymes,Nausea,Loss of appetite,','2023-08-26','2023-08-26'),(30,'Asthalin 100mcg Inhaler','200 MDI in 1 packet','Cipla Ltd','Salbutamol (100mcg),','₹142.51',5,'Treatment of Chronic obstructive pulmonary disease (COPD),','Asthalin 100mcg Inhaler is a bronchodilator. It works by relaxing the muscles in the airways and widens airways. This makes breathing easier.','Tachycardia,Tremors,Headache,Palpitations,Increased heart rate,Muscle cramp,','2023-08-26','2023-08-26'),(31,'Betnovate-N  Cream','tube of 20 gm Cream','Glaxo SmithKline Pharmaceuticals Ltd','Betamethasone (0.1% w/w) + Neomycin (0.5% w/w),','₹36.6',5,'Treatment of Bacterial skin infections,','Betnovate-N  Cream is a combination of two medicines: Betamethasone and Neomycin. Betamethasone is a steroid which blocks the production of certain chemical messengers (prostaglandins) that make the skin red, swollen and itchy. Neomycin is an antibiotic. It stops bacterial growth on the skin by preventing the synthesis of essential proteins required by bacteria to carry out vital functions.','Nausea,Vomiting,Diarrhea,','2023-08-26','2023-08-26'),(32,'Betnovate-C Cream','30 gm in 1 tube','Glaxo SmithKline Pharmaceuticals Ltd','Betamethasone (0.1% w/w) + Clioquinol (Iodochlorhydroxyquin) (3% w/w),','₹58.6',5,'Treatment of Bacterial skin infections,Treatment of Fungal skin infections,Treatment of Skin conditions with inflammation & itching,','Betnovate-C Cream is a combination of two medicines: Betamethasone and Clioquinol (Iodochlorhydroxyquin), which treats skin infections. Betamethasone is a steroid medicine. It blocks the production of certain chemical messengers (prostaglandins) that make the skin red, swollen and itchy. Clioquinol (Iodochlorhydroxyquin) is an antibiotic with additional antifungal action. It works by preventing the growth and multiplication of the both bacteria and fungi.','Application site reactions (burning, irritation, itching and redness),','2023-08-26','2023-08-26'),(33,'Betnesol Tablet','20 tablets in 1 strip','Glaxo SmithKline Pharmaceuticals Ltd','Betamethasone (0.5mg),','₹14.1',5,'Treatment of Allergic conditions,','Betnesol Tablet is a steroid which works by blocking the production of certain chemical messengers in the body that cause inflammation (redness and swelling) and allergies.','Reduction in bone density,Upset stomach,','2023-08-26','2023-08-26'),(34,'Brufen 400 Tablet','15 tablets in 1 strip','Abbott','Ibuprofen (400mg),','₹17.47',5,'Pain relief,Treatment of Fever,','Brufen 400 Tablet is a non-steroidal anti-inflammatory drug (NSAID). It works by blocking the release of certain chemical messengers that cause fever, pain and inflammation (redness and swelling).','Vomiting,Stomach pain,Nausea,Indigestion,Heartburn,','2023-08-26','2023-08-26'),(35,'Bandy-Plus Chewable Tablet','1 Chewable Tablet in 1 strip','Mankind Pharma Ltd','Ivermectin  (6mg) +  Albendazole (400mg),','₹25',5,'Treatment of Worm infections,','Bandy-Plus Chewable Tablet is a combination of two antiparasitic medicines: Ivermectin  and  Albendazole. Ivermectin  works by binding to muscle and nerve cells of worms causing their paralysis and death.  Albendazole works by keeping the worms from absorbing sugar (glucose), so that they lose energy and die. This treats your infection effectively.','Nausea,Vomiting,Diarrhea,Loss of appetite,Increased liver enzymes,Itching,Dizziness,Swelling of lymph nodes,','2023-08-26','2023-08-26'),(36,'Betadine 2% Gargle Mint','50 ml in 1 bottle','Win-Medicare Pvt Ltd','Povidone Iodine (2% w/v),','₹140  ',5,'Treatment of Mouth infection,Treatment of Sore throat,Treatment of Dry mouth,Treatment and prevention of Wound infection,','Betadine 2% Gargle Mint is an antiseptic medicine. When used as a mouthwash, it kills harmful microorganisms of your mouth. This is how it works to prevent and treat infections.','Application site reactions (burning, irritation, itching and redness),','2023-08-26','2023-08-26'),(37,'Brilinta 90mg Tablet','14 tablets in 1 strip','AstraZeneca','Ticagrelor (90mg),','₹450',5,'Prevention of heart attack and stroke,','Brilinta 90mg Tablet is an antiplatelet medication. It works by preventing platelets from sticking together, thereby decreasing the formation of harmful blood clots. This lowers the chance of heart attack or stroke.','Bleeding,Breathlessness,','2023-08-26','2023-08-26'),(38,'Budecort 0.5mg Respules 2ml','5 respules in 1 packet','Cipla Ltd','Budesonide (0.5mg),','₹119.46',5,'Asthma,','Budecort 0.5mg Respules 2ml is a steroid. It prevents the cells in the lungs and breathing passages from releasing chemical messengers that cause inflammation (swelling) of the airways. This widens the airways and makes breathing easier.','Difficulty in swallowing,Fungal infection of mouth,Fungal infection of oropharynx,Headache,Abdominal pain,Depression,Joint pain,Cushing syndrome,Dyspepsia,Increased risk of infection,Muscle pain,Muscle weakness,Muscle twitching,Osteoporosis,Irritability,Euphoria (feeling of intense excitement and happiness),','2023-08-26','2023-08-26'),(39,'Betadine 10% Ointment','tube of 15 gm Ointment','Win-Medicare Pvt Ltd','Povidone Iodine (10% w/w),','₹85.5',5,'Treatment and prevention of Wound infection,','Betadine 10% Ointment is an antiseptic applied on skin, which is infected or is likely to get infected. It works by slowly releasing iodine which kills or prevents the growth of infectious microorganisms.','Application site reactions (burning, irritation, itching and redness),','2023-08-26','2023-08-26'),(40,'Buscopan 10mg Tablet','strip of 10 tablets','Zydus Cadila','Hyoscine butylbromide (10mg),','₹39.5',5,'Treatment of Pain due to smooth muscle spasm,Treatment of Irritable bowel syndrome,','Buscopan 10mg Tablet is an anticholinergic medication. It works by relaxing the muscles in the stomach and gut (intestine). It stops sudden muscle contractions (spasms), thereby relieving cramps, pain, bloating, and discomfort.','Blurred vision,Increased heart rate,Dryness in mouth,Diarrhea,Dilatation of pupil,','2023-08-26','2023-08-26'),(41,'Benadryl Syrup','150 ml in 1 bottle','Johnson & Johnson Ltd','Diphenhydramine (14.08mg/5ml) + Ammonium Chloride (138mg/5ml) + Sodium Citrate (57.03mg/5ml),','₹129',5,'Treatment of Cough,','Benadryl Syrup is a combination of three medicines: Diphenhydramine, Ammonium chloride and Sodium citrate, which relieves cough. Diphenhydramine is an antiallergic which relieves allergy symptoms like  runny nose, watery eyes and sneezing. Ammonium chloride is an expectorant which decreases the stickiness of mucus (phlegm) and helps in its removal from the airways. Sodium citrate is a mucolytic which thins and loosens mucus (phlegm), making it easier to cough out.','Stomach pain/epigastric pain,Dizziness,Sleepiness,Impaired coordination,Thickened respiratory tract secretions,Allergic reaction,','2023-08-26','2023-08-26'),(42,'Banocide Forte Tablet','30 tablets in 1 strip','Glaxo SmithKline Pharmaceuticals Ltd','Diethylcarbamazine (100mg),','₹43.62',5,'Treatment of Worm infections,Treatment of Filariasis,','Banocide Forte Tablet belongs to a class of medications called anthelmintics. It kills the parasitic worms that cause parasitic worm infections as well as Filariasis. This helps to treat your infection.','Headache,Dizziness,Vomiting,Abnormal liver function tests,Nausea,Abdominal pain,Hair loss,Fever,Vertigo,','2023-08-26','2023-08-26'),(43,'Bro-Zedex Syrup','100 ml in 1 bottle','Dr Reddy\'s Laboratories Ltd','Bromhexine (4mg) + Guaifenesin (50mg) + Menthol (2.5mg) + Terbutaline (1.25mg),','₹142.5',5,'Treatment of Cough,','Bro-Zedex Syrup is a combination of four medicines: Bromhexine, Guaifenesin, Menthol and Terbutaline. Bromhexine is a mucolytic which thins and loosens mucus (phlegm), making it easier to cough out. Guaifenesin is an expectorant which works by decreasing the stickiness of airway secretions and helps in their removal from the airways. Menthol is an organic compound which produces a sensation of coolness and relieves minor throat irritation. Terbutaline is a bronchodilator which relaxes the muscles in the airways and widens the airways.Together, they make breathing easier.','Nausea,Indigestion,Bloating,Vomiting,Diarrhea,Stomach pain,Dizziness,Headache,Sweating,Skin rash,Hives,Tremors,Increased heart rate,Palpitations,','2023-08-26','2023-08-26'),(44,'Betacap TR 40 Capsule','10 capsule pr in 1 strip','Sun Pharmaceutical Industries Ltd','Propranolol (40mg),','₹42.66',5,'Treatment of Pheochromocytoma,Treatment of Hypertension (high blood pressure),Prevention of migraine,Treatment of Anxiety,Treatment of Arrhythmia,Prevention of Heart attack,Prevention of Angina (heart-related chest pain),Treatment of Tremors,','Betacap TR 40 Capsule contains Propranolol, a beta blocker. It works by affecting the body’s response to nerve impulses, especially in the heart. It slows down your heart rate and makes it easier for the heart to pump blood around the body. This prevents arrhythmias. It also widens the blood vessels in the body for better blood flow, thereby preventing angina as well as migraine. The exact mechanism by which it prevents tremors is not known, but experts believe that Betacap TR 40 Capsule helps block the nerve impulses to the muscles responsible for tremors. Propranolol helps block the effects of the chemical messengers namely, adrenaline and noradrenaline, that are produced by the brain and are responsible for increasing your heart rate which makes you feel anxious. This way it helps with anxiety. While treating pheochromocytoma, Betacap TR 40 Capsule may be given to block the action of high-adrenaline hormones, to lower the risk of developing dangerously high blood pressure during surgery for removing the tumor.','Tiredness,Weakness,Raynaud\'s phenomenon,Arrhythmia (irregular heartbeats),Nausea,Vomiting,Diarrhea,','2023-08-26','2023-08-26'),(45,'Betnovate Cream','20 gm in 1 tube','Glaxo SmithKline Pharmaceuticals Ltd','Betamethasone (0.1% w/w),','₹18.79',5,'Treatment of Allergic skin conditions,Treatment of Allergic conditions,','Betnovate Cream is a steroid. It works by blocking the production of certain chemical messengers (prostaglandins) that make the skin red, swollen and itchy.','Reduction in bone density,Upset stomach,','2023-08-26','2023-08-26'),(46,'Betadine 10% Solution','100 ml in 1 bottle','Win-Medicare Pvt Ltd','Povidone Iodine (10% w/v),','₹104.16  ',5,'Treatment and prevention of Wound infection,','Betadine 10% Solution is an antiseptic applied on skin, which is infected or is likely to get infected. It works by slowly releasing iodine which kills or prevents the growth of infectious microorganisms.','Application site reactions (burning, irritation, itching and redness),','2023-08-26','2023-08-26'),(47,'Bandy Suspension','10 ml in 1 bottle','Mankind Pharma Ltd','Albendazole (200mg),','₹17.87  ',5,'Treatment of Parasitic infections,','Worms enter inside your child’s body when your child eats or drinks something that’s infected with a worm or its eggs. Once inside the body, these worms get attached to the inner walls of the intestines and can even enter other body organs. Bandy Suspension works by keeping the worms from absorbing sugar (glucose), thereby depleting their energy level. This causes the worms to die thereby treating your child’s infection.','Sore throat,Vomiting,Dizziness,Increased liver enzymes,Nausea,Loss of appetite,','2023-08-26','2023-08-26'),(48,'Benzac AC 2.5% Gel','tube of 20 gm Gel','Galderma India Pvt Ltd','Benzoyl Peroxide (2.5% w/w),','₹83',5,'Treatment of Acne,','Benzac AC 2.5% Gel is an organic compound. It has a keratolytic property, i.e., it even out the uneven skin. When applied on acne, it releases oxygen which kills the bacteria. This is how it works to cure your acne.','Dry skin,Erythema (skin redness),Itching,Burning sensation,Skin peeling,Stinging sensation,','2023-08-26','2023-08-26'),(49,'Bandy-Plus Suspension','10 ml in 1 bottle','Mankind Pharma Ltd','Ivermectin  (1.5mg) +  Albendazole (200mg),','₹33',5,'Treatment of Worm infections,','Bandy-Plus Suspension is a mixture of two medicines: Ivermectin and Albendazole. Ivermectin works by binding to the muscle and nerve cells of worms, causing their paralysis and death. Albendazole works by keeping the worms from absorbing sugar (glucose), thereby depleting their energy level. This causes the worms to die, thereby treating your child’s infection effectively.','Vomiting,Nausea,Dizziness,Headache,Abdominal pain,Loss of appetite,Hair loss,Fever,Sore throat,','2023-08-26','2023-08-26'),(50,'Bilasure M 20mg/10mg Tablet','10 tablets in 1 strip','Sun Pharmaceutical Industries Ltd','Bilastine (20mg) + Montelukast (10mg),','₹172',5,'Treatment of Allergic conditions,','Bilasure M 20mg/10mg Tablet is a combination of two medicines : Bilastine and Montelukast. Bilastine is an anti-allergic medication. It treats allergy symptoms such as itching, swelling, and rashes by blocking the effects of a chemical messenger (histamine) in the body. Montelukast works by blocking the action of leukotriene, a chemical messenger. This reduces inflammation in the airways to prevent asthma and relieve symptoms of allergies.','Limited data available,','2023-08-26','2023-08-26'),(51,'Buscopan 20mg Injection','vial of 1 ml Injection','Zydus Cadila','Hyoscine butylbromide (20mg),','₹9.74',5,'Treatment of Pain due to smooth muscle spasm,Treatment of Irritable bowel syndrome,','Buscopan 20mg Injection is an anticholinergic medication. It works by relaxing the muscles in the stomach and gut (intestine). It stops sudden muscle contractions (spasms), thereby relieving cramps, pain, bloating, and discomfort.','Blurred vision,Increased heart rate,Dryness in mouth,Diarrhea,Dilatation of pupil,','2023-08-26','2023-08-26'),(52,'Betaloc 25mg Tablet','30 tablets in 1 strip','AstraZeneca','Metoprolol Tartrate (25mg),','₹99',5,'Treatment of Hypertension (high blood pressure),Treatment of Angina (heart-related chest pain),Treatment of Arrhythmia,Prevention of Heart attack,Prevention of Migraine,','Betaloc 25mg Tablet is a short-acting beta blocker that works specifically on the heart. It works by slowing down the heart rate and makes the heart more efficient at pumping blood around the body.','Orthostatic hypotension (sudden lowering of blood pressure on standing),Slow heart rate,Headache,Dizziness,Tiredness,Stomach pain,Nausea,Breathlessness,','2023-08-26','2023-08-26'),(53,'Bilypsa Tablet','45 tablets in 1 box','Zydus Cadila','Saroglitazar (4mg),','₹1644.3',5,'Noncirrhotic Non-Alcoholic Steatohepatitis,Non-alcoholic fatty liver disease,Diabetic dyslipidemia (high cholesterol in diabetes),','Bilypsa Tablet contains Saroglitazar, a dual action peroxisome proliferator-activated receptor (PPAR) inhibitor that aids in the management of high cholesterol, especially triglycerides, as well as blood sugar levels in people with type 2 diabetes. It acts by a unique mechanism in which it reduces the synthesis and secretion of triglycerides (a type of lipid or cholesterol in blood). It also improves insulin sensitivity of the body for better utilization of the existing insulin and hence lowers the blood sugar levels.','Flatulence,Indigestion,Abdominal distension,Weakness,','2023-08-26','2023-08-26'),(54,'Betnovate-GM Cream','20 gm in 1 tube','Glaxo SmithKline Pharmaceuticals Ltd','Betamethasone (0.1% w/w) + Gentamicin (0.1% w/w) + Miconazole (2% w/w),','₹34.05',5,'Treatment of Skin infections,','Betnovate-GM Cream is a combination of three medicines: Betamethasone, Gentamicin and Miconazole, which treats skin infections. Betamethasone is a steroid which blocks the production of certain chemical messengers (prostaglandins) that make the skin red, swollen and itchy. Gentamicin is an antibiotic which stops the growth of bacteria while Miconazole is an antifungal which stops the growth of fungi on the skin. Together, they treat your skin infection effectively.','Application site reactions (burning, irritation, itching and redness),Thinning of skin,Skin peeling,','2023-08-26','2023-08-26'),(55,'Bilazest 20mg Tablet','10 tablets in 1 strip','Abbott','Bilastine (20mg),','₹163.35',5,'Treatment of Allergic conditions,','Bilazest 20mg Tablet is an antiallergic medication. It treats allergy symptoms such as such as itching, swelling, and rashes by blocking the effects of a chemical messenger (histamine) in the body.','Headache,Drowsiness,','2023-08-26','2023-08-26'),(56,'Betnesol Injection 1ml','8 injections in 1 packet','Glaxo SmithKline Pharmaceuticals Ltd','Betamethasone (4mg/ml),','₹37.44',5,'Treatment of Allergic conditions,','Betnesol Injection 1ml is a steroid which works by blocking the production of certain chemical messengers in the body that cause inflammation (redness and swelling) and allergies.','Depression,Reduction in bone density,Upset stomach,','2023-08-26','2023-08-26'),(57,'Bactrim DS Tablet','10 tablets in 1 strip','Abbott','Sulfamethoxazole (800mg) + Trimethoprim (160mg),','₹22.7',5,'Treatment of Bacterial infections,','Bactrim DS Tablet is a combination of two antibiotics: Sulfamethoxazole and Trimethoprim. These antibiotics work by preventing the bacteria from producing folic acid, a nutrient required for bacterial multiplication. Together, they treat your infection effectively.','Nausea,Vomiting,Skin rash,Allergic reaction,','2023-08-26','2023-08-26'),(58,'Bharglob 16.5% Injection','2 ml in 1 vial','Bharat Serums & Vaccines Ltd','Human Normal Immunoglobulin (16.5% w/v),','₹926.16  ',5,'Immunoglobulins deficiency,','Immune globulin belongs to class of agents called immunostimulants. It works by producing antibodies against foreign substances thereby fighting against infection.','Back pain,Chills,Flushing (sense of warmth in the face, ears, neck and trunk),Dizziness,Headache,Nausea,Decreased blood pressure,Muscle pain,Slow heart rate,Wheezing,','2023-08-26','2023-08-26'),(59,'Botroclot Topical Solution','10 ml in 1 bottle','Juggat Pharma','Hemocoagulase (0.2CU),','₹153',5,'Treatment of Bleeding,','Botroclot Topical Solution is a snake venom-based mixture of certain enzymes which fasten the process of blood clotting and stop bleeding.','Injection site reactions (pain, swelling, redness),','2023-08-26','2023-08-26'),(60,'Betnovate-N  Cream','25 gm in 1 tube','Glaxo SmithKline Pharmaceuticals Ltd','Betamethasone (0.1% w/w) + Neomycin (0.5% w/w),','₹50.3',5,'Treatment of Bacterial skin infections,','Betnovate-N  Cream is a combination of two medicines: Betamethasone and Neomycin. Betamethasone is a steroid which blocks the production of certain chemical messengers (prostaglandins) that make the skin red, swollen and itchy. Neomycin is an antibiotic. It stops bacterial growth on the skin by preventing the synthesis of essential proteins required by bacteria to carry out vital functions.','Nausea,Vomiting,Diarrhea,','2023-08-26','2023-08-26'),(61,'Chymoral Forte Tablet','20 tablets in 1 strip','Torrent Pharmaceuticals Ltd','Trypsin Chymotrypsin (100000AU),','₹423.4',5,'Pain relief,Treatment of Swelling,','Chymoral Forte Tablet is an enzyme. It works by breaking down proteins into smaller fragments, thereby making them available for absorption into the blood. Once absorbed, it increases blood supply in the affected area and reduces swelling.','Limited data available,','2023-08-26','2023-08-26'),(62,'Cyclopam Tablet','10 tablets in 1 strip','Indoco Remedies Ltd','Dicyclomine (20mg) + Paracetamol (500mg),','₹51.2',5,'Treatment of Abdominal pain,','Cyclopam Tablet is a combination of two medicines: dicyclomine and paracetamol, which relieves abdominal pain and cramps. Dicyclomine is an anti-cholinergic which relaxes the muscles in the stomach and gut (intestine). It stops sudden muscle contractions (spasms), thereby relieving cramps, pain, bloating, and discomfort. Paracetamol is an analgesic (pain reliever) which works by blocking the release of certain chemical messengers that cause pain.','Nausea,Dryness in mouth,Blurred vision,Sleepiness,Weakness,Nervousness,','2023-08-26','2023-08-26'),(63,'Combiflam Tablet','20 tablets in 1 strip','Sanofi India  Ltd','Ibuprofen (400mg) + Paracetamol (325mg),','₹41.87',5,'Pain relief,Treatment of Fever,','Combiflam Tablet is a combination of two medicines: Ibuprofen and Paracetamol. It works by blocking the release of certain chemical messengers that cause fever, pain and inflammation (redness and swelling).','Heartburn,Indigestion,Nausea,Stomach pain,','2023-08-26','2023-08-26'),(64,'Cheston Cold Tablet','10 tablets in 1 strip','Cipla Ltd','Cetirizine (5mg) + Paracetamol (325mg) + Phenylephrine (10mg),','₹46.75',5,'Treatment of Common cold,','Cheston Cold Tablet is a combination of three medicines: Cetirizine, Paracetamol and Phenylephrine, which relieves common cold symptoms. Cetirizine is an antiallergic which blocks histamine (a chemical messenger) to relieve allergy symptoms like runny nose, watery eyes and sneezing. Paracetamol is an analgesic (pain reliever) and antipyretic (fever reducer). It blocks the release of certain chemical messengers in the brain that are responsible for pain and fever. Phenylephrine is a decongestant which narrows the small blood vessels providing relief from congestion or stuffiness in the nose.','Nausea,Vomiting,Headache,Fatigue,Dizziness,Dryness in mouth,Sleepiness,Allergic reaction,','2023-08-26','2023-08-26'),(65,'Candid-B Cream','20 gm in 1 tube','Glenmark Pharmaceuticals Ltd','Beclometasone (0.025% w/w) + Clotrimazole (1% w/w),','₹139',5,'Treatment of Fungal skin infections,','Candid-B Cream is a combination of two medicines: Beclometasone and Clotrimazole which treat skin infections. Beclometasone is a steroid  which blocks the production of certain chemical messengers (prostaglandins) that make the skin red, swollen and itchy. Clotrimazole is an antifungal which stops the growth of fungi on the skin by preventing them from forming their own protective covering.','Application site reactions (burning, irritation, itching and redness),','2023-08-26','2023-08-26'),(66,'Ceftum 500mg Tablet','4 tablets in 1 strip','Glaxo SmithKline Pharmaceuticals Ltd','Cefuroxime (500mg),','₹452.6',5,'Treatment of Bacterial infections,','Ceftum 500mg Tablet is an antibiotic. It kills bacteria by preventing them from forming the bacterial protective covering (cell wall) which is needed for them to survive.','Rash,Vomiting,Allergic reaction,Increased liver enzymes,Nausea,Diarrhea,','2023-08-26','2023-08-26'),(67,'Ciplox Eye/Ear Drops','10 ml in 1 bottle','Cipla Ltd','Ciprofloxacin (0.3% w/v),','₹17.05',5,'Treatment of Bacterial eye / ear infections,Treatment of Bacterial infections,','Ciplox Eye/Ear Drops is an antibiotic. It treats bacterial eye/ear infections by preventing the bacteria from dividing and repairing. It does so stopping the action of a bacterial enzyme called DNA-gyrase.','Application site irritation,Burning sensation,Nausea,Diarrhea,','2023-08-26','2023-08-26'),(68,'Cypon Syrup','200 ml in 1 bottle','Geno Pharmaceuticals Ltd','Cyproheptadine (2mg/5ml) + Tricholine Citrate (275mg/5ml) + Sorbitol (2gm/5ml),','₹104',5,'Appetite stimulant,','Cypon Syrup is a combination of three medicines: Cyproheptadine, tricholine citrate and sorbitol, which revives appetite. Cyproheptadine is an appetite-stimulant. It works by reducing the effect of a chemical messenger (serotonin) in the hypothalamus, a part of the brain which regulates appetite. Tricholine citrate is a bile acid binding agent which removes bile acids from the body. The liver then produces more bile acids using cholesterol, as a result of which cholesterol level is lowered. Sorbitol acts as a syrup base and also as an osmotic laxative to relieve constipation.','Constipation,Dryness in mouth,Drowsiness,Sleepiness,Blurred vision,','2023-08-26','2023-08-26'),(69,'Clavam 625 Tablet','10 tablets in 1 strip','Alkem Laboratories Ltd','Amoxycillin  (500mg) +  Clavulanic Acid (125mg),','₹201.62',5,'Treatment of Bacterial infections,','Clavam 625 Tablet is a combination of two medicines: Amoxycillin  and  Clavulanic Acid. Amoxycillin  is an antibiotic. It works by preventing the formation of the bacterial protective covering which is essential for the survival of bacteria.  Clavulanic Acid is a beta-lactamase inhibitor which reduces resistance and enhances the activity of Amoxycillin  against bacteria.','Vomiting,Nausea,Diarrhea,','2023-08-26','2023-08-26'),(70,'Cefix 200 Tablet','10 tablets in 1 strip','Cipla Ltd','Cefixime (200mg),','₹107.74',5,'Treatment of Bacterial infections,','Cefix 200 Tablet is an antibiotic. It kills the bacteria by preventing them from forming the bacterial protective covering (cell wall) which is needed for them to survive.','Nausea,Stomach pain,Indigestion,Diarrhea,','2023-08-26','2023-08-26'),(71,'Cyra-D Capsule','10 capsules in 1 strip','Systopic Laboratories Pvt Ltd','Domperidone (30mg) + Rabeprazole (20mg),','₹47',5,'Treatment of Gastroesophageal reflux disease (Acid reflux),Treatment of Peptic ulcer disease,','Cyra-D Capsule is a combination of two medicines: Domperidone and Rabeprazole. Domperidone is a prokinetic which works on the upper digestive tract to increase the movement of the stomach and intestines, allowing the food to move more easily through the stomach. Rabeprazole is a proton pump inhibitor (PPI) which works by reducing the amount of acid in the stomach which helps in the relief of acid-related indigestion and heartburn.','Diarrhea,Stomach pain,Dryness in mouth,Headache,Dizziness,Flatulence,Weakness,Flu-like symptoms,','2023-08-26','2023-08-26'),(72,'Ciplox 500 Tablet','10 tablets in 1 strip','Cipla Ltd','Ciprofloxacin (500mg),','₹40.99',5,'Treatment of Bacterial infections,','Ciplox 500 Tablet is an antibiotic. It works by stopping the action of a bacterial enzyme called DNA-gyrase. This prevents the bacterial cells from dividing and repairing, thereby killing them.','Nausea,Diarrhea,','2023-08-26','2023-08-26'),(73,'Cilacar 10 Tablet','strip of 10 tablets','J B Chemicals and Pharmaceuticals Ltd','Cilnidipine (10mg),','₹98.89',5,'Treatment of Hypertension (high blood pressure),Prevention of Angina (heart-related chest pain),Prevention of Heart attack,Prevention of Stroke,','Cilacar 10 Tablet is a calcium channel blocker. It lowers blood pressure by relaxing blood vessels, which makes the heart more efficient at pumping blood throughout the body.','Fatigue,Sleepiness,Flushing (sense of warmth in the face, ears, neck and trunk),Headache,Nausea,Dizziness,Palpitations,Edema (swelling),Abdominal pain,','2023-08-26','2023-08-26'),(74,'Cetrizine Tablet','10 tablets in 1 strip','Knoll Pharmaceuticals Ltd','Cetirizine (10mg),','₹18.48',5,'Treatment of Allergic conditions,','Cetrizine Tablet is an antihistaminic medication. It treats allergy symptoms such as itching, swelling, and rashes by blocking the effects of a chemical messenger (histamine) in the body.','Sleepiness,Dizziness,','2023-08-26','2023-08-26'),(75,'Cyclopam Suspension','60 ml in 1 bottle','Indoco Remedies Ltd','Dicyclomine (10mg) + Simethicone (40mg),','₹93.7',5,'Treatment of Irritable bowel syndrome,Treatment of Abdominal pain,','Cyclopam Suspension is a mixture of two active medicines Dicyclomine, an antispasmodic agent, and Simethicone, an antifoaming medicine. Dicyclomine works by relaxing the muscles in your stomach and gut (intestine). It stops sudden muscle contractions (spasms), thereby relieving abdominal cramps and pain. Whereas, Simethicone disintegrates gas bubbles and allows easy passage of gas.','Nausea,Vomiting,Blurred vision,Drowsiness,Nervousness,Constipation,Diarrhea,Burping,Loss of appetite,','2023-08-26','2023-08-26'),(76,'Cremaffin Plus  Syrup Refreshing Sugar Free','225 ml in 1 bottle','Abbott','Sodium Picosulfate (3.33mg) + Liquid Paraffin (1.25ml) + Milk Of Magnesia (3.75ml),','₹246.12',5,'Treatment of Constipation,','Sodium picosulfate, liquid paraffin and milk of magnesia, which relieves constipation. Sodium picosulfate is a stimulant laxative which increases peristalsis (the wave-like movement of the intestines) to push the stools forward. Liquid paraffin is a lubricant laxative which helps retain water and fat in the stools, while milk of magnesia is an osmotic laxative which works by drawing water into the intestine through osmosis, making the stools soft. Together, they make stools easier to pass.','Diarrhea,Stomach pain,','2023-08-26','2023-08-26'),(77,'Concor COR 2.5 Tablet','10 tablets in 1 strip','Merck Ltd','Bisoprolol (2.5mg),','₹70.99',5,'Treatment of Hypertension (high blood pressure),Treatment of Angina (heart-related chest pain),Treatment of Arrhythmia,Prevention of Heart attack,Prevention of Migraine,','Concor COR 2.5 Tablet is a beta blocker that works specifically on the heart. It works by slowing down the heart rate and makes the heart more efficient at pumping blood around the body.','Nausea,Headache,Slow heart rate,Fatigue,Constipation,Diarrhea,Dizziness,Cold extremities,','2023-08-26','2023-08-26'),(78,'Ciplox TZ  Tablet','10 tablets in 1 strip','Cipla Ltd','Ciprofloxacin (500mg) + Tinidazole (600mg),','₹155.96',5,'Treatment of Bacterial & parasitic infections,','Ciplox TZ  Tablet is a combination of two antibiotics: Ciprofloxacin and Tinidazole.	Ciprofloxacin works by preventing the bacterial cells from dividing and repairing, thereby killing the bacteria. Tinidazole kills parasites and anaerobic bacteria that cause infections by damaging their DNA. Together, they treat your infection effectively.','Nausea,Vomiting,Stomach pain,Dryness in mouth,Metallic taste,Headache,','2023-08-26','2023-08-26'),(79,'Concor 5 Tablet','10 tablets in 1 strip','Merck Ltd','Bisoprolol (5mg),','₹105.95',5,'Treatment of Hypertension (high blood pressure),Treatment of Angina (heart-related chest pain),Treatment of Arrhythmia,Prevention of Heart attack,Prevention of Migraine,','Concor 5 Tablet is a beta blocker that works specifically on the heart. It works by slowing down the heart rate and makes the heart more efficient at pumping blood around the body.','Nausea,Headache,Slow heart rate,Fatigue,Constipation,Diarrhea,Dizziness,Cold extremities,','2023-08-26','2023-08-26'),(80,'Citralka Liquid','100 ml in 1 bottle','Pfizer Ltd','Disodium Hydrogen Citrate (1.53gm/5ml),','₹104.88  ',5,'Treatment of Gout,Treatment of Kidney stone,','Citralka Liquid is a urine alkalizer. It works by increasing the pH of urine which makes it less acidic. This helps the kidneys get rid of excess uric acid, thereby preventing gout and certain types of kidney stones.','Stomach pain,Tiredness,Diarrhea,Nausea,Vomiting,Frequent urge to urinate,','2023-08-26','2023-08-26'),(81,'Clobenate-Gm Cream','10 gm in 1 tube','Ind Swift Laboratories Ltd','Clobetasol (0.05% w/w) + Gentamicin (0.1% w/w) + Miconazole (2% w/w),','₹69.85  ',5,'Treatment of Skin infections,','Clobenate-Gm Cream is a combination of three medicines: Clobetasol, Gentamicin and Miconazole, which treats skin infections. Clobetasol is a steroid medicine. It blocks the production of certain chemical messengers (prostaglandins) that make the skin red, swollen and itchy. It provides temporary relief of symptoms. Gentamicin is an antibiotic which kills bacteria by preventing the synthesis of essential proteins required by bacteria to carry out vital functions. Miconazole is an antifungal which stops the growth of fungi by preventing them from forming their own protective covering.','Application site reactions (burning, irritation, itching and redness),Thinning of skin,','2023-08-26','2023-08-26'),(82,'Clobeta GM Cream','10 gm in 1 tube','Laborate Pharmaceuticals India Ltd','Clobetasol (0.05% w/w) + Neomycin (0.5% w/w) + Miconazole (2% w/w) + Zinc Oxide (2.5% w/w) + Borax (0.05% w/w),','₹67',5,'Skin infections,','Clobeta GM Cream is a combination of Five medicines: Clobetasol, Neomycin, Miconazole, Zinc Oxide and Borax. Clobetasol is a steroid medicine. It blocks the production of certain chemical messengers (prostaglandins) that make the skin red, swollen and itchy. Neomycin is an antibiotic. It stops bacterial growth by preventing the synthesis of essential proteins required by the bacteria to carry out vital functions. Miconazole is an antifungal which stops the growth of fungi by preventing them from forming their own protective covering. Borax and zinc provide essential nutrients to the body.','Thinning of skin,Application site reactions (burning, irritation, itching and redness),Dryness,','2023-08-26','2023-08-26'),(83,'Candid Mouth Paint','25 ml in 1 bottle','Glenmark Pharmaceuticals Ltd','Clotrimazole (1% w/v),','₹153  ',5,'Fungal infections of mouth (Thrush),Treatment of Fungal infections,','Candid Mouth Paint is an antifungal medication which treats fungal infections of the mouth. It works by binding with the mucosa (the inner surface of the lips and cheeks) from where it is slowly released into the saliva. The fungal cell membranes are destroyed thereby killing the fungi.','No common side effects seen,Blisters,Skin peeling,Swelling,Application site irritation,','2023-08-26','2023-08-26'),(84,'Ciplox D Eye/Ear Drops','10 ml in 1 packet','Cipla Ltd','Ciprofloxacin (0.3% w/v) + Dexamethasone (0.1% w/v),','₹21.95',5,'Treatment of Bacterial eye / ear infections,Treatment of Eye infection with inflammation,','Ciplox D Eye/Ear Drops is a combination of two medicines: Ciprofloxacin and Dexamethasone. Ciprofloxacin is an antibiotic. It kills bacteria in the eye/ear by preventing them from reproducing and repairing themselves. This treats your infection. Dexamethasone is a steroid which blocks the production of certain chemical messengers (prostaglandins) that make the eye/ear red swollen and itchy.','Application site reactions (burning, irritation, itching and redness),','2023-08-26','2023-08-26'),(85,'Calpol 500mg Tablet','15 tablets in 1 strip','Glaxo SmithKline Pharmaceuticals Ltd','Paracetamol (500mg),','₹15.04  ',5,'Pain relief,Treatment of Fever,','Calpol 500mg Tablet is an analgesic (pain reliever) and anti-pyretic (fever reducer). It works by blocking the release of certain chemical messengers that cause pain and fever.','Stomach pain,Nausea,Vomiting,','2023-08-26','2023-08-26'),(86,'Chericof Syrup','100 ml in 1 bottle','Sun Pharmaceutical Industries Ltd','Phenylephrine (5mg/5ml) + Chlorpheniramine Maleate (2mg/5ml) + Dextromethorphan Hydrobromide (10mg/5ml),','₹108',5,'Treatment of Dry cough,','Chericof Syrup is a combination of three medicines: Phenylephrine, Chlorpheniramine Maleate and Dextromethorphan Hydrobromide, which relieves dry cough. Phenylephrine is a decongestant which narrows the small blood vessels providing relief from congestion or stuffiness in the nose. Chlorpheniramine Maleate is an antiallergic which relieves allergy symptoms like runny nose, watery eyes and sneezing. Dextromethorphan Hydrobromide is a cough suppressant that relieves cough by reducing the activity of cough center in the brain.','Nausea,Vomiting,Loss of appetite,Headache,','2023-08-26','2023-08-26'),(87,'Cepodem 200 Tablet','10 tablets in 1 strip','Sun Pharmaceutical Industries Ltd','Cefpodoxime Proxetil (200mg),','₹172',5,'Treatment of Bacterial infections,','Cepodem 200 Tablet is an antibiotic. It kills the bacteria by preventing them from forming the bacterial protective covering (cell wall) which is needed for them to survive.','Rash,Nausea,Diarrhea,','2023-08-26','2023-08-26'),(88,'Cabgolin 0.5 Tablet','4 tablets in 1 strip','Sun Pharmaceutical Industries Ltd','Cabergoline (0.5mg),','₹459',5,'Treatment of High levels of prolactin,','Cabgolin 0.5 Tablet works by decreasing the release of prolactin, a hormone that stimulates breast milk production. This stops the production of breast milk in case of stillbirth, abortion or miscarriage.','Blurred vision,Drowsiness,Hot flashes,Indigestion,Nausea,Constipation,Dizziness,Fatigue,Headache,Vertigo,Vomiting,','2023-08-26','2023-08-26'),(89,'Ciplar 10 Tablet','15 tablets in 1 strip','Cipla Ltd','Propranolol (10mg),','₹19.38',5,'Treatment of Pheochromocytoma,Treatment of Hypertension (high blood pressure),Prevention of migraine,Treatment of Anxiety,Treatment of Arrhythmia,Prevention of Heart attack,Prevention of Angina (heart-related chest pain),Treatment of Tremors,','Ciplar 10 Tablet contains Propranolol, a beta blocker. It works by affecting the body’s response to nerve impulses, especially in the heart. It slows down your heart rate and makes it easier for the heart to pump blood around the body. This prevents arrhythmias. It also widens the blood vessels in the body for better blood flow, thereby preventing angina as well as migraine. The exact mechanism by which it prevents tremors is not known, but experts believe that Ciplar 10 Tablet helps block the nerve impulses to the muscles responsible for tremors. Propranolol helps block the effects of the chemical messengers namely, adrenaline and noradrenaline, that are produced by the brain and are responsible for increasing your heart rate which makes you feel anxious. This way it helps with anxiety. While treating pheochromocytoma, Ciplar 10 Tablet may be given to block the action of high-adrenaline hormones, to lower the risk of developing dangerously high blood pressure during surgery for removing the tumor.','Tiredness,Weakness,Raynaud\'s phenomenon,Arrhythmia (irregular heartbeats),Nausea,Vomiting,Diarrhea,','2023-08-26','2023-08-26'),(90,'Ciplar-LA 40 Tablet','15 tablets in 1 strip','Cipla Ltd','Propranolol (40mg),','₹98.81',5,'Treatment of Pheochromocytoma,Treatment of Hypertension (high blood pressure),Prevention of migraine,Treatment of Anxiety,Treatment of Arrhythmia,Prevention of Heart attack,Prevention of Angina (heart-related chest pain),Treatment of Tremors,','Ciplar-LA 40 Tablet contains Propranolol, a beta blocker. It works by affecting the body’s response to nerve impulses, especially in the heart. It slows down your heart rate and makes it easier for the heart to pump blood around the body. This prevents arrhythmias. It also widens the blood vessels in the body for better blood flow, thereby preventing angina as well as migraine. The exact mechanism by which it prevents tremors is not known, but experts believe that Ciplar-LA 40 Tablet helps block the nerve impulses to the muscles responsible for tremors. Propranolol helps block the effects of the chemical messengers namely, adrenaline and noradrenaline, that are produced by the brain and are responsible for increasing your heart rate which makes you feel anxious. This way it helps with anxiety. While treating pheochromocytoma, Ciplar-LA 40 Tablet may be given to block the action of high-adrenaline hormones, to lower the risk of developing dangerously high blood pressure during surgery for removing the tumor.','Tiredness,Weakness,Raynaud\'s phenomenon,Arrhythmia (irregular heartbeats),Nausea,Vomiting,Diarrhea,','2023-08-26','2023-08-26'),(91,'Axcer  90mg Tablet','14 tablets in 1 strip','Sun Pharmaceutical Industries Ltd','Ticagrelor (90mg),','₹420',5,'Prevention of heart attack and stroke,','Axcer  90mg Tablet is an antiplatelet medication. It works by preventing platelets from sticking together, thereby decreasing the formation of harmful blood clots. This lowers the chance of heart attack or stroke.','Bleeding,Breathlessness,','2023-08-26','2023-08-26'),(92,'Aciloc RD 20 Tablet','strip of 10 tablets','Cadila Pharmaceuticals Ltd','Domperidone (10mg) + Omeprazole (20mg),','₹42.7',5,'Treatment of Gastroesophageal reflux disease (Acid reflux),Treatment of Peptic ulcer disease,','Aciloc RD 20 Tablet is a combination of two medicines: Domperidone and Omeprazole. Domperidone is a prokinetic which works on the upper digestive tract to increase the movement of the stomach and intestines, allowing the food to move more easily through the stomach. Omeprazole is a proton pump inhibitor (PPI) which works by reducing the amount of acid in the stomach which helps in the relief of acid-related indigestion and heartburn.','Diarrhea,Stomach pain,Dryness in mouth,Headache,Flatulence,','2023-08-26','2023-08-26'),(93,'Aldigesic-SP Tablet','10 tablets in 1 strip','Alkem Laboratories Ltd','Aceclofenac (100mg) + Paracetamol (325mg) + Serratiopeptidase (10mg),','₹115',5,'Pain relief,','Aldigesic-SP Tablet is a combination of three medicines: Aceclofenac, Paracetamol and Serratiopeptidase. Aceclofenac is a non-steroidal anti-inflammatory drug (NSAID), and Paracetamol is an antipyretic (fever reducer). They work by blocking the release of certain chemical messengers in the brain that cause pain and fever. Serratiopeptidase is an enzyme which works by breaking down abnormal proteins at the site of inflammation and promotes healing.','Nausea,Vomiting,Stomach pain,Indigestion,Heartburn,Loss of appetite,Diarrhea,','2023-08-26','2023-08-26'),(94,'Arachitol 6L Injection','6 injections in 1 packet','Abbott','Vitamin D3 (600000IU),','₹370.74',5,'Treatment of Vitamin D deficiency,Treatment of Osteoporosis,','Arachitol 6L Injection is a form of vitamin D. It raises vitamin D levels in your blood. This in turn raises calcium levels in your blood by helping you absorb more calcium from food.','Injection site reactions (pain, swelling, redness),Weakness,Muscle pain,Metallic taste,','2023-08-26','2023-08-26'),(95,'Azithral 200 Liquid','15 ml in 1 bottle','Alembic Pharmaceuticals Ltd','Azithromycin (200mg/5ml),','₹51.7',5,'Treatment of Bacterial infections,','Azithral 200 Liquid is an antibiotic. It works by interfering with the synthesis of essential proteins required by bacteria to perform important functions. By doing so, it stops the infection-causing bacteria from growing further and prevents the infection from spreading.','Vomiting,Nausea,Abdominal pain,Diarrhea,','2023-08-26','2023-08-26'),(96,'Akt 4 Kit','packet of 1 Kit','Lupin Ltd','Isoniazid (300mg) + Rifampicin (450mg) + Ethambutol (800mg) + Pyrazinamide (750mg),','₹24.7',5,'Treatment of Tuberculosis (TB),','Akt 4 Kit is a combination of four medicines: Isoniazid, rifampicin, ethambutol and pyrazinamide which treat tuberculosis. Isoniazid works by preventing the TB bacteria from forming their own protective covering, while rifampicin inactivates a bacterial enzyme (RNA-polymerase) which is required by TB bacteria to make essential proteins and to reproduce. Together, they kill the bacteria and eradicate the infection. Ethambutol and pyrazinamide on the other hand, work by slowing the growth of these bacteria.','Nausea,Vomiting,Rash,Fever,Dark colored urine,Sweating,Increased sputum production,Salivation,Watery eyes,Peripheral neuropathy (tingling and numbness of feet and hand),Increased liver enzymes,Jaundice,Increased uric acid level in blood,Visual impairment,','2023-08-26','2023-08-26'),(97,'Amlokind-AT Tablet','strip of 10 tablets','Mankind Pharma Ltd','Amlodipine (5mg) + Atenolol (50mg),','₹27.1',5,'Treatment of Hypertension (high blood pressure),','Amlokind-AT Tablet is a combination of two medicines: Amlodipine and Atenolol, which lowers blood pressure effectively. Amlodipine is a calcium channel blocker which works by relaxing blood vessels while atenolol is a beta blocker which works specifically on the heart to slow down the heart rate. Together, they make the heart more efficient at pumping blood throughout the body.','Sleepiness,Headache,Ankle swelling,Flushing (sense of warmth in the face, ears, neck and trunk),Slow heart rate,Palpitations,Nausea,Edema (swelling),Constipation,Tiredness,Cold extremities,','2023-08-26','2023-08-26'),(98,'Asthakind-DX Syrup Sugar Free','60 ml in 1 bottle','Mankind Pharma Ltd','Phenylephrine (5mg/5ml) + Chlorpheniramine Maleate (2mg/5ml) + Dextromethorphan Hydrobromide (15mg/5ml),','₹64',5,'Treatment of Dry cough,','Asthakind-DX Syrup Sugar Free is a combination of three medicines: Phenylephrine, Chlorpheniramine Maleate and Dextromethorphan Hydrobromide, which relieves dry cough. Phenylephrine is a decongestant which narrows the small blood vessels providing relief from congestion or stuffiness in the nose. Chlorpheniramine Maleate is an antiallergic which relieves allergy symptoms like runny nose, watery eyes and sneezing. Dextromethorphan Hydrobromide is a cough suppressant that relieves cough by reducing the activity of cough center in the brain.','Nausea,Vomiting,Loss of appetite,Headache,','2023-08-26','2023-08-26'),(99,'Almox 500 Capsule','10 capsules in 1 strip','Alkem Laboratories Ltd','Amoxycillin (500mg),','₹72.46',5,'Treatment of Bacterial infections,','Almox 500 Capsule is an antibiotic. It kills bacteria by preventing them from forming the bacterial protective covering (cell wall) which is needed for them to survive.','Rash,Vomiting,Allergic reaction,Nausea,Diarrhea,','2023-08-26','2023-08-26'),(100,'Alfoo 10mg Tablet PR','30 Tablet pr in 1 strip','Dr Reddy\'s Laboratories Ltd','Alfuzosin (10mg),','₹625.25',5,'nan','Alfoo 10mg Tablet PR is an alpha blocker. It works by relaxing muscle around the bladder exit and prostate gland so urine is passed more easily.','Upper respiratory tract infection,Dizziness,Headache,Tiredness,','2023-08-26','2023-08-26');
/*!40000 ALTER TABLE `case_medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `case_patient`
--

DROP TABLE IF EXISTS `case_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `case_patient` (
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL,
  `email` varchar(0) DEFAULT NULL,
  `dob` varchar(0) DEFAULT NULL,
  `gender` varchar(0) DEFAULT NULL,
  `blood_group` varchar(0) DEFAULT NULL,
  `contact` varchar(0) DEFAULT NULL,
  `address` varchar(0) DEFAULT NULL,
  `aadhar` varchar(0) DEFAULT NULL,
  `aabhar` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case_patient`
--

LOCK TABLES `case_patient` WRITE;
/*!40000 ALTER TABLE `case_patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `case_patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `case_prescriptions`
--

DROP TABLE IF EXISTS `case_prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `case_prescriptions` (
  `id` varchar(0) DEFAULT NULL,
  `prescription` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `case_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case_prescriptions`
--

LOCK TABLES `case_prescriptions` WRITE;
/*!40000 ALTER TABLE `case_prescriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `case_prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `case_prescriptions_medicine`
--

DROP TABLE IF EXISTS `case_prescriptions_medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `case_prescriptions_medicine` (
  `id` varchar(0) DEFAULT NULL,
  `prescriptions_id` varchar(0) DEFAULT NULL,
  `medicine_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case_prescriptions_medicine`
--

LOCK TABLES `case_prescriptions_medicine` WRITE;
/*!40000 ALTER TABLE `case_prescriptions_medicine` DISABLE KEYS */;
/*!40000 ALTER TABLE `case_prescriptions_medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` tinyint(4) DEFAULT NULL,
  `object_id` tinyint(4) DEFAULT NULL,
  `object_repr` varchar(5) DEFAULT NULL,
  `action_flag` tinyint(4) DEFAULT NULL,
  `change_message` varchar(15) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `action_time` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,2,'aman',1,'[{\"added\": {}}]',4,1,'2023-08-26'),(2,1,'aman',1,'[{\"added\": {}}]',10,1,'2023-08-26'),(3,1,'mayur',1,'[{\"added\": {}}]',9,1,'2023-08-26'),(4,1,'nihal',1,'[{\"added\": {}}]',7,1,'2023-08-26');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` tinyint(4) DEFAULT NULL,
  `app_label` varchar(12) DEFAULT NULL,
  `model` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(13,'case','case'),(11,'case','medicine'),(12,'case','patient'),(14,'case','prescriptions'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(10,'user','doctor'),(9,'user','nurse'),(8,'user','specialization'),(7,'user','storemanager');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `app` varchar(12) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `applied` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-08-26'),(2,'auth','0001_initial','2023-08-26'),(3,'admin','0001_initial','2023-08-26'),(4,'admin','0002_logentry_remove_auto_add','2023-08-26'),(5,'admin','0003_logentry_add_action_flag_choices','2023-08-26'),(6,'contenttypes','0002_remove_content_type_name','2023-08-26'),(7,'auth','0002_alter_permission_name_max_length','2023-08-26'),(8,'auth','0003_alter_user_email_max_length','2023-08-26'),(9,'auth','0004_alter_user_username_opts','2023-08-26'),(10,'auth','0005_alter_user_last_login_null','2023-08-26'),(11,'auth','0006_require_contenttypes_0002','2023-08-26'),(12,'auth','0007_alter_validators_add_error_messages','2023-08-26'),(13,'auth','0008_alter_user_username_max_length','2023-08-26'),(14,'auth','0009_alter_user_last_name_max_length','2023-08-26'),(15,'auth','0010_alter_group_name_max_length','2023-08-26'),(16,'auth','0011_update_proxy_permissions','2023-08-26'),(17,'auth','0012_alter_user_first_name_max_length','2023-08-26'),(18,'sessions','0001_initial','2023-08-26'),(19,'user','0001_initial','2023-08-26'),(20,'case','0001_initial','2023-08-26');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(32) DEFAULT NULL,
  `session_data` varchar(226) DEFAULT NULL,
  `expire_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('vrq08t5u3ywrumdwzj2rcan1bekcvxrs','e30:1qZnzv:fNTlR-EzCF4YxcWHeot6Qc7AeGc_UYSIgBi1EAK3ciQ','2023-09-09'),('36sl8ac88l7jpx3cnn9gjbakz25478v3','e30:1qZo0U:Kk1ooVInnFjUrEB957NLJsE7O9WePxLhBsJTlU6KsMk','2023-09-09'),('tpc2bi0ug7kzfste6wbyf2eooc1a4eo1','.eJxVjEEOwiAQRe_C2pAZoFRduvcMZIYBqRpISrsy3l2bdKHb_977LxVoXUpYe5rDJOqsUB1-N6b4SHUDcqd6azq2uswT603RO-362iQ9L7v7d1Col28NCJjQErAHMOiICLNznpNLnI0XhMhHwhPGAcAKEkU7Ipg4Mg5Z1PsDz0g3rA:1qZo1e:uaYOgAPHqGuH9LiKj8hZo38W9F6wTczS6f1gC__DbIc','2023-09-09');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(26) DEFAULT NULL,
  `seq` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations',20),('django_admin_log',4),('django_content_type',14),('auth_permission',56),('auth_group',0),('auth_user',4),('user_specialization',10),('user_doctor',1),('user_doctor_specialization',1),('user_nurse',1),('user_storemanager',1),('case_case',0),('case_medicine',747);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_doctor`
--

DROP TABLE IF EXISTS `user_doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_doctor` (
  `id` tinyint(4) DEFAULT NULL,
  `shift_timing` varchar(10) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_doctor`
--

LOCK TABLES `user_doctor` WRITE;
/*!40000 ALTER TABLE `user_doctor` DISABLE KEYS */;
INSERT INTO `user_doctor` VALUES (1,'7:00-18:00',2);
/*!40000 ALTER TABLE `user_doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_doctor_specialization`
--

DROP TABLE IF EXISTS `user_doctor_specialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_doctor_specialization` (
  `id` tinyint(4) DEFAULT NULL,
  `doctor_id` tinyint(4) DEFAULT NULL,
  `specialization_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_doctor_specialization`
--

LOCK TABLES `user_doctor_specialization` WRITE;
/*!40000 ALTER TABLE `user_doctor_specialization` DISABLE KEYS */;
INSERT INTO `user_doctor_specialization` VALUES (1,1,1);
/*!40000 ALTER TABLE `user_doctor_specialization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_nurse`
--

DROP TABLE IF EXISTS `user_nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_nurse` (
  `id` tinyint(4) DEFAULT NULL,
  `shift_timing` varchar(10) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_nurse`
--

LOCK TABLES `user_nurse` WRITE;
/*!40000 ALTER TABLE `user_nurse` DISABLE KEYS */;
INSERT INTO `user_nurse` VALUES (1,'7:00-18:00',3);
/*!40000 ALTER TABLE `user_nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_specialization`
--

DROP TABLE IF EXISTS `user_specialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_specialization` (
  `id` tinyint(4) DEFAULT NULL,
  `choices` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_specialization`
--

LOCK TABLES `user_specialization` WRITE;
/*!40000 ALTER TABLE `user_specialization` DISABLE KEYS */;
INSERT INTO `user_specialization` VALUES (1,'(\'cardiology\', \'Cardiology\')'),(2,'(\'orthopedics\', \'Orthopedics\')'),(3,'(\'neurology\', \'Neurology\')'),(4,'(\'dermatology\', \'Dermatology\')'),(5,'(\'gastroenterology\', \'Gastroenterology\')'),(6,'(\'oncology\', \'Oncology\')'),(7,'(\'pediatrics\', \'Pediatrics\')'),(8,'(\'radiology\', \'Radiology\')'),(9,'(\'surgery\', \'Surgery\')'),(10,'(\'urology\', \'Urology\')');
/*!40000 ALTER TABLE `user_specialization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_storemanager`
--

DROP TABLE IF EXISTS `user_storemanager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_storemanager` (
  `id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_storemanager`
--

LOCK TABLES `user_storemanager` WRITE;
/*!40000 ALTER TABLE `user_storemanager` DISABLE KEYS */;
INSERT INTO `user_storemanager` VALUES (1,4);
/*!40000 ALTER TABLE `user_storemanager` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-29 11:52:18
