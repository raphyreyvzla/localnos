-- phpMyAdmin SQL Dump
-- version 4.0.10.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 14-12-2018 a las 14:47:59
-- Versión del servidor: 5.5.60-MariaDB
-- Versión de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `localnoserver_lclns`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bit_localnos`
--

CREATE TABLE IF NOT EXISTS `bit_exchanges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `wid` int(11) DEFAULT NULL,
  `gateway_send` int(11) DEFAULT NULL,
  `gateway_receive` int(11) DEFAULT NULL,
  `amount_send` varchar(255) DEFAULT NULL,
  `amount_receive` varchar(255) DEFAULT NULL,
  `rate_from` varchar(255) DEFAULT NULL,
  `rate_to` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `updated` int(11) NOT NULL DEFAULT '0',
  `expired` int(11) NOT NULL DEFAULT '0',
  `u_field_1` varchar(255) DEFAULT NULL,
  `u_field_2` varchar(255) DEFAULT NULL,
  `u_field_3` varchar(255) DEFAULT NULL,
  `u_field_4` varchar(255) DEFAULT NULL,
  `u_field_5` varchar(255) DEFAULT NULL,
  `u_field_6` varchar(255) DEFAULT NULL,
  `u_field_7` varchar(255) DEFAULT NULL,
  `u_field_8` varchar(255) DEFAULT NULL,
  `u_field_9` varchar(255) DEFAULT NULL,
  `u_field_10` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `transaction_id` text,
  `exchange_id` varchar(255) DEFAULT NULL,
  `referral_id` varchar(255) NOT NULL DEFAULT '0',
  `referral_amount` varchar(255) DEFAULT NULL,
  `referral_currency` varchar(255) DEFAULT NULL,
  `referral_status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=75 ;

--
-- Volcado de datos para la tabla `bit_exchanges`
--

INSERT INTO `bit_exchanges` (`id`, `uid`, `wid`, `gateway_send`, `gateway_receive`, `amount_send`, `amount_receive`, `rate_from`, `rate_to`, `status`, `created`, `updated`, `expired`, `u_field_1`, `u_field_2`, `u_field_3`, `u_field_4`, `u_field_5`, `u_field_6`, `u_field_7`, `u_field_8`, `u_field_9`, `u_field_10`, `ip`, `transaction_id`, `exchange_id`, `referral_id`, `referral_amount`, `referral_currency`, `referral_status`) VALUES
(62, 20266794, NULL, 12, 14, '1000', '303.03', '3.3', '1', 5, 1542397730, 0, 1542484163, 'faaf@fr.com', '3333333333333333333333', '', '', '', '', '', '', '', '', '201.208.120.80', NULL, '9C1456DDAC8E3194637A', '0', NULL, NULL, 0),
(63, 20266794, NULL, 12, 14, '3444', '1043.64', '3.3', '1', 5, 1542398411, 0, 1542485172, 'dafa@gmail.com', 'eeeeeeeeeeeeeeeeeeeee', '', '', '', '', '', '', '', '', '201.208.120.80', NULL, '3FD497FE294F1A55D42F', '0', NULL, NULL, 0),
(58, 20266794, NULL, 12, 14, '567', '171.82', '3.3', '1', 7, 1542396918, 1543100586, 1542483339, 'raphyreyvzla@gmail.com', '55555555555555555555555555555', '', '', '', '', '', '', '', '', '201.208.120.80', NULL, '1154DFB7ED42D2189D05', '0', NULL, NULL, 0),
(59, 20266794, NULL, 12, 14, '5676', '1720.00', '3.3', '1', 5, 1542397280, 0, 1542483748, 'raphyreyvzla@gmail.com', '6666666666666666666', '', '', '', '', '', '', '', '', '201.208.120.80', NULL, 'C79B80E4149F27A0A2EF', '0', NULL, NULL, 0),
(60, 20266794, NULL, 12, 14, '1234', '373.94', '3.3', '1', 5, 1542397404, 0, 1542483892, 'raphyreyvzla@gmail.com', '44444444444444444', '', '', '', '', '', '', '', '', '201.208.120.80', NULL, '2405214A71EBD74A1A2E', '0', NULL, NULL, 0),
(61, 20266794, NULL, 12, 14, '3444', '1043.64', '3.3', '1', 5, 1542397561, 0, 1542483966, 'raphyreyvzla@gmail.com', '4444444444444444', '', '', '', '', '', '', '', '', '201.208.120.80', NULL, '5FCD56289886F138E55C', '0', NULL, NULL, 0),
(64, 20266794, NULL, 12, 14, '1111', '336.67', '3.3', '1', 5, 1542399240, 0, 1542487166, 'rddaf@gmail.com', 'ddddddddddd', '', '', '', '', '', '', '', '', '201.208.120.80', NULL, '8E6F03E02097A3B4A3D1', '0', NULL, NULL, 0),
(65, 20266794, NULL, 12, 14, '4556', '1380.61', '3.3', '1', 5, 1542404056, 0, 1542491271, 'raphyreyvzla@fffr.ciom', 'ddddddddddddddddddd', '', '', '', '', '', '', '', '', '201.208.120.80', NULL, '5B62BCC4B81EFEDF5984', '0', NULL, NULL, 0),
(66, 20266794, NULL, 12, 14, '3000', '909.09', '3.3', '1', 5, 1542497976, 0, 1542591781, 'raphyreyvzla@gmail.com', '11111111111111111111', '', '', '', '', '', '', '', '', '201.208.120.80', NULL, '42E4538610F43AF08009', '0', NULL, NULL, 0),
(67, 1, 4, NULL, 15, '45', '3,749.85', '', NULL, 4, 1542992864, 1542993883, 0, 'raphyreyvzla@gmail.com', '', '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, 'c5f05e7-a2630843cc918-b9bb71', '0', NULL, NULL, 0),
(69, 1, 5, NULL, 12, '50', '195.70', '', NULL, 4, 1543000981, 1543001024, 0, 'raphyreyvzla@gmail.com', '', '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, '7a2c89b-8b98448c08d6e-3877f1', '0', NULL, NULL, 0),
(70, 20266794, NULL, 14, 12, '16', '5218.72', '1', '326.17', 5, 1543183320, 0, 1543269818, 'raphyreyvzla@gmail.com', 'UHUJHUJH', '', '', 'UHUJHUJHUJGHIHIGH', '20266790', '', 'Banco de Venezuela', 'Cuenta Corriente', '', '190.78.6.52', NULL, '8BB07CF787913672F2AF', '0', NULL, NULL, 0),
(71, 20266794, NULL, 14, 12, '13', '4240.21', '1', '326.17', 5, 1543188523, 0, 1543275680, 'raphyreyvzla@gmail.com', 'rrrrrr', '', '', '44444444444444', '202444', '', 'Banco de Venezuela', 'Cuenta Corriente', '', '190.78.6.52', NULL, 'A98A9117806D4DE8806F', '0', NULL, NULL, 0),
(72, 20266794, NULL, 14, 12, '13', '4240.21', '1', '326.17', 5, 1543188525, 0, 1543275680, 'raphyreyvzla@gmail.com', 'rrrrrr', '', '', '44444444444444', '202444', '', 'Banco de Venezuela', 'Cuenta Corriente', '', '190.78.6.52', NULL, '04C9A0AE5C00A8B9545E', '0', NULL, NULL, 0),
(73, 20266794, NULL, 14, 12, '134', '43706.78', '1', '326.17', 5, 1543188567, 0, 1543275680, 'catilinafiol@gmail.com', 'douglas', '', '', '333333333', '20233333', '', 'Banco de Venezuela', 'Cuenta Corriente', '', '190.78.6.52', NULL, '72F8EDFDC0DEC49C86DE', '0', NULL, NULL, 0),
(74, 20266794, NULL, 14, 12, '12', '3914.04', '1', '326.17', 4, 1543188766, 1543192019, 0, 'vvgvgc@hvhgfg.com', 'gfg', '', '', '555555555555555', '2222222', '', 'Banco de Venezuela', 'Cuenta Corriente', '', '190.78.6.52', '22222222222222222', 'AF28EF1C2F8C1D6A8AB9', '0', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bit_faq`
--

