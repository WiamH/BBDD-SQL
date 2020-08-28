
CREATE TABLE `usuaris` 
	(`idusuari` int(30) NOT NULL,
	 `nom` varchar(30) NOT NULL,
	 `email` varchar(50) NOT NULL,
	 `contrasenya` varchar(50) NOT NULL,
	 CONSTRAINT pkidusuari PRIMARY KEY (`idusuari`)
	);

--
-- Volcado de datos para la tabla `usuaris`
--

INSERT INTO `usuaris` (`idusuari`,`nom`, `email`, `contrasenya`) VALUES 
('01', 'maria', 'blablaito@mimail.com', 'yyyx'),
('02', 'pedro', 'correu@ymail.com', 'uugd1');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` 
	(`idfoto` int(30) NOT NULL,
	 `idusuari` int(30) NOT NULL,
	 `urlfoto` varchar(255) NOT NULL,
	 CONSTRAINT pkidvideo PRIMARY KEY (`idfoto`)
	);

--
-- Volcado de datos para la tabla `fotos`
--

INSERT INTO `fotos` (`idfoto`, `idusuari`,`urlfoto`) VALUES 
('1', '01', 'www.domain.mewhat-are-subdomains'),
('2', '02', 'www.google.comadsensestart');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amigos`
--


CREATE TABLE `amigos` 
	(`idamigos` int(30) NOT NULL,
	 `idusuari` int(30) NOT NULL,
	 `relacion` varchar(255) NOT NULL,
	 CONSTRAINT pkidusuari PRIMARY KEY (`idamigos`)
	);

--
-- Volcado de datos para la tabla `amigos`
--

INSERT INTO `amigos` (`idamigos`,`idusuari`, `relacion`) VALUES 
('001', '01', 'Amistad de infancia'),
('002', '02', 'Nos conocimos en un viaje a Paris');

-- --------------------------------------------------------
--
-- Indices de la tabla `amigos`
--

ALTER TABLE `amigos`
  ADD CONSTRAINT `fk_idusuari` FOREIGN KEY (`idusuari`) 
REFERENCES `usuaris` (`idusuari`) ON UPDATE CASCADE;