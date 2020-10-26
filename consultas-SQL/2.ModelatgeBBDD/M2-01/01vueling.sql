
CREATE TABLE `avions` (
  `id_avio` int(3) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `capacitat` int (9) NOT NULL,
  `model` varchar(45) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `avions`
--

INSERT INTO `avions` (`id_avio`, `capacitat`, `model`) VALUES (NULL, '300', 'Barcelona'), 
(NULL, '205', 'Badalona') ,
(NULL, '253', 'Santa Coloma de Gramanet),
(NULL, '78', 'Cornella de Llobregat'), 
(NULL, '375', 'Sant Boi'), 
(NULL, '400', 'Vilanova'), 
(NULL, '500', 'Mataro'), 
(NULL, '100', 'Hospitalet');
