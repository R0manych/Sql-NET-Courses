CREATE TABLE `modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `car_id` int(11) NOT NULL,
  `length` float NOT NULL,
  `width` float NOT NULL,
  `hight` float NOT NULL,
  `number_of_seats` int(11) NOT NULL,
  `weight` float NOT NULL,
  `max_speed` float NOT NULL,
  `engine_type` varchar(10) DEFAULT NULL,
  `engine_capacity` float NOT NULL,
  `fuel_system` varchar(15) NOT NULL,
  `consumption` float NOT NULL,
  PRIMARY KEY (`modification_id`),
  KEY `car_id` (`car_id`),
  CONSTRAINT `modification_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
