-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 29, 2013 at 11:47 AM
-- Server version: 5.5.29-0ubuntu0.12.10.1
-- PHP Version: 5.4.11

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `anuncios`
--

-- --------------------------------------------------------

--
-- Table structure for table `articulos`
--

CREATE TABLE IF NOT EXISTS `articulos` (
  `objeto` varchar(20) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `desc` longtext NOT NULL,
  `vinculo` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `id_2` (`id`),
  KEY `id_3` (`id`),
  KEY `id_4` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=292 ;

--
-- Dumping data for table `articulos`
--

INSERT INTO `articulos` (`objeto`, `titulo`, `desc`, `vinculo`, `id`) VALUES
('Renault Clio 1.6 16v', 'Renault Clio 1.6 16v 5 Puertas', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=446317225', 232),
('Renault Clio 1.6 16v', 'Motorhome Ford Ecoline 150 Beige ,exelente Estado', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=443862439', 233),
('Renault Clio 1.6 16v', 'Volkswaguen Fox Confortline 2005 5 Puertas', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=444027186', 234),
('Renault Clio 1.6 16v', 'Cotizo Chocados Chocado Volcado Volcados Auto Moto Camioneta', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=445533131', 235),
('Renault Clio 1.6 16v', 'Vendo/Permuto Menor Valor, Palio, Corsa', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=443548763', 236),
('Renault Clio 1.6 16v', 'Fiat 128 Europa &#40;para Entendidos&#41;', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=443617378', 237),
('Renault Clio 1.6 16v', 'Peugeot 205 Gti 1.9', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=445878890', 238),
('Renault Clio 1.6 16v', 'Vw Mod. 94 - $10000', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=445969522', 239),
('Renault Clio 1.6 16v', '206 Quiksilver 2003 Con Llantas 207 Rc Permuto Por Corsa Gol', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=446015121', 240),
('Renault Clio 1.6 16v', 'Vendo Honda Cg Titan 150esd Mod 2011.', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=445958426', 241),
('Renault Clio 1.6 16v', 'Renault Clio 1.6 16v 5 Puertas', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=446317225', 242),
('Renault Clio 1.6 16v', 'Motorhome Ford Ecoline 150 Beige ,exelente Estado', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=443862439', 243),
('Renault Clio 1.6 16v', 'Volkswaguen Fox Confortline 2005 5 Puertas', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=444027186', 244),
('Renault Clio 1.6 16v', 'Cotizo Chocados Chocado Volcado Volcados Auto Moto Camioneta', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=445533131', 245),
('Renault Clio 1.6 16v', 'Vendo/Permuto Menor Valor, Palio, Corsa', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=443548763', 246),
('Renault Clio 1.6 16v', 'Fiat 128 Europa &#40;para Entendidos&#41;', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=443617378', 247),
('Renault Clio 1.6 16v', 'Peugeot 205 Gti 1.9', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=445878890', 248),
('Renault Clio 1.6 16v', 'Vw Mod. 94 - $10000', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=445969522', 249),
('Renault Clio 1.6 16v', '206 Quiksilver 2003 Con Llantas 207 Rc Permuto Por Corsa Gol', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=446015121', 250),
('Renault Clio 1.6 16v', 'Vendo Honda Cg Titan 150esd Mod 2011.', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=445958426', 251),
('Renault Clio 1.6 16v', 'Renault Clio 1.6 16v 5 Puertas', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=446317225', 252),
('Renault Clio 1.6 16v', 'Motorhome Ford Ecoline 150 Beige ,exelente Estado', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=443862439', 253),
('Renault Clio 1.6 16v', 'Volkswaguen Fox Confortline 2005 5 Puertas', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=444027186', 254),
('Renault Clio 1.6 16v', 'Cotizo Chocados Chocado Volcado Volcados Auto Moto Camioneta', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=445533131', 255),
('Renault Clio 1.6 16v', 'Vendo/Permuto Menor Valor, Palio, Corsa', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=443548763', 256),
('Renault Clio 1.6 16v', 'Fiat 128 Europa &#40;para Entendidos&#41;', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=443617378', 257),
('Renault Clio 1.6 16v', 'Peugeot 205 Gti 1.9', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=445878890', 258),
('Renault Clio 1.6 16v', 'Vw Mod. 94 - $10000', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=445969522', 259),
('Renault Clio 1.6 16v', '206 Quiksilver 2003 Con Llantas 207 Rc Permuto Por Corsa Gol', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=446015121', 260),
('Renault Clio 1.6 16v', 'Vendo Honda Cg Titan 150esd Mod 2011.', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=445958426', 261),
('San Bernardo &#40;ce', 'San Bernardo &#40;centro&#41; Dpto. 2 Personas,a 100 Mts Del Mar', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=438945224', 262),
('San Bernardo &#40;ce', 'Casaquinta 8habitac 7baÃ±os Â¡15 Personas! Eventos SÃ³lo De DÃ­a', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=444715198', 263),
('San Bernardo &#40;ce', 'Casaquinta  Alquiler  &#40; Descanso O Evento&#41; Zona Sur', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=439146475', 264),
('San Bernardo &#40;ce', 'Alquiler Departamento Vista Al Mar Con Cochera Fija', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=439734630', 265),
('San Bernardo &#40;ce', 'Colon..!!! Entre Rios &amp; Arenas, Bungalosws &amp; CabaÃ±as Alquilo', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=441367650', 266),
('San Bernardo &#40;ce', 'Depto.  Vista Al Mar C/Coch. 4 Personas', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=442112140', 267),
('San Bernardo &#40;ce', 'Alquiler Departamento Villa Gesell-4-6 Personas', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=440986246', 268),
('San Bernardo &#40;ce', 'Verano 2013  Piso Frente Al Mar', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=441797290', 269),
('San Bernardo &#40;ce', 'Mar De Ajo, Frente A La Playa, DueÃ±o, Sin Comision', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=444298568', 270),
('San Bernardo &#40;ce', 'Alquilo Triplex Para 6/8 Personas En Santa Clara Del Mar', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=438534229', 271),
('Renault Clio 1.6 16v', 'Renault Clio 1.6 16v 5 Puertas', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=446317225', 272),
('Renault Clio 1.6 16v', 'Motorhome Ford Ecoline 150 Beige ,exelente Estado', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=443862439', 273),
('Renault Clio 1.6 16v', 'Fiat Palio 1.4 Fire | Full Full | 9 Mil Km | Primera Mano |', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=446509221', 274),
('Renault Clio 1.6 16v', 'Volkswaguen Fox Confortline 2005 5 Puertas', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=444027186', 275),
('Renault Clio 1.6 16v', 'Cotizo Chocados Chocado Volcado Volcados Auto Moto Camioneta', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=445533131', 276),
('Renault Clio 1.6 16v', 'Fiat 147 Tr, Spazio, Brio 87', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=443998232', 277),
('Renault Clio 1.6 16v', 'Fiat 128 Berlina Mod 77 SeÃ±ado', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=445956217', 278),
('Renault Clio 1.6 16v', 'Bmw Serie 7', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=445133016', 279),
('Renault Clio 1.6 16v', 'Liquido Solo Contado Clio 2 Td 2005 31.000$ &#40;no Permuto&#41;', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=445022795', 280),
('Renault Clio 1.6 16v', 'Chevrolet Meriva Gls | 100mil Km | Impecable | Full Full', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=447164492', 281),
('San Bernardo &#40;ce', 'San Bernardo &#40;centro&#41; Dpto. 2 Personas,a 100 Mts Del Mar', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=438945224', 282),
('San Bernardo &#40;ce', 'Casaquinta 8habitac 7baÃ±os Â¡15 Personas! Eventos SÃ³lo De DÃ­a', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=444715198', 283),
('San Bernardo &#40;ce', 'Casaquinta  Alquiler  &#40; Descanso O Evento&#41; Zona Sur', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=439146475', 284),
('San Bernardo &#40;ce', 'Alquiler Departamento Vista Al Mar Con Cochera Fija', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=439734630', 285),
('San Bernardo &#40;ce', 'Colon..!!! Entre Rios &amp; Arenas, Bungalosws &amp; CabaÃ±as Alquilo', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=441367650', 286),
('San Bernardo &#40;ce', 'Alquiler Departamento Villa Gesell-4-6 Personas', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=440986246', 287),
('San Bernardo &#40;ce', 'Alquilo Triplex Para 6/8 Personas En Santa Clara Del Mar', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=438534229', 288),
('San Bernardo &#40;ce', 'Alquileres En Nueva Atlantis Dos Soles', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=440954622', 289),
('San Bernardo &#40;ce', 'CabaÃ±as En ChascomÃºs Promociones  Verano 2013', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=440458438', 290),
('San Bernardo &#40;ce', '2 Ambientes, Al Frente, Tza Balcon, Exc Ubic Y Estado', '', 'http://pmstrk.mercadolibre.com.ar/jm/PmsTrk?tool=XXX&go=/jm/item?site=MLA$$id=440093723', 291);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;