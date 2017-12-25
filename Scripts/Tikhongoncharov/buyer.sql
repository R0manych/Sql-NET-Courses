CREATE TABLE `buyer` (
  `buyer_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `payment_type_id` int(11) NOT NULL,
  PRIMARY KEY (`buyer_id`),
  KEY `payment_type_id` (`payment_type_id`),
  KEY `person_id` (`person_id`),
  KEY `car_id` (`car_id`),
  CONSTRAINT `buyer_ibfk_1` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_type` (`payment_type_id`),
  CONSTRAINT `buyer_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `buyer_ibfk_3` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
