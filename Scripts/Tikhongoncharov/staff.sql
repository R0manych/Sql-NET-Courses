CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `post` varchar(20) NOT NULL,
  `birth_date` date NOT NULL,
  `hire_date` date NOT NULL,
  `wage` int(11) NOT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `person_id` (`person_id`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