CREATE TABLE IF NOT EXISTS `bit_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) DEFAULT NULL,
  `answer` text,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `bit_faq`
--

INSERT INTO `bit_faq` (`id`, `question`, `answer`, `created`, `updated`) VALUES
(1, '¿ Debo verificar mi cuenta para realizar alguna transacción ?', 'No , en la actualidad puedes realizar cualquier operación colo solo registrarte en sistema y accediendo con tus credenciales, eso te dara permisos para intercambiar , depositar o transferir fondos a otra cuenta Junglex.', 1541268793, NULL),
(2, '¿ Que debo hacer luego realizar el intercambio ?', 'Deberás esperar la confirmación del operador de que la transaccion se realizo completamente , luego de verificados los fondos debes dejar testimonio del intercambio realizado, solo de esta manera se liberan los fondos al cajero Junglex.', 1541268949, 1541269010);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bit_gateways`
--

CREATE TABLE IF NOT EXISTS `bit_gateways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `reserve` varchar(255) DEFAULT NULL,
  `min_amount` varchar(255) DEFAULT NULL,
  `max_amount` varchar(255) DEFAULT NULL,
  `exchange_type` int(11) DEFAULT NULL,
  `include_fee` int(11) DEFAULT NULL,
  `extra_fee` varchar(255) DEFAULT NULL,
  `fee` varchar(255) DEFAULT NULL,
  `allow_send` int(11) DEFAULT NULL,
  `allow_receive` int(11) DEFAULT NULL,
  `default_send` int(11) DEFAULT NULL,
  `default_receive` int(11) DEFAULT NULL,
  `allow_payouts` int(11) DEFAULT NULL,
  `a_field_1` varchar(255) DEFAULT NULL,
  `a_field_2` varchar(255) DEFAULT NULL,
  `a_field_3` varchar(255) DEFAULT NULL,
  `a_field_4` varchar(255) DEFAULT NULL,
  `a_field_5` varchar(255) DEFAULT NULL,
  `a_field_6` varchar(255) DEFAULT NULL,
  `a_field_7` varchar(255) DEFAULT NULL,
  `a_field_8` varchar(255) DEFAULT NULL,
  `a_field_9` varchar(255) DEFAULT NULL,
  `a_field_10` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `external_gateway` int(11) NOT NULL DEFAULT '0',
  `external_icon` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Volcado de datos para la tabla `bit_gateways`
--

INSERT INTO `bit_gateways` (`id`, `name`, `currency`, `reserve`, `min_amount`, `max_amount`, `exchange_type`, `include_fee`, `extra_fee`, `fee`, `allow_send`, `allow_receive`, `default_send`, `default_receive`, `allow_payouts`, `a_field_1`, `a_field_2`, `a_field_3`, `a_field_4`, `a_field_5`, `a_field_6`, `a_field_7`, `a_field_8`, `a_field_9`, `a_field_10`, `status`, `external_gateway`, `external_icon`) VALUES
(14, 'Nollar', 'USD', '50000', '1', '5000', 3, 1, '', '5', 1, 1, 1, 0, NULL, 'usd_1wd7nnt1dphphb93am4u1u757zftwfxjt8sd78u4u71spa4uhw5x1dpg6qxh', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL),
(15, 'Nos', 'NOS', '49497', '50', '10000', 3, 1, '', '5', 1, 1, 0, 0, NULL, 'nos_1jz63f48sqctbp6a6czpntmuokx4yo6ddrdedqup4dbapqqhyq57rc3181dd', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL),
(12, 'Bank Transfer VES', 'VES', '45390.26', '500', '10000', 3, 1, '', '10', 0, 1, 0, 0, NULL, 'Douglas Itriago', '01342008480001017980', '20266790', '', '', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bit_gateways_fields`
--

