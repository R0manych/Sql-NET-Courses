CREATE TABLE `car` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `car_model` varchar(20) NOT NULL,
  `color` varchar(15) NOT NULL,
  `delivery_date` date NOT NULL,
  `sell_date` date NOT NULL,
  `price` float NOT NULL,
  `status_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  PRIMARY KEY (`car_id`),
  KEY `buyer_id` (`buyer_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `car_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`buyer_id`),
  CONSTRAINT `car_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
