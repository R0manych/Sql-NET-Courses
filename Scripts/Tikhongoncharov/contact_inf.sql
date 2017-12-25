CREATE TABLE `contact_inf` (
  `contact_inf_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `tel_number` varchar(20) DEFAULT NULL,
  `adress` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`contact_inf_id`),
  KEY `person_id` (`person_id`),
  CONSTRAINT `contact_inf_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
