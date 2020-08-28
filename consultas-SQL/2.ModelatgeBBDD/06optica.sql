
CREATE TABLE `clientes` (
  `c_id` int(3) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `c_nom` varchar(45) NOT NULL,
  `c_mail` varchar(60) NOT NULL,
  `c_psswd` varchar(9) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`c_id`, `c_nom`, `c_mail`, `c_psswd`) VALUES
(NULL, 'Abril Garcia', 'abrilgarcia@gmail.com', '930137298'),
(NULL,'Amparo Gonzalez', 'amparogonzalez@gmail.com', '939458713'),
(NULL,'Dolores Fernandez', 'doloresfernandez@gmail.com', '937946380'),
(NULL,'Pedro Martinez', 'pedromartinez@gmail.com', '930000343'),
(NULL,'Ramona Brochas', 'ramonabrochas@gmail.com', 'ABCDEfghi'),
(NULL,'Patricio Ruiz', 'esponja@gmail.com', '934242480'),
(NULL,'Tecla Mouse', 'teclamaouse@gmail.com', '645CDEfghi'),
(NULL,'Cargador Pantalla', 'cargadorpantalla@gmail.com', 'CDEf9365');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--


CREATE TABLE `autor` (
  `a_id` int(3) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `a_nombre` varchar(45) NOT NULL,
  `a_dir` varchar(45) NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`a_nombre`, `a_dir`) VALUES
('Tolkien', 'Barcelona'),
('Borges', 'Bahamas'),
('Kafka', 'Japon'),
('Maxwell', 'Burgos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo`
--


CREATE TABLE `catalogo` (
  `ca_id` int(3) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `ca_libro` varchar(45) NOT NULL,
  `a_nombre` varchar(45) NOT NULL,
  `ca_precio` int(255) NOT NULL,
  `ca_stock` int(255) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `catalogo`
  ADD KEY (`a_nombre`);

--
-- Volcado de datos para la tabla `catalogo`
--


INSERT INTO `catalogo` (`ca_libro`, `a_nombre`, `ca_precio`, `ca_stock`) VALUES
('Las ilusiones perdidas', 'Tolkien', 37, 500),
('Cepillo de dientes eléctrico', 'Borges', 40, 1500),
('Un cuento perfecto', 'Kafka', 17, 1000),
('Mascarillas voladoras', 'Maxwell', 6, 4000),
('Zapatos sin planos', 'Maxwell', 30, 150),
('Smart y smartos', 'Kafka', 35,  280);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--



CREATE TABLE `pedidos` (
  `p_id` int(3) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `c_id` int(3) NOT NULL,
  `ca_id` int(3) NOT NULL,
  `f_pedido` date NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `pedidos`
  ADD KEY (`p_id`);

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`c_id`, `ca_id`, `f_pedido`) VALUES
(2, 2, null),
(3, 3, '2020-08-19'),
(3, 4, null),
(4, 2, null),
(5, 2, '2020-08-19'),
(6, 3, null),
(5, 4, null),
(6, 2, '2020-08-19');



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `fact_id` int(3) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `p_id` int(3) NOT NULL,
  `libroPedido` int(3) NOT NULL,
  `cantidad` int(255) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `factura`
  ADD KEY (`p_id`),
  ADD KEY (`libroPedido`);

DELIMITER $$
CREATE TRIGGER restar_stock
after INSERT ON `factura` FOR EACH ROW
begin
           UPDATE `catalogo`
           SET ca_stock = ca_stock - NEW.cantidad
           WHERE ca_id = NEW.libroPedido ;
END;
$$
DELIMITER ;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`p_id`, `libroPedido`, `cantidad`) VALUES
(1, 3, 5),
(2, 6, 4),
(2, 2, 8),
(3, 1, 70),
(3, 5, 4),
(4, 6, 6),
(4, 3, 10),
(5, 4, 7),
(6, 1, 3),
(2, 2, 3),
(2, 4, 4),
(5, 5, 5),
(1, 4, 50),
(3, 2, 10),
(4, 1, 2),
(1, 2, 5),
(3, 4, 3),
(5, 2, 20);


--
-- Indices de la tabla `factura`
--

ALTER TABLE `factura`
  ADD CONSTRAINT `fk_libroPedido ` FOREIGN KEY (`libroPedido`) 
REFERENCES `catalogo` (`ca_id`) ON UPDATE CASCADE
ADD CONSTRAINT `fk_p_id ` FOREIGN KEY (`p_id`) 
REFERENCES `pedidos` (`p_id`) ON UPDATE CASCADE;

--
-- Indices de la tabla `pedidos`
--

ALTER TABLE `pedidos`
  ADD CONSTRAINT `fk_p_id` FOREIGN KEY (`p_id`) 
REFERENCES `clientes` (`c_id`) ON UPDATE CASCADE;
