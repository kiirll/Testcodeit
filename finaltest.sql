﻿CREATE TABLE IF NOT EXISTS `net_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_ru` varchar(100) DEFAULT NULL,
  `name_en` varchar(100) DEFAULT NULL,
  `code` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code` (`code`),
  KEY `name_en` (`name_en`),
  KEY `name_ru` (`name_ru`)
) ENGINE=MyISAM AUTO_INCREMENT=248 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=44;

INSERT INTO `net_country` (`id`, `name_ru`, `name_en`, `code`) VALUES
	(1, 'Австралия', 'Australia', 'AU'),
	(2, 'Малайзия', 'Malaysia', 'MY'),
	(3, 'Республика Корея', 'Korea', 'KR'),
	(4, 'Китай', 'China', 'CN'),
	(5, 'Япония', 'Japan', 'JP'),
	(6, 'Индия', 'India', 'IN'),
	(7, 'Тайвань', 'Taiwan', 'TW'),
	(8, 'Гонконг', 'Hong Kong', 'HK'),
	(9, 'Таиланд', 'Thailand', 'TH'),
	(11, 'Вьетнам', 'Vietnam', 'VN'),
	(12, 'Франция', 'France', 'FR'),
	(13, 'Италия', 'Italy', 'IT'),
	(14, 'Объединенные Арабские Эмираты', 'United Arab Emirates', 'AE'),
	(15, 'Швеция', 'Sweden', 'SE'),
	(16, 'Казахстан', 'Kazakhstan', 'KZ'),
	(17, 'Португалия', 'Portugal', 'PT'),
	(18, 'Греция', 'Greece', 'GR'),
	(19, 'Саудовская Аравия', 'Saudi Arabia', 'SA'),
	(20, 'Российская Федерация', 'Russian Federation', 'RU'),
	(21, 'Великобритания', 'United Kingdom', 'GB'),
	(22, 'Дания', 'Denmark', 'DK'),
	(23, 'США', 'United States', 'US'),
	(24, 'Канада', 'Canada', 'CA'),
	(25, 'Мексика', 'Mexico', 'MX'),
	(26, 'Бермуды', 'Bermuda', 'BM'),
	(27, 'Пуэрто Рико', 'Puerto Rico', 'PR'),
	(28, 'Виргинские Острова США', 'Virgin Islands, U.S.', 'VI'),
	(29, 'Германия', 'Germany', 'DE'),
	(30, 'Иран', 'Iran', 'IR'),
	(31, 'Боливия', 'Bolivia', 'BO'),
	(32, 'Монтсеррат', 'Montserrat', 'MS'),
	(33, 'Нидерланды', 'Netherlands', 'NL'),
	(34, 'Израиль', 'Israel', 'IL'),
	(35, 'Испания', 'Spain', 'ES'),
	(36, 'Багамские острова', 'Bahamas', 'BS'),
	(37, 'Сент-Винсент и Гренадины', 'Saint Vincent and the Grenadines', 'VC'),
	(38, 'Чили', 'Chile', 'CL'),
	(39, 'Новая Каледония', 'New Caledonia', 'NC'),
	(40, 'Аргентина', 'Argentina', 'AR'),
	(41, 'Доминика', 'Dominica', 'DM'),
	(42, 'Сингапур', 'Singapore', 'SG'),
	(43, 'Непал', 'Nepal', 'NP'),
	(44, 'Филиппины', 'Philippines', 'PH'),
	(45, 'Индонезия', 'Indonesia', 'ID'),
	(46, 'Пакистан', 'Pakistan', 'PK'),
	(47, 'Токелау', 'Tokelau', 'TK'),
	(48, 'Новая Зеландия', 'New Zealand', 'NZ'),
	(49, 'Камбоджа', 'Cambodia', 'KH'),
	(50, 'Макау', 'Macau', 'MO'),
	(51, 'Папуа Новая Гвинея', 'Papua New Guinea', 'PG'),
	(52, 'Мальдивские острова', 'Maldives', 'MV'),
	(53, 'Афганистан', 'Afghanistan', 'AF'),
	(54, 'Бангладеш', 'Bangladesh', 'BD'),
	(55, 'Ирландия', 'Ireland', 'IE'),
	(56, 'Бельгия', 'Belgium', 'BE'),
	(57, 'Белиз', 'Belize', 'BZ'),
	(58, 'Бразилия', 'Brazil', 'BR'),
	(59, 'Швейцария', 'Switzerland', 'CH'),
	(60, 'Южно-Африканская Республика', 'South Africa', 'ZA'),
	(61, 'Египет', 'Egypt', 'EG'),
	(62, 'Нигерия', 'Nigeria', 'NG'),
	(63, 'Танзания', 'Tanzania', 'TZ'),
	(64, 'Замбия', 'Zambia', 'ZM'),
	(65, 'Сенегал', 'Senegal', 'SN'),
	(66, 'Гана', 'Ghana', 'GH'),
	(67, 'Судан', 'Sudan', 'SD'),
	(68, 'Камерун', 'Cameroon', 'CM'),
	(69, 'Малави', 'Malawi', 'MW'),
	(70, 'Ангола', 'Angola', 'AO'),
	(71, 'Кения', 'Kenya', 'KE'),
	(72, 'Габон', 'Gabon', 'GA'),
	(73, 'Мали', 'Mali', 'ML'),
	(74, 'Бенин', 'Benin', 'BJ'),
	(75, 'Мадагаскар', 'Madagascar', 'MG'),
	(76, 'Чад', 'Chad', 'TD'),
	(77, 'Ботсвана', 'Botswana', 'BW'),
	(78, 'Ливия', 'Libya', 'LY'),
	(79, 'Кабо-Верде', 'Cape Verde', 'CV'),
	(80, 'Руанда', 'Rwanda', 'RW'),
	(81, 'Мозамбик', 'Mozambique', 'MZ'),
	(82, 'Гамбия', 'Gambia', 'GM'),
	(83, 'Лесото', 'Lesotho', 'LS'),
	(84, 'Маврикий', 'Mauritius', 'MU'),
	(85, 'Конго', 'Congo', 'CG'),
	(86, 'Уганда', 'Uganda', 'UG'),
	(87, 'Буркина Фасо', 'Burkina Faso', 'BF'),
	(88, 'Сьерра-Леоне', 'Sierra Leone', 'SL'),
	(89, 'Сомали', 'Somalia', 'SO'),
	(90, 'Зимбабве', 'Zimbabwe', 'ZW'),
	(91, 'Демократическая Республика Конго', 'Democratic Republic Of The Congo', 'CD'),
	(92, 'Нигер', 'Niger', 'NE'),
	(93, 'Центрально-Африканская Республика', 'Central African Republic', 'CF'),
	(94, 'Свазиленд', 'Swaziland', 'SZ'),
	(95, 'Того', 'Togo', 'TG'),
	(96, 'Гвинея', 'Guinea', 'GN'),
	(97, 'Либерия', 'Liberia', 'LR'),
	(98, 'Сейшеллы', 'Seychelles', 'SC'),
	(99, 'Марокко', 'Morocco', 'MA'),
	(100, 'Алжир', 'Algeria', 'DZ'),
	(101, 'Мавритания', 'Mauritania', 'MR'),
	(102, 'Намибия', 'Namibia', 'NA'),
	(103, 'Джибути', 'Djibouti', 'DJ'),
	(105, 'Коморские острова', 'Comoros', 'KM'),
	(106, 'Реюньон', 'Reunion', 'RE'),
	(107, 'Экваториальная Гвинея', 'Equatorial Guinea', 'GQ'),
	(108, 'Тунис', 'Tunisia', 'TN'),
	(109, 'Турция', 'Turkey', 'TR'),
	(110, 'Польша', 'Poland', 'PL'),
	(111, 'Латвия', 'Latvia', 'LV'),
	(112, 'Украина', 'Ukraine', 'UA'),
	(113, 'Беларусь', 'Belarus', 'BY'),
	(114, 'Чехия', 'Czech Republic', 'CZ'),
	(115, 'Палестина', 'Palestinian Territory', 'PS'),
	(116, 'Исландия', 'Iceland', 'IS'),
	(117, 'Кипр', 'Cyprus', 'CY'),
	(118, 'Венгрия', 'Hungary', 'HU'),
	(119, 'Словакия', 'Slovakia', 'SK'),
	(120, 'Сербия', 'Serbia', 'RS'),
	(121, 'Болгария', 'Bulgaria', 'BG'),
	(122, 'Оман', 'Oman', 'OM'),
	(123, 'Румыния', 'Romania', 'RO'),
	(124, 'Грузия', 'Georgia', 'GE'),
	(125, 'Норвегия', 'Norway', 'NO'),
	(126, 'Армения', 'Armenia', 'AM'),
	(127, 'Австрия', 'Austria', 'AT'),
	(128, 'Албания', 'Albania', 'AL'),
	(129, 'Словения', 'Slovenia', 'SI'),
	(130, 'Панама', 'Panama', 'PA'),
	(131, 'Бруней', 'Brunei Darussalam', 'BN'),
	(132, 'Шри-Ланка', 'Sri Lanka', 'LK'),
	(133, 'Черногория', 'Montenegro', 'ME'),
	(134, 'Европейский Союз', 'Europe', 'EU'),
	(135, 'Таджикистан', 'Tajikistan', 'TJ'),
	(136, 'Ирак', 'Iraq', 'IQ'),
	(137, 'Ливан', 'Lebanon', 'LB'),
	(138, 'Молдова', 'Moldova', 'MD'),
	(139, 'Финляндия', 'Finland', 'FI'),
	(140, 'Эстония', 'Estonia', 'EE'),
	(141, 'Босния и Герцеговина', 'Bosnia and Herzegovina', 'BA'),
	(142, 'Кувейт', 'Kuwait', 'KW'),
	(143, 'Аландские острова', 'Aland Islands', 'AX'),
	(144, 'Литва', 'Lithuania', 'LT'),
	(145, 'Люксембург', 'Luxembourg', 'LU'),
	(146, 'Антигуа и Барбуда', 'Antigua and Barbuda', 'AG'),
	(147, 'Македония', 'Macedonia', 'MK'),
	(148, 'Сан-Марино', 'San Marino', 'SM'),
	(149, 'Мальта', 'Malta', 'MT'),
	(150, 'Фолклендские острова', 'Falkland Islands', 'FK'),
	(151, 'Бахрейн', 'Bahrain', 'BH'),
	(152, 'Узбекистан', 'Uzbekistan', 'UZ'),
	(153, 'Азербайджан', 'Azerbaijan', 'AZ'),
	(154, 'Монако', 'Monaco', 'MC'),
	(155, 'Гаити', 'Haiti', 'HT'),
	(156, 'Гуам', 'Guam', 'GU'),
	(157, 'Ямайка', 'Jamaica', 'JM'),
	(158, 'Внешние малые острова США', 'United States Minor Outlying Islands', 'UM'),
	(159, 'Микронезия', 'Micronesia', 'FM'),
	(160, 'Эквадор', 'Ecuador', 'EC'),
	(161, 'Перу', 'Peru', 'PE'),
	(162, 'Каймановы острова', 'Cayman Islands', 'KY'),
	(163, 'Колумбия', 'Colombia', 'CO'),
	(164, 'Гондурас', 'Honduras', 'HN'),
	(165, 'Антильские острова', 'Netherlands Antilles', 'AN'),
	(166, 'Йемен', 'Yemen', 'YE'),
	(167, 'Британские Виргинские острова', 'Virgin Islands, British', 'VG'),
	(168, 'Сирия', 'Syria', 'SY'),
	(169, 'Никарагуа', 'Nicaragua', 'NI'),
	(170, 'Доминиканская республика', 'Dominican Republic', 'DO'),
	(171, 'Гренада', 'Grenada', 'GD'),
	(172, 'Гватемала', 'Guatemala', 'GT'),
	(173, 'Коста-Рика', 'Costa Rica', 'CR'),
	(174, 'Сальвадор', 'El Salvador', 'SV'),
	(175, 'Венесуэла', 'Venezuela', 'VE'),
	(176, 'Барбадос', 'Barbados', 'BB'),
	(177, 'Тринидад и Тобаго', 'Trinidad and Tobago', 'TT'),
	(178, 'Буве', 'Bouvet Island', 'BV'),
	(179, 'Маршалловы острова', 'Marshall Islands', 'MH'),
	(180, 'Острова Кука', 'Cook Islands', 'CK'),
	(181, 'Гибралтар', 'Gibraltar', 'GI'),
	(182, 'Парагвай', 'Paraguay', 'PY'),
	(247, 'Южный Судан', 'South Sudan', 'SS'),
	(184, 'Самоа', 'Samoa', 'WS'),
	(185, 'Сент Китс и Невис', 'Saint Kitts and Nevis', 'KN'),
	(186, 'Фиджи', 'Fiji', 'FJ'),
	(187, 'Уругвай', 'Uruguay', 'UY'),
	(188, 'Северные Марианские острова', 'Northern Mariana Islands', 'MP'),
	(189, 'Палау', 'Palau', 'PW'),
	(190, 'Катар', 'Qatar', 'QA'),
	(191, 'Иордания', 'Jordan', 'JO'),
	(192, 'Американское Самоа', 'American Samoa', 'AS'),
	(193, 'Туркс и Кейкос', 'Turks and Caicos Islands', 'TC'),
	(194, 'Святая Люсия', 'Saint Lucia', 'LC'),
	(195, 'Монголия', 'Mongolia', 'MN'),
	(196, 'Ватикан', 'Holy See', 'VA'),
	(197, 'Арулько', 'Aruba', 'AW'),
	(198, 'Гайана', 'Guyana', 'GY'),
	(199, 'Суринам', 'Suriname', 'SR'),
	(200, 'Остров Мэн', 'Isle of Man', 'IM'),
	(201, 'Вануату', 'Vanuatu', 'VU'),
	(202, 'Хорватия', 'Croatia', 'HR'),
	(203, 'Ангуилья', 'Anguilla', 'AI'),
	(204, 'Сен-Пьер и Микелон', 'Saint Pierre and Miquelon', 'PM'),
	(205, 'Гваделупа', 'Guadeloupe', 'GP'),
	(206, 'Сен-Мартен', 'Saint Martin', 'MF'),
	(207, 'Гернси', 'Guernsey', 'GG'),
	(208, 'Бурунди', 'Burundi', 'BI'),
	(209, 'Туркменистан', 'Turkmenistan', 'TM'),
	(210, 'Кыргызстан', 'Kyrgyzstan', 'KG'),
	(211, 'Мьянма', 'Myanmar', 'MM'),
	(212, 'Бутан', 'Bhutan', 'BT'),
	(213, 'Лихтенштейн', 'Liechtenstein', 'LI'),
	(214, 'Фарерские острова', 'Faroe Islands', 'FO'),
	(215, 'Эфиопия', 'Ethiopia', 'ET'),
	(216, 'Мартиника', 'Martinique', 'MQ'),
	(217, 'Джерси', 'Jersey', 'JE'),
	(218, 'Андорра', 'Andorra', 'AD'),
	(219, 'Антарктида', 'Antarctica', 'AQ'),
	(220, 'Британская территория в Индийском океане', 'British Indian Ocean Territory', 'IO'),
	(221, 'Гренландия', 'Greenland', 'GL'),
	(222, 'Гвинея-Бисау', 'Guinea-Bissau', 'GW'),
	(223, 'Эритрея', 'Eritrea', 'ER'),
	(224, 'Уоллис и Футуна', 'Wallis and Futuna', 'WF'),
	(225, 'Французская Полинезия', 'French Polynesia', 'PF'),
	(226, 'Куба', 'Cuba', 'CU'),
	(227, 'Тонга', 'Tonga', 'TO'),
	(228, 'Восточный Тимор', 'Timor-Leste', 'TL'),
	(229, 'Сан-Томе и Принсипи', 'Sao Tome and Principe', 'ST'),
	(230, 'Французская Гвинея', 'French Guiana', 'GF'),
	(231, 'Соломоновы острова', 'Solomon Islands', 'SB'),
	(232, 'Тувалу', 'Tuvalu', 'TV'),
	(233, 'Кирибати', 'Kiribati', 'KI'),
	(234, 'Ниуэ', 'Niue', 'NU'),
	(235, 'Норфолк', 'Norfolk Island', 'NF'),
	(236, 'Науру', 'Nauru', 'NR'),
	(237, 'Майотта', 'Mayotte', 'YT'),
	(238, 'Питкэрн', 'Pitcairn Islands', 'PN'),
	(239, 'Кот-д\'Ивуар', 'Cote D\'Ivoire', 'CI'),
	(240, 'Лаос', 'Lao', 'LA'),
	(241, 'Корейская Народно-Демократическая Республика', 'Democratic People\'s Republic of Korea', 'KP'),
	(242, 'Свальбард и Ян-Майен', 'Svalbard and Jan Mayen', 'SJ'),
	(243, 'Остров Святой Елены', 'Saint Helena', 'SH'),
	(244, 'Кокосовые острова', 'Cocos (Keeling) Islands', 'CC'),



CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `birthdate` int(11) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4096;


INSERT INTO `user` (`id`, `login`, `email`, `password`, `birthdate`, `realname`) VALUES
	(1, 'login2', 'sef@sw.sdf', '1234', 1506200400, 'Nick Duglas'),
	(3, 'kefe', 'fwefo@mail.ru', 'rtq343', 1505422800, 'kirill'),
	(4, 'фукепку', 'sdfklgh@ld.fsd', 'dsfd', 1504731600, 'easf'),
	(5, 'dfere', 'ewwe@gs.gsdg', '45ds4f', 1504126800, 'kievas'),
	(6, 'dfg', 'fgdag@f', 'sdgfs', 1504126800, 'awd'),
	(7, 'kirill', 'ewf@fd.df', '1234', 1504731600, 'kirill'),
	(8, 'kir', 'kirill@mail.com', '1234', 1514581200, 'kirill');
