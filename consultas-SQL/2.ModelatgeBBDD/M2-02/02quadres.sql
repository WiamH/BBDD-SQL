
CREATE TABLE `StockQuadres` (
  `id_quadre` int(3) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `preu` int (10) NOT NULL,
  `autor` varchar(45) NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `StockQuadres`
--

INSERT INTO `StockQuadres` (`id_quadre`, `preu`, `autor`) VALUES (NULL, '3005', 'Salvador Dali'), 
(NULL, '205', 'NULL') ,
(NULL, '2530', 'Claude Monet'),
(NULL, '78000', 'Vicent Van Gogh'), 
(NULL, '3750', 'NULL'), 
(NULL, '4000', 'NULL'), 
(NULL, '500', 'Pablo Picasso'), 
(NULL, '1000', 'Caravaggio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprador`
--

CREATE TABLE `comprador` (
  `id_compra` int(3) NOT NULL,
  `id_quadre` int(3)NOT NULL,
  `DNI` varchar (9) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `cognom` varchar(45) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comprador`
--

INSERT INTO `comprador` (`DNI`, `nom`, `cognom`) VALUES ('31597880U', 'Francisca', 'Gomez'), 
('20563329O', 'Lola', 'Fernandez') ,
('25323688I', 'Laura', 'Venegas'),
('78023688P', 'Nuria', 'Pla'), 
('37523688M', 'Pau', 'Soler'), 
('40023688Z', 'Joel', 'Puig'), 
('50023688X', 'Cindy', 'Roca'), 
('10023688S', 'Will', 'Riera');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venuts`
--

CREATE TABLE `venuts` (
  `id_compra` int(3) NOT NULL,
  `id_quadre` int(3)NOT NULL,
  `DNI` varchar (9) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `venuts`
--

INSERT INTO `venuts` (`id_compra`, `id_quadre`, `DNI`) VALUES 
(30, 1, '31597880U'), 
(40, 8, '20563329O') ,
(50, 2, '25323688I'),
(60, 4, '78023688P'), 
(70, 3, '37523688M'), 
(80, 5, '40023688Z'), 
(90, 7, '50023688X'), 
(100, 6, '10023688S');


--
-- Indices de la tabla `comprador`
--
ALTER TABLE `comprador`
  ADD PRIMARY KEY (`DNI`);

--
-- Indices de la tabla `venuts`
--
ALTER TABLE `venuts`
  ADD PRIMARY KEY (`id_compra`);


--
-- Indices de la tabla `venuts`
--
  ALTER TABLE `venuts`
  ADD CONSTRAINT `fk_id_quadre` FOREIGN KEY (`id_quadre`) REFERENCES `StockQuadres` (`id_quadre`) ON UPDATE CASCADE,
ADD CONSTRAINT `fk_DNI` FOREIGN KEY (`DNI`) REFERENCES `comprador` (`DNI`) ON UPDATE CASCADE;