CREATE TABLE IF NOT EXISTS `bit_gateways_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway_id` int(11) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `field_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `bit_gateways_fields`
--

INSERT INTO `bit_gateways_fields` (`id`, `gateway_id`, `field_name`, `field_number`) VALUES
(3, 17, 'Wallet', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bit_pages`
--

CREATE TABLE IF NOT EXISTS `bit_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `content` text,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `bit_pages`
--

INSERT INTO `bit_pages` (`id`, `title`, `prefix`, `content`, `created`, `updated`) VALUES
(1, 'Terms of service', 'terms-of-services', 'Edit from WebAdmin.', NULL, NULL),
(2, 'Privacy Policy', 'privacy-policy', 'Edit from WebAdmin.', NULL, NULL),
(3, 'About', 'about', 'Edit from WebAdmin.', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bit_rates`
--

CREATE TABLE IF NOT EXISTS `bit_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway_from` int(11) DEFAULT NULL,
  `gateway_to` int(11) DEFAULT NULL,
  `rate_from` varchar(255) DEFAULT NULL,
  `rate_to` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `bit_rates`
--

INSERT INTO `bit_rates` (`id`, `gateway_from`, `gateway_to`, `rate_from`, `rate_to`) VALUES
(11, 12, 14, '333.24', '1'),
(10, 14, 12, '1', '333.24'),
(13, 15, 12, '1', '3.99888'),
(14, 12, 15, '3.99888', '1'),
(15, 14, 15, '1', '83.33'),
(16, 15, 14, '1', '0.012');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bit_settings`
--

CREATE TABLE IF NOT EXISTS `bit_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `infoemail` varchar(255) DEFAULT NULL,
  `supportemail` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `pricedolartoday` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `referral_comission` varchar(255) DEFAULT NULL,
  `wallet_comission` varchar(255) DEFAULT NULL,
  `login_to_exchange` int(11) DEFAULT NULL,
  `document_verification` int(11) DEFAULT NULL,
  `email_verification` int(11) DEFAULT NULL,
  `phone_verification` int(11) DEFAULT NULL,
  `recaptcha_verification` int(11) DEFAULT NULL,
  `recaptcha_publickey` varchar(255) DEFAULT NULL,
  `recaptcha_privatekey` varchar(255) DEFAULT NULL,
  `nexmo_api_key` varchar(255) DEFAULT NULL,
  `nexmo_api_secret` varchar(255) DEFAULT NULL,
  `worktime_from` varchar(255) DEFAULT NULL,
  `worktime_to` varchar(255) DEFAULT NULL,
  `worktime_gmt` varchar(255) DEFAULT NULL,
  `default_language` varchar(255) DEFAULT NULL,
  `default_template` varchar(255) DEFAULT NULL,
  `operator_status` int(11) DEFAULT NULL,
  `footer_information` text,
  `license_key` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `bit_settings`
--

INSERT INTO `bit_settings` (`id`, `title`, `description`, `keywords`, `name`, `infoemail`, `supportemail`, `whatsapp`, `skype`, `pricedolartoday`, `url`, `referral_comission`, `wallet_comission`, `login_to_exchange`, `document_verification`, `email_verification`, `phone_verification`, `recaptcha_verification`, `recaptcha_publickey`, `recaptcha_privatekey`, `nexmo_api_key`, `nexmo_api_secret`, `worktime_from`, `worktime_to`, `worktime_gmt`, `default_language`, `default_template`, `operator_status`, `footer_information`, `license_key`) VALUES
(1, 'LocalNos Venezuela  Intercambio en Bolivares para Nollar y NOS', 'LocalNos Venezuela', 'Localnos Nano Nos Nollar  Exchange  Nano Criptomarket Venezuela Bolivar Fork Bitcoin Criptomoneda Economia', 'LocalNos Intercambio Nollar-Nos-Bs', 'raphyreyvzla@gmail.com', 'raphyreyvzla@gmail.com', '', 'raphyreyvzla@gmail.com', '0', 'https://ve.localnos.com/', '0', '10', 1, 1, 0, 0, NULL, NULL, NULL, '', '', '8 AM', '9 PM', 'Caracas', 'Venezuela', NULL, 1, 'Copyright © 2016 by LocalNos v16.11 Nollar Team Vzla', 'BIANCAVALENTINAVERONICAZOE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bit_sms_codes`
--

CREATE TABLE IF NOT EXISTS `bit_sms_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `sms_code` varchar(255) DEFAULT NULL,
  `verified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bit_testimonials`
--

CREATE TABLE IF NOT EXISTS `bit_testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `exchange_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bit_transactions`
--

CREATE TABLE IF NOT EXISTS `bit_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `transaction_id` text,
  `status` int(11) DEFAULT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bit_users`
--

CREATE TABLE IF NOT EXISTS `bit_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `password_recovery` text,
  `email_verified` int(11) DEFAULT NULL,
  `email_hash` text,
  `email` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `last_login` int(11) DEFAULT NULL,
  `signup_time` int(11) DEFAULT NULL,
  `document_verified` int(11) DEFAULT NULL,
  `document_1` text,
  `document_2` text,
  `mobile_verified` int(11) DEFAULT NULL,
  `mobile_number` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20266796 ;

--
-- Volcado de datos para la tabla `bit_users`
--

INSERT INTO `bit_users` (`id`, `username`, `password`, `password_recovery`, `email_verified`, `email_hash`, `email`, `status`, `ip`, `last_login`, `signup_time`, `document_verified`, `document_1`, `document_2`, `mobile_verified`, `mobile_number`) VALUES
(1, 'localnosvenezuela', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', 0, NULL, 'raphyreyvzla@gmail.com', 666, NULL, 1544146336, NULL, 1, NULL, NULL, 1, ''),
(4, 'Elcomecolgate', '20a581a0e491de6bff52638248fc62af', NULL, 0, NULL, 'galloni16@gmail.com', 1, '190.74.178.180', NULL, 1527702340, 0, NULL, NULL, 0, NULL),
(5, 'carlitoeduardo', '3af357678711bc1819fc93e4bb498eab', NULL, 0, NULL, 'carlitoeduardo.13@gmail.com', 1, '186.95.164.58', NULL, 1529514946, 0, NULL, NULL, 0, NULL),
(6, 'bantano', 'a003e06c943a2f290193ee9c94924ca8', NULL, 0, NULL, 'prominin1@gmail.com', 1, '83.250.44.232', 1540041680, 1540041588, 0, NULL, NULL, 0, NULL),
(7, 'Jan', 'b73740139a62f8edd46a8fe56185f559', NULL, 1, NULL, 'jancisnero@gmail.com', 777, '181.34.82.56', NULL, 1541193711, 1, NULL, NULL, 1, ''),
(8, 'joseit0', '59f8f48923854b9752ee2fbb5ba8bab3', NULL, 0, NULL, 'kevin.josesalazar@hotmail.com', 777, '190.75.207.57', NULL, 1541198898, 0, NULL, NULL, 0, ''),
(9, 'raphyreyvzla', 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, NULL, 'enjectsco@gmail.com', 777, '190.198.23.65', 1544146523, 1541270380, 1, NULL, NULL, 1, ''),
(10, 'Dancr', 'b176afe2c36ace15bb13a20345c3f614', NULL, 0, NULL, 'riverodaniela55@gmail.com', 3, '190.200.92.157', NULL, 1541281002, 0, NULL, NULL, 0, NULL),
(20266791, 'ValentinaVlas', 'ee59a27db5195573149c2d826b6ecf9c', NULL, 0, NULL, 'valentina.vlas.12@gmail.com', 3, '201.209.130.25', NULL, 1541285298, 0, NULL, NULL, 0, NULL),
(20266792, 'Juanjose1811', 'eb7a98892849f84137a0c9ada0a04756', NULL, 0, NULL, 'juanjose1811jj@gmail.com', 3, '186.167.245.118', NULL, 1541335350, 0, NULL, NULL, 0, NULL),
(20266793, 'Yusmari', '8b1d76073f6b3ca15edd7f812cce4a38', NULL, 0, NULL, 'yusmari.rivas@hotmail.com', 3, '186.167.248.48', 1541463083, 1541460329, 0, NULL, NULL, 0, NULL),
(20266794, 'raphytrading', 'e10adc3949ba59abbe56e057f20f883e', NULL, 0, NULL, 'raphytrading@etlgr.com', 777, '190.198.29.167', 1543450206, 1541801764, 0, NULL, NULL, 0, ''),
(20266795, 'Manuelx10', 'fe21dedd87e5fae847de699848bcd9ce', NULL, 0, NULL, 'manuelitox10@gmail.com', 777, '190.73.156.156', NULL, 1544141328, 1, '87b07f2660d80c4277a3f0ca1f5086eb/user_20266795/28080666_1471379822988851_636728764_o.jpg', '87b07f2660d80c4277a3f0ca1f5086eb/user_20266795/37854351_1659876340805864_2847439072434061312_n.jpg', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bit_users_deposits`
--

CREATE TABLE IF NOT EXISTS `bit_users_deposits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `gateway_id` varchar(255) DEFAULT NULL,
  `payment_hash` varchar(255) DEFAULT NULL,
  `txid` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `reason` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `bit_users_deposits`
--

INSERT INTO `bit_users_deposits` (`id`, `uid`, `amount`, `currency`, `gateway_id`, `payment_hash`, `txid`, `status`, `time`, `reason`) VALUES
(1, 3, '2000', 'BAN', '6', '59910896C2', '353563647585p896', 3, 1527355215, NULL),
(2, 3, '2000', 'XRB', '7', '3930176A03', NULL, 1, 1527424460, NULL),
(3, 3, '1000', 'BAN', '6', '7395FB44B5', '21541654165', 3, 1529686457, NULL),
(4, 8, '1', 'BAN', '13', '23D5963846', NULL, 1, 1541199249, NULL),
(5, 1, '10000', 'VEF', '12', '1DF098396F', NULL, 1, 1541217904, NULL),
(6, 9, '500', 'VEF', '12', 'F9E518E7C7', NULL, 1, 1541304119, NULL),
(7, 9, '500', 'VEF', '12', '476B9D3ED1', NULL, 1, 1541304313, NULL),
(10, 20266793, '100', 'BAN', '13', '0D6071D143', NULL, 1, 1541460960, NULL),
(11, 0, '100', 'BAN', '13', 'B27689EB0A', NULL, 1, 1541462971, NULL),
(12, 20266794, '150', 'NOS', '14', '1CB58F64E9', NULL, 1, 1542393201, NULL),
(13, 20266794, '100', 'VEF', '12', '9EBA8BA607', NULL, 1, 1542393259, NULL),
(14, 1, '100', 'USD', '14', '848E899415', '4444444444444', 3, 1542837795, NULL),
(15, 1, '896', 'NOS', '15', 'B1ECBCA30B', '777777777777777', 3, 1542838299, NULL),
(16, 1, '364', 'VES', '12', '7A2761B335', NULL, 1, 1542995430, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bit_users_earnings`
--

CREATE TABLE IF NOT EXISTS `bit_users_earnings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `bit_users_earnings`
--

INSERT INTO `bit_users_earnings` (`id`, `uid`, `amount`, `currency`, `created`, `updated`) VALUES
(2, 9, '33567', 'BAN', 1541294948, 1541294948),
(3, 6, '5', 'BAN', 1541295471, NULL),
(4, 1, '40', 'USD', 1542837848, NULL),
(5, 1, '846', 'NOS', 1542838343, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bit_users_transactions`
--

CREATE TABLE IF NOT EXISTS `bit_users_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) DEFAULT NULL,
  `recipient` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `bit_users_transactions`
--

INSERT INTO `bit_users_transactions` (`id`, `sender`, `recipient`, `amount`, `currency`, `description`, `status`, `time`) VALUES
(1, 9, 6, '5', 'BAN', 'TRANS 10 BAN', 1, 1541295471);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bit_users_withdrawals`
--

CREATE TABLE IF NOT EXISTS `bit_users_withdrawals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `eid` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `requested_on` int(11) DEFAULT NULL,
  `processed_on` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `u_field_1` varchar(255) DEFAULT NULL,
  `u_field_2` varchar(255) DEFAULT NULL,
  `u_field_3` varchar(255) DEFAULT NULL,
  `u_field_4` varchar(255) DEFAULT NULL,
  `u_field_5` varchar(255) DEFAULT NULL,
  `u_field_6` varchar(255) DEFAULT NULL,
  `u_field_7` varchar(255) DEFAULT NULL,
  `u_field_8` varchar(255) DEFAULT NULL,
  `u_field_9` varchar(255) DEFAULT NULL,
  `u_field_10` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `bit_users_withdrawals`
--

INSERT INTO `bit_users_withdrawals` (`id`, `uid`, `eid`, `amount`, `currency`, `company`, `requested_on`, `processed_on`, `status`, `u_field_1`, `u_field_2`, `u_field_3`, `u_field_4`, `u_field_5`, `u_field_6`, `u_field_7`, `u_field_8`, `u_field_9`, `u_field_10`) VALUES
(1, 9, 2, '10000', 'BAN', 'Bitcoin', 1541296372, 1541297616, 2, 'jbhjbcurghuvnr.njknvdjngskdgnrignsnbdh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
