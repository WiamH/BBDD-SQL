CREATE TABLE `clientes` (
  `c_id` int(3) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `c_nom` varchar(45) NOT NULL,
  `c_tlf` varchar(9) NOT NULL,
  `c_adresa` varchar(250) NOT NULL,
  `c_alta` date NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`c_nom`, `c_tlf`, `c_adresa`, `c_alta` ) VALUES
('Carla', '936458778', 'Carrer platos, 15 -08909', '2020-08-19'),
('Marta', '9364587555', 'Carrer romeros, 02 -08001', '2020-08-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ulleres`
--


CREATE TABLE `ulleres` (
  `u_id` int(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `u_marca` varchar(25) NOT NULL,
  `u_graus-D` varchar(9) NOT NULL,
  `u_graus-E` varchar(9) NOT NULL,
  `u_montura` VARCHAR(20) NOT NULL,
  `u_monturaColor` VARCHAR(25) NOT NULL,
  `u_colorVidre` VARCHAR(25) NOT NULL,
  `u_preu` int(4) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ulleres`
--

INSERT INTO `ulleres` (`prov_marca_model`, `u_graus-D`, `u_graus-E`, `u_montura`, `u_monturaColor`, `u_colorVidre`, `u_preu`) VALUES
('001', '5', '2', 'flotant', 'blanc', 'negre', '250'),
('002', '0', '1', 'metal�lica', 'gris', 'taronja', '550'),
('003', '4', '0', 'pasta', 'blau', 'transparent', '57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveidors`
--


CREATE TABLE `proveidors`(
  `prov_id` int(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `prov_nom` varchar(30) NOT NULL,
  `prov_tlf` varchar(9) NOT NULL,
  `prov_adresa` VARCHAR(250) NOT NULL,
  `prov_NIF`varchar(8) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `proveidors`
  ADD KEY (`prov_NIF`);

--
-- Volcado de datos para la tabla `proveidors`
--


INSERT INTO `proveidors` (`prov_nom`, `prov_tlf`, `prov_fax`, `prov_adresa`, `prov_NIF`) VALUES
('proveiulleres', '936458215', '936458218', 'adreça', 'L75846989'),
(`prov_nom`, '94658215', '93658865', 'adreça', 'L75846000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleats`
--


CREATE TABLE `empleats`(
  `em_id` int(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `em_nom` varchar(30) NOT NULL
	
	
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleats`
--

INSERT INTO `empleats` (`em_nom`) VALUES
('Juan'),
('Rosa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--


CREATE TABLE `ventas` (
  `v_id` int(3) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `c_id` int(3) NOT NULL,
  `u_id` int(3) NOT NULL,
  `em_id` int(3) NOT NULL,
  `f_pedido` date NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `ventas`
  ADD KEY (`v_id`);

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`c_id`, `u_id`,  `em_id`, `f_pedido`) VALUES
(3, 2, 2, '2020-08-19'),
(3, 3, 2, '2020-08-19'),
(3, 4, 2, '2020-08-19'),
(4, 2, 1, '2020-08-19'),
(4, 2, 1,'2020-08-19');


-- --------------------------------------------------------
--
-- Indices de la tabla `ventas`
--

ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_v_id` FOREIGN KEY (`v_id`) 
REFERENCES `clientes` (`c_id`) ON UPDATE CASCADE;
