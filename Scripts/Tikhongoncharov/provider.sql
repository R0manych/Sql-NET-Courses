CREATE TABLE `provider` (
  `provider_id` int(11) NOT NULL AUTO_INCREMENT,
  `car_id` int(11) NOT NULL,
  `contact_inf` varchar(20) NOT NULL,
  `provider_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`provider_id`),
  KEY `car_id` (`car_id`),
  CONSTRAINT `provider_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
