
CREATE TABLE `usuaris` 
	(idusuari int(30) NOT NULL,
	email varchar(255),
	contrasenya varchar(255),
	CONSTRAINT pkidusuari PRIMARY KEY (idusuari)
	);

--
-- Volcado de datos para la tabla `usuaris`
--

INSERT INTO `usuaris` (`idusuari`, `email`, `contrasenya`) VALUES 
('10', 'blablaito@mimail.com', 'ñeñe.3T'),
('20', 'correu@ymail.com', 'patata');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE `videos` 
	(idvideo int(30) NOT NULL,
	titulo varchar(255) NOT NULL,
	descripcio varchar(255),
	urlfix varchar(255) NOT NULL,
	identificador varchar(255) NOT NULL,
	CONSTRAINT pkidvideo PRIMARY KEY (idvideo)
	);

--
-- Volcado de datos para la tabla `videos`
--

INSERT INTO `videos` (`idvideo`, `titulo`, `descripcio`, `urlfix`, `identificador`) VALUES 
('1', 'el video', NULL, 'https://www.youtube.com/watch?v=', 'mfKr-1I4q3Aw'),
('2', 'el subido', NULL, 'https://www.youtube.com/watch?v=', 'ndLt-2I5q3Aw');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subidos`
--


CREATE TABLE `subidos` 
	(idsubido int(30) NOT NULL,
	 idusuari int(30) NOT NULL,
	 idvideo int(30) NOT NULL,
	 urlfix varchar(255) NOT NULL,
	 identificador varchar(255) NOT NULL,
	CONSTRAINT pkidusuari PRIMARY KEY (idusuari)
	);

--
-- Volcado de datos para la tabla `subidos`
--

INSERT INTO `subidos` (`idsubido`,`idusuari`, `idvideo`, `urlfix`, `identificador`) VALUES 
('90', '20', '1', 'https://www.youtube.com/watch?v=', 'mfKr-1I4q3Aw'),
('100', '10', '2', 'https://www.youtube.com/watch?v=', 'ndLt-2I5q3Aw');

-- --------------------------------------------------------

--
-- Indices de la tabla `videos`
--

ALTER TABLE `videos`
ALTER urlfix SET DEFAULT 'https://www.youtube.com/watch?v=';

--
-- Indices de la tabla `subidos`
--

ALTER TABLE `subidos`
  ADD CONSTRAINT `fk_idusuari` FOREIGN KEY (`idusuari`) 
REFERENCES `usuaris` (`idusuari`) ON UPDATE CASCADE,
 ADD CONSTRAINT `fk_idvideo` FOREIGN KEY (`idvideo`) 
REFERENCES `videos` (`idvideo`) ON UPDATE CASCADE;
