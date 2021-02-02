#
# TABLE STRUCTURE FOR: apartments
#

DROP TABLE IF EXISTS `apartments`;

CREATE TABLE `apartments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `house_id` bigint(20) unsigned DEFAULT NULL,
  `rooms` int(10) unsigned NOT NULL,
  `floor` int(10) unsigned DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apart_num` int(11) DEFAULT NULL,
  `price` decimal(11,2) unsigned DEFAULT NULL,
  `status` enum('sale','rent') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `apart_num` (`apart_num`),
  KEY `house_id` (`house_id`),
  CONSTRAINT `apartments_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('1', '1', 2, 8, 'Ut cumque et saepe ullam vero quas libero. Quia dolorem dolorem commodi ipsa omnis quis non. Ut quidem eius dolor inventore libero repellendus occaecati. Sapiente in deleniti voluptatem consequatur sint quia eum sint.', NULL, '0.00', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('2', '2', 4, 3, 'Tempora dolore ut quibusdam nobis nemo. Perferendis quam consectetur facere autem enim consequatur. Non deserunt et amet enim eum. Saepe voluptas alias nobis cum aliquid omnis et.', NULL, '13035.20', 'sale');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('3', '3', 8, 6, 'Et ipsam pariatur quia facilis. Aut labore qui amet tempora inventore. Aut consectetur eius et consequuntur. Rerum illo dolore quibusdam voluptatem occaecati perferendis.', NULL, '562961.85', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('4', '4', 7, 5, 'Laudantium voluptatem id possimus porro. Distinctio deleniti vel assumenda aut.', NULL, '779287719.89', 'sale');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('5', '5', 6, 4, 'Et ullam minima nobis. Eaque eum pariatur et non magni. Aut eum tempora nihil. Dignissimos ducimus tempore rem eligendi necessitatibus assumenda. Voluptas quo id pariatur exercitationem.', NULL, '3.14', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('6', '6', 8, 6, 'Sit sit architecto praesentium quas praesentium. Laboriosam voluptatum laudantium illo aut sapiente eos. Cupiditate officiis voluptas soluta harum. Vel nesciunt delectus dolore atque. Aut nam quia dolores reprehenderit cumque.', NULL, '328.40', 'sale');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('7', '7', 6, 7, 'Voluptas maiores nobis excepturi suscipit ipsam ut qui. Ut quos voluptate perspiciatis ullam amet est. Non asperiores ut dolor necessitatibus. Quia perspiciatis earum incidunt enim qui.', NULL, '2721.99', 'sale');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('8', '8', 7, 1, 'Illum nemo saepe in sit eum quod quis. Quo dolorem sit nostrum nam ut. Eos aut incidunt provident qui dolor deserunt adipisci. Ut sint excepturi consectetur itaque ad ipsa.', NULL, '112015.99', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('9', '9', 5, 4, 'Dignissimos fugiat voluptatem saepe nisi sed nihil. Voluptas veniam ut est quibusdam aut. Assumenda consequatur possimus voluptatem optio cumque. Et natus quaerat quos natus dolores nostrum nihil.', NULL, '11088.90', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('10', '10', 7, 0, 'Quam culpa libero provident dolores beatae consequatur ducimus voluptatem. Perferendis perferendis voluptatum et recusandae et. Aut neque voluptatem eos id voluptas est.', NULL, '0.00', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('11', '11', 6, 5, 'Voluptatum deleniti tempora voluptates laborum. Ut assumenda adipisci inventore dicta molestiae. Voluptatem dolore sit accusantium eligendi sunt. Asperiores iste eum illo minus et nihil et quo.', NULL, '242.28', 'sale');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('12', '12', 9, 5, 'Modi ipsum libero sunt est tenetur provident. In in non ut voluptate et. Veritatis unde enim dolorem eos reprehenderit.', NULL, '35777.15', 'sale');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('13', '13', 6, 9, 'Est sint deleniti distinctio aliquam. Veritatis quidem non nesciunt minus consequatur. Rerum ut pariatur delectus et fuga qui. Optio facilis quae assumenda amet reprehenderit voluptatem quasi.', NULL, '183202.03', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('14', '14', 7, 0, 'Repellendus ad consequatur sunt quisquam. Rerum et suscipit reiciendis illo. Aspernatur eos exercitationem repudiandae beatae nisi blanditiis. Molestiae consequuntur molestiae fugiat aut expedita.', NULL, '1507767.14', 'sale');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('15', '15', 8, 2, 'Cum nisi qui neque ratione id quia error. Reprehenderit nostrum deserunt animi qui repellat non nihil. Sint impedit hic debitis est fuga laudantium in.', NULL, '625495.95', 'sale');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('16', '16', 5, 4, 'Rerum quod explicabo quidem ut quia eveniet maxime. Veniam sint asperiores inventore. Saepe aliquid quas et.', NULL, '5255.06', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('17', '17', 4, 3, 'Dolorem aperiam voluptatibus non deserunt saepe blanditiis sint qui. Dolorum sunt optio sint dolor dolorum. Voluptas sapiente nihil magni sint voluptatem.', NULL, '113.00', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('18', '18', 9, 6, 'Maxime eaque et maiores qui tenetur vel libero. Ullam fugit omnis magnam consectetur. Repellendus suscipit quo saepe aliquid.', NULL, '0.21', 'sale');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('19', '19', 2, 1, 'Eos consequatur voluptatem et. Omnis magni illo eaque qui qui aut cumque. Autem asperiores ullam nihil exercitationem mollitia nulla qui quia. Vero sed qui quia nihil.', NULL, '0.00', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('20', '20', 7, 5, 'Praesentium perspiciatis ratione sit illo est unde in. Facere ratione alias esse consectetur non at. Sunt est est ex amet maxime.', NULL, '184572885.72', 'sale');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('21', '1', 7, 2, 'Esse sunt voluptatem perferendis ipsam molestiae eaque. Aut voluptatem et quia temporibus non labore exercitationem. Dolorem autem dolor dolorem quia et quidem maxime.', NULL, '17903.51', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('22', '2', 9, 4, 'Aut et cupiditate eos dolorem non. Laudantium rem repellendus at id laborum repudiandae. Maiores autem sed incidunt unde. Sit ullam reiciendis ut blanditiis. Officia non quia voluptatem ut.', NULL, '121368.91', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('23', '3', 4, 7, 'Aut nulla sequi perferendis voluptate quis qui doloremque. Nulla provident consequatur ipsam molestias nam nam. Architecto autem qui et corrupti.', NULL, '2711750.73', 'sale');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('24', '4', 5, 8, 'Omnis nesciunt modi sed reprehenderit in molestiae illo adipisci. Ut vero soluta nihil ut nam est nostrum. Dolorem aut placeat aliquid voluptatum sed nam voluptas.', NULL, '6.00', 'sale');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('25', '5', 5, 6, 'Eligendi nihil culpa officiis architecto natus vel. Ad quam rem quo rem asperiores. Adipisci dignissimos deserunt eveniet quae iste asperiores.', NULL, '0.19', 'sale');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('26', '6', 4, 6, 'Qui libero repudiandae voluptatem qui est. Aut et incidunt saepe labore qui labore. Illum odit quo nihil nisi velit quas velit voluptatibus. Ipsa suscipit quia laudantium.', NULL, '45.95', 'sale');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('27', '7', 7, 5, 'Impedit sequi enim aut et delectus aspernatur explicabo expedita. Omnis cupiditate earum ducimus dolore itaque corporis amet. Ex eveniet velit rem corporis ex. Exercitationem non cupiditate qui blanditiis perspiciatis labore.', NULL, '30589.01', 'sale');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('28', '8', 6, 0, 'Dolorum provident quia fugit et saepe. Et enim aut aperiam consequatur quos beatae. Non est voluptatem et laboriosam quo enim quas enim. Eum quia sed a inventore. Maxime voluptas delectus aliquam architecto.', NULL, '3278.26', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('29', '9', 1, 0, 'Harum quo voluptatem sit doloremque. Eos vero quisquam pariatur quia ut sapiente aut. At ab veritatis cumque veniam nihil. Iusto consequatur veniam laborum at ab reiciendis.', NULL, '35872.27', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('30', '10', 1, 4, 'Doloremque quaerat fuga fugit facere. Et omnis aut minus omnis et et delectus. Quasi earum quidem corporis eaque blanditiis et quas.', NULL, '16055830.00', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('31', '11', 9, 7, 'Aut ab est dolorum. Blanditiis nihil rem aliquam reprehenderit quia nemo eum. Minus voluptatem enim itaque enim ea dolor. Laborum quis voluptatibus sequi ut.', NULL, '333112.26', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('32', '12', 3, 3, 'Esse magni ea et illum beatae. Incidunt qui non molestiae debitis sapiente recusandae quia. Est consequatur consequatur dolores facere. Distinctio ipsam dolorem asperiores eius enim harum laboriosam.', NULL, '105.20', 'sale');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('33', '13', 6, 4, 'Quos ut quo distinctio repudiandae molestiae quos fuga perferendis. Minima corporis quidem excepturi sed nihil at. Eos architecto molestias incidunt quas.', NULL, '1906276.11', 'sale');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('34', '14', 3, 9, 'Voluptatem dolorem officiis consequatur adipisci velit aut. Ipsam vero quia et. Repellat necessitatibus dolor illo asperiores. Qui iure aperiam consequatur minima nulla in quo.', NULL, '2601.58', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('35', '15', 3, 0, 'Natus est voluptas est placeat magnam quod iste. Magni facilis rerum at dolore qui nisi. Dolorem autem cupiditate sed nihil nostrum harum reiciendis.', NULL, '50.37', 'sale');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('36', '16', 5, 1, 'Nulla vel itaque qui numquam quos dolorum. Nostrum odio nihil quo assumenda et veniam fugiat. Porro sit exercitationem veritatis voluptas. Illum voluptas debitis ut veniam.', NULL, '0.00', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('37', '17', 2, 8, 'Fugiat quibusdam quasi qui quisquam sint minima odit. Accusamus eaque possimus consectetur.', NULL, '5284693.09', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('38', '18', 3, 5, 'Nam dolores molestias nihil voluptatem velit. Non deleniti hic ipsa nesciunt. Alias quas ducimus id quisquam.', NULL, '0.10', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('39', '19', 8, 8, 'Omnis dicta sit voluptates et modi. Deleniti exercitationem porro quasi rerum. Facilis recusandae unde omnis nesciunt molestiae ducimus aut.', NULL, '0.00', 'sale');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('40', '20', 7, 0, 'Est ipsa nihil cumque maxime exercitationem. Porro occaecati et non sit vero quis quas autem. Quas a quae voluptates aliquam asperiores nemo.', NULL, '17150803.00', 'sale');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('41', '1', 4, 0, 'Quis incidunt est voluptatum quod voluptas voluptatem. Alias id voluptatibus qui dolor rerum. Aut est delectus aspernatur aperiam quia qui iusto. Nihil velit et quo possimus.', NULL, '4.91', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('42', '2', 8, 8, 'Culpa nam voluptatum quasi aut. Corrupti excepturi et et inventore perferendis harum consequatur ducimus. Aut consectetur vel ab nisi at dolores corporis.', NULL, '20.50', 'sale');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('43', '3', 8, 4, 'Nihil similique nobis ad rerum deleniti incidunt. Iure qui corrupti sed sunt sit aut magnam. Et iure qui delectus at accusamus quae consequatur quibusdam.', NULL, '30697190.15', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('44', '4', 3, 1, 'Et odit alias aut. Molestias aut veniam et a. Omnis quibusdam unde qui voluptatem.', NULL, '6.30', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('45', '5', 2, 5, 'Cumque nesciunt saepe et est architecto. Consequuntur quam aut explicabo consequatur sed. Dolores consequatur quo sed aperiam.', NULL, '1578.83', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('46', '6', 8, 5, 'In iure vel explicabo necessitatibus voluptas expedita sed. Earum earum dolore explicabo eveniet non nihil natus. Nihil qui in nihil aut tempora. Ad maxime reprehenderit in et corrupti alias fugiat.', NULL, '152157440.47', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('47', '7', 3, 8, 'Laboriosam ipsa delectus beatae explicabo reprehenderit eius nam. Voluptas voluptas eaque qui unde aut a hic facilis. Et corporis consequuntur voluptate cum totam fuga.', NULL, '1204169.77', 'rent');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('48', '8', 2, 7, 'Rerum iure eos dolorum velit autem nostrum corporis dolore. Dolorem repudiandae vitae et eos nam enim.', NULL, '359345.00', 'sale');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('49', '9', 8, 4, 'Dolores earum dolor eligendi et dolorem. Sunt aspernatur consequatur velit soluta ipsum et quisquam. Omnis nam incidunt sint aut. Repudiandae assumenda rerum animi quis.', NULL, '1582.48', 'sale');
INSERT INTO `apartments` (`id`, `house_id`, `rooms`, `floor`, `description`, `apart_num`, `price`, `status`) VALUES ('50', '10', 2, 5, 'Sint dolorum cumque rem quae eos. Et aut nostrum sint nostrum qui voluptatem. Id odio libero est fugiat omnis. Odit eveniet cumque eos illum similique modi.', NULL, '5863283.32', 'rent');


#
# TABLE STRUCTURE FOR: clients
#

DROP TABLE IF EXISTS `clients`;

CREATE TABLE `clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Имя',
  `surname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Отчество',
  `lastname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `users_phone_idx` (`phone`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('101', 'Terry', 'cum', 'Grant', 'corkery.ken@example.com', '537', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('102', 'Deborah', 'quia', 'Waters', 'saul28@example.com', '433', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('103', 'Aglae', 'atque', 'Corwin', 'fwiza@example.org', '159', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('104', 'Julie', 'maiores', 'White', 'dessie54@example.com', '886', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('105', 'Elvera', 'sit', 'Koelpin', 'ollie12@example.net', '33', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('106', 'Jeramie', 'et', 'Morar', 'pierce01@example.com', '132802', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('107', 'Ruthie', 'molestiae', 'Cruickshank', 'darmstrong@example.net', '811', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('108', 'Barton', 'quibusdam', 'Gleason', 'idavis@example.net', '43', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('109', 'Geovany', 'dolorem', 'Armstrong', 'werner.gutmann@example.org', '537882', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('110', 'Marilou', 'animi', 'Fahey', 'marvin.gus@example.org', '467411', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('111', 'Bennie', 'et', 'Predovic', 'jasmin10@example.net', '760556', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('112', 'Imani', 'dolores', 'McDermott', 'laurel28@example.net', '1', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('113', 'Geoffrey', 'enim', 'Cronin', 'hintz.trycia@example.net', '0', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('114', 'Augustine', 'reiciendis', 'Lehner', 'baumbach.sylvia@example.net', '6425329981', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('115', 'Lysanne', 'quibusdam', 'Marquardt', 'andreane60@example.com', '317', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('116', 'Vincenza', 'fugit', 'Thompson', 'alba82@example.com', '833717', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('119', 'Cloyd', 'mollitia', 'Goldner', 'marquardt.alvina@example.net', '786', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('120', 'Erna', 'repellendus', 'Nikolaus', 'wiza.rod@example.com', '911443', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('121', 'Madyson', 'odit', 'Bashirian', 'flo38@example.org', '34', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('123', 'Rhoda', 'doloremque', 'Schaefer', 'wehner.abe@example.net', '259470', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('124', 'Conner', 'neque', 'Cole', 'rosalind53@example.net', '366559', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('125', 'Jeromy', 'tempore', 'Crona', 'christophe.corwin@example.net', '453', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('126', 'Adell', 'corrupti', 'Stiedemann', 'mertie31@example.com', '298', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('127', 'Thomas', 'architecto', 'Carroll', 'tmetz@example.com', '666091', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('129', 'Muriel', 'vel', 'Connelly', 'tkilback@example.com', '2', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('130', 'Nicole', 'occaecati', 'Kohler', 'laila.kris@example.org', '91', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('131', 'Lulu', 'iure', 'Moen', 'joaquin.kozey@example.com', '842371', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('132', 'Bernadette', 'libero', 'Kautzer', 'jace85@example.com', '9098339914', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('134', 'Kayleigh', 'dolor', 'Pfannerstill', 'yschmeler@example.org', '667996', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('135', 'Adrienne', 'excepturi', 'Hessel', 'ward.blanche@example.org', '125267', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('136', 'Vern', 'unde', 'Pouros', 'kelley70@example.org', '726', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('137', 'Elfrieda', 'ducimus', 'Breitenberg', 'lschroeder@example.org', '727', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('143', 'Saige', 'architecto', 'Jakubowski', 'dickinson.kristopher@example.com', '58', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('144', 'Delfina', 'modi', 'Schulist', 'farrell.rachael@example.net', '9428349078', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('146', 'Elisabeth', 'cum', 'Dooley', 'johann33@example.com', '834', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('148', 'Lacy', 'sed', 'Rohan', 'vonrueden.rosalind@example.org', '6284341272', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('149', 'Oswaldo', 'mollitia', 'Bode', 'hledner@example.org', '972', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('152', 'Johnnie', 'aut', 'Frami', 'alyson66@example.org', '4711742139', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('154', 'Tom', 'cumque', 'Skiles', 'pschuster@example.org', '514867', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('155', 'Clifford', 'laudantium', 'Eichmann', 'gina01@example.org', '231576', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('157', 'Zoe', 'inventore', 'Koelpin', 'roscoe.feil@example.org', '8804447737', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('159', 'Caden', 'enim', 'Goldner', 'dorthy.anderson@example.org', '2923278631', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('160', 'Dena', 'vel', 'Ziemann', 'hermiston.filiberto@example.com', '9866013116', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('161', 'Mekhi', 'aliquam', 'Kerluke', 'brielle03@example.com', '53', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('165', 'Fanny', 'recusandae', 'Hilpert', 'emie34@example.com', '2700367021', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('166', 'Oswald', 'aut', 'Greenfelder', 'fwalsh@example.com', '821119', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('169', 'Prince', 'quaerat', 'Lang', 'bstiedemann@example.com', '369919', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('170', 'Frieda', 'doloribus', 'Spinka', 'tanya39@example.org', '444336', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('174', 'Greg', 'illum', 'Purdy', 'langosh.rosella@example.com', '569', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('175', 'Luna', 'minima', 'Greenfelder', 'lind.arlie@example.net', '989804', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('177', 'Rebeka', 'similique', 'Smith', 'ro\'hara@example.com', '641559', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('178', 'Emily', 'reiciendis', 'Schamberger', 'marlin.daniel@example.net', '18', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('179', 'Casimir', 'quo', 'Carter', 'brant.botsford@example.net', '419', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('182', 'Camila', 'voluptas', 'Lowe', 'dickens.izaiah@example.com', '831', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('183', 'Destin', 'et', 'Littel', 'karianne91@example.com', '2903438951', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('184', 'Anastacio', 'aperiam', 'Kris', 'vschinner@example.net', '587752', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('185', 'Nigel', 'qui', 'Kozey', 'dosinski@example.com', '801', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('187', 'Winifred', 'mollitia', 'Hintz', 'paris.homenick@example.com', '978', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('189', 'Napoleon', 'ut', 'Frami', 'ewitting@example.net', '52', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('190', 'Domingo', 'tenetur', 'Luettgen', 'janick.kerluke@example.com', '461', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('191', 'Casandra', 'eos', 'D\'Amore', 'cassandra93@example.org', '137', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('196', 'Dylan', 'aliquid', 'Dibbert', 'albina.toy@example.com', '891273', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('198', 'Kari', 'repudiandae', 'Stiedemann', 'keshawn28@example.org', '401347', NULL);
INSERT INTO `clients` (`id`, `firstname`, `surname`, `lastname`, `email`, `phone`, `comments`) VALUES ('199', 'Edd', 'et', 'Corkery', 'esporer@example.com', '569218', NULL);


#
# TABLE STRUCTURE FOR: discounts
#

DROP TABLE IF EXISTS `discounts`;

CREATE TABLE `discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `apart_id` bigint(20) unsigned NOT NULL,
  `discount` float unsigned DEFAULT NULL COMMENT 'Величина скидки от 0.0 до 1.0',
  `started_at` datetime DEFAULT NULL,
  `finished_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `apart_id` (`apart_id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `discounts_ibfk_1` FOREIGN KEY (`apart_id`) REFERENCES `apartments` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `discounts_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `discounts` (`id`, `client_id`, `apart_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES ('1', '101', '1', '369', '1980-12-14 04:20:29', '1983-02-08 09:02:11', '2019-04-23 19:39:21', '2002-01-13 06:19:45');
INSERT INTO `discounts` (`id`, `client_id`, `apart_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES ('2', '102', '2', '769', '1982-05-05 08:29:55', '2002-06-18 12:14:56', '1986-08-13 09:46:12', '2001-10-14 23:42:32');
INSERT INTO `discounts` (`id`, `client_id`, `apart_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES ('3', '103', '3', '3295', '2014-10-11 20:14:45', '1977-07-22 01:23:22', '1986-01-02 13:47:58', '2016-10-07 20:16:23');
INSERT INTO `discounts` (`id`, `client_id`, `apart_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES ('4', '104', '4', '11798', '1971-06-29 23:51:34', '2014-07-14 00:27:21', '2005-11-16 03:07:48', '1981-04-13 16:56:02');
INSERT INTO `discounts` (`id`, `client_id`, `apart_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES ('5', '105', '5', '79', '2001-01-10 18:02:13', '1989-05-19 00:09:32', '1988-04-07 21:40:32', '1997-08-17 14:36:13');
INSERT INTO `discounts` (`id`, `client_id`, `apart_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES ('6', '106', '6', '31987', '2003-04-09 00:26:23', '2014-04-06 05:34:48', '2005-05-18 22:05:02', '1984-08-31 06:15:30');
INSERT INTO `discounts` (`id`, `client_id`, `apart_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES ('7', '107', '7', '0', '2005-09-28 18:22:11', '2002-03-18 10:22:45', '2015-03-16 13:59:35', '1994-02-21 04:42:10');
INSERT INTO `discounts` (`id`, `client_id`, `apart_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES ('8', '108', '8', '7675380', '1979-03-01 15:40:44', '1988-10-13 12:42:45', '1978-05-10 11:18:42', '1976-05-11 19:25:26');
INSERT INTO `discounts` (`id`, `client_id`, `apart_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES ('9', '109', '9', '99798', '2016-05-10 16:02:50', '2003-03-23 05:32:37', '1993-11-30 23:45:29', '2019-01-02 11:28:04');
INSERT INTO `discounts` (`id`, `client_id`, `apart_id`, `discount`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES ('10', '110', '10', '345180', '1987-05-30 17:34:16', '1972-02-20 07:28:08', '1980-12-26 15:02:32', '2002-11-14 21:07:34');


#
# TABLE STRUCTURE FOR: houses
#

DROP TABLE IF EXISTS `houses`;

CREATE TABLE `houses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `floors` bigint(20) unsigned NOT NULL,
  `project_id` bigint(20) unsigned NOT NULL,
  `status` enum('done','in progress','not started') COLLATE utf8_unicode_ci DEFAULT NULL,
  `done_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `houses_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `houses` (`id`, `name`, `address`, `floors`, `project_id`, `status`, `done_date`) VALUES ('1', 'fuga', '922 Price Heights\nNorth Earnestine, MS 80900-4083', '2', '1', 'done', '2002-06-18');
INSERT INTO `houses` (`id`, `name`, `address`, `floors`, `project_id`, `status`, `done_date`) VALUES ('2', 'dolorem', '52895 Julius Meadows\nLake Eino, NH 71805', '5', '2', 'done', '1970-02-09');
INSERT INTO `houses` (`id`, `name`, `address`, `floors`, `project_id`, `status`, `done_date`) VALUES ('3', 'officiis', '86854 Valerie Green\nNorth Chyna, VA 20127-1874', '3', '3', 'in progress', '1979-09-02');
INSERT INTO `houses` (`id`, `name`, `address`, `floors`, `project_id`, `status`, `done_date`) VALUES ('4', 'eaque', '0001 Jailyn Rue\nMartaborough, AZ 02119-4225', '6', '4', 'done', '2019-08-06');
INSERT INTO `houses` (`id`, `name`, `address`, `floors`, `project_id`, `status`, `done_date`) VALUES ('5', 'fugit', '1262 Marquardt Corner\nBednarville, WI 51040', '1', '5', 'not started', '1989-08-05');
INSERT INTO `houses` (`id`, `name`, `address`, `floors`, `project_id`, `status`, `done_date`) VALUES ('6', 'sit', '250 Moen Island Suite 843\nRosemarystad, CT 06547-3806', '4', '6', 'in progress', '2003-03-20');
INSERT INTO `houses` (`id`, `name`, `address`, `floors`, `project_id`, `status`, `done_date`) VALUES ('7', 'quas', '3517 Buddy Shores Apt. 792\nIsaiahtown, TX 25438-2647', '5', '7', 'not started', '1989-09-01');
INSERT INTO `houses` (`id`, `name`, `address`, `floors`, `project_id`, `status`, `done_date`) VALUES ('8', 'et', '0615 Darian Viaduct Suite 447\nSouth Cielo, KY 52466-3115', '2', '8', 'in progress', '1970-01-06');
INSERT INTO `houses` (`id`, `name`, `address`, `floors`, `project_id`, `status`, `done_date`) VALUES ('9', 'pariatur', '03300 Ethelyn Road Suite 485\nNew Laurie, PA 64250', '3', '9', 'not started', '1992-08-16');
INSERT INTO `houses` (`id`, `name`, `address`, `floors`, `project_id`, `status`, `done_date`) VALUES ('10', 'reprehenderit', '838 Strosin Vista\nLake Riley, OR 11944-1317', '1', '10', 'done', '1990-06-18');
INSERT INTO `houses` (`id`, `name`, `address`, `floors`, `project_id`, `status`, `done_date`) VALUES ('11', 'nemo', '4064 Cruz Ridge Suite 106\nKrajcikberg, VA 23723-6672', '2', '1', 'in progress', '2019-09-20');
INSERT INTO `houses` (`id`, `name`, `address`, `floors`, `project_id`, `status`, `done_date`) VALUES ('12', 'neque', '74167 Brown Harbor\nReingerton, CA 85454', '2', '2', 'not started', '2012-04-02');
INSERT INTO `houses` (`id`, `name`, `address`, `floors`, `project_id`, `status`, `done_date`) VALUES ('13', 'dolore', '0120 Otha Forest\nIsadoreview, TX 07648-4334', '1', '3', 'done', '1998-08-20');
INSERT INTO `houses` (`id`, `name`, `address`, `floors`, `project_id`, `status`, `done_date`) VALUES ('14', 'molestiae', '706 Paucek Mountains Suite 434\nSipesburgh, OH 89096-6570', '2', '4', 'not started', '1994-01-27');
INSERT INTO `houses` (`id`, `name`, `address`, `floors`, `project_id`, `status`, `done_date`) VALUES ('15', 'velit', '64253 Lucie Place\nEvertton, ID 55482', '8', '5', 'done', '2006-04-09');
INSERT INTO `houses` (`id`, `name`, `address`, `floors`, `project_id`, `status`, `done_date`) VALUES ('16', 'aliquam', '362 Denesik Vista\nSelenamouth, VT 79769', '8', '6', 'not started', '2001-01-24');
INSERT INTO `houses` (`id`, `name`, `address`, `floors`, `project_id`, `status`, `done_date`) VALUES ('17', 'nihil', '4222 Ulices Neck\nNew Caterinastad, WA 28857', '7', '7', 'not started', '1989-09-25');
INSERT INTO `houses` (`id`, `name`, `address`, `floors`, `project_id`, `status`, `done_date`) VALUES ('18', 'ea', '2475 Beatty Plaza Suite 963\nKoeppside, SC 68777-9850', '6', '8', 'done', '1982-11-13');
INSERT INTO `houses` (`id`, `name`, `address`, `floors`, `project_id`, `status`, `done_date`) VALUES ('19', 'reprehenderit', '937 Abbott Isle Apt. 410\nRubiebury, OR 18035-1603', '9', '9', 'in progress', '1984-07-09');
INSERT INTO `houses` (`id`, `name`, `address`, `floors`, `project_id`, `status`, `done_date`) VALUES ('20', 'neque', '39410 Hagenes Course\nBrucestad, HI 38838', '6', '10', 'in progress', '2002-08-04');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned NOT NULL,
  `apart_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `apart_id` (`apart_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`apart_id`) REFERENCES `apartments` (`id`),
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '1', '1', 'Alias tenetur quam autem voluptatem laborum est. Sed dolorum sint quas non rem. Omnis amet iste alias nihil tenetur expedita culpa voluptas. Nihil cum voluptas ut suscipit voluptatem laudantium maxime.', 'fuga', 7, NULL, '1986-11-23 15:31:43', '1979-04-26 04:21:13');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '2', '2', 'Eius porro neque nam est labore quod vel et. Sed explicabo dicta soluta nisi exercitationem vel. Et est aspernatur nihil consectetur alias. Laboriosam cupiditate rerum aut similique exercitationem.', 'quia', 2, NULL, '1981-12-29 20:32:23', '1982-08-24 04:37:44');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '1', '3', 'Expedita error iure error cum enim necessitatibus. Dolores dolores iusto autem autem eligendi aut. Quaerat aut blanditiis quia debitis ullam sit est. Qui voluptates saepe repellendus magnam debitis.', 'ut', 33, NULL, '2019-05-14 14:47:12', '2008-04-05 23:37:15');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '2', '4', 'Non rem voluptatem dolores. Amet nobis qui quia quia cum ipsa dolorem. Molestiae ut ea perferendis mollitia eaque itaque.', 'cum', 60181, NULL, '2018-07-11 09:45:30', '2011-08-15 12:35:44');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '1', '5', 'Voluptates quis voluptatem aut illo aut blanditiis. Magni modi est sint dolor. Aut asperiores modi velit necessitatibus error ullam illum. Sequi expedita distinctio sit sit aut doloribus.', 'nihil', 38, NULL, '1974-09-25 11:49:54', '1976-11-27 11:19:47');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '2', '6', 'A nihil aut aliquid necessitatibus neque. Quis enim qui est rerum. Perspiciatis sunt voluptatum dolores natus animi impedit ea.', 'soluta', 543, NULL, '1990-01-28 18:52:13', '2009-01-12 17:44:51');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '1', '7', 'Voluptas harum ut sed nobis amet voluptas eum sit. Vel sed nostrum dolorem vero. Optio dolores excepturi voluptatem sit. Assumenda ab odio id animi iusto inventore.', 'voluptatem', 77610, NULL, '1977-05-23 16:08:20', '2001-12-10 07:10:33');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '2', '8', 'Reprehenderit laudantium possimus et. At consequatur libero dolore sequi ea ipsam earum. Asperiores maiores est ut reiciendis fugiat sed qui. Culpa veniam et ut ut et placeat.', 'impedit', 5, NULL, '1970-01-28 01:27:08', '1991-03-03 23:10:39');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '1', '9', 'Deleniti tempore iste laborum quia est. Assumenda id non deleniti aut. Est dicta a autem saepe asperiores fugit consequatur velit.', 'ut', 32897, NULL, '2003-12-18 14:14:16', '1977-12-01 19:00:25');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '2', '10', 'Id consequuntur aut enim animi. Beatae tempora laudantium ut rerum voluptatem maxime ut. Et dolore eos consectetur laudantium dolorem perferendis. Aut est rerum sunt sunt natus dicta. Rerum eum accusantium consequatur necessitatibus rem molestiae adipisci.', 'est', 265, NULL, '1973-12-02 04:00:01', '1984-07-04 12:56:34');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '1', '11', 'Molestiae placeat quibusdam rem dolorem non nam ad. Dignissimos id tenetur omnis similique exercitationem assumenda itaque. Voluptatem dignissimos rerum officia quia repellat corporis voluptates exercitationem. Et laudantium assumenda inventore sint nisi veritatis.', 'autem', 46351, NULL, '1979-03-19 17:20:26', '1973-01-02 08:28:49');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '2', '12', 'Fuga sed earum deleniti. Enim explicabo earum quasi sunt omnis ratione sed. Laboriosam ducimus rem culpa dolor sint veniam qui.', 'provident', 883176666, NULL, '1975-05-30 14:51:27', '2019-01-18 22:58:09');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '1', '13', 'Voluptatem in non totam ad odio. Aut blanditiis voluptatibus eum ad a. Vel et molestias et officiis sed dolorum aliquid. Itaque vel vel animi necessitatibus qui architecto.', 'rerum', 382664, NULL, '1993-06-05 00:25:25', '1976-09-07 10:27:25');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '2', '14', 'Sit earum eius voluptas nam. Aut aperiam omnis commodi. Odit ea et quod quo.', 'ad', 3, NULL, '1987-02-16 01:29:49', '1971-04-26 18:51:42');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '1', '15', 'Et quibusdam neque dolorem. Suscipit aut error minus totam. Harum quia eveniet perspiciatis aut.', 'ut', 9176, NULL, '1989-12-12 14:44:30', '2012-04-18 19:19:11');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '2', '16', 'Occaecati autem dolor iusto dolores. Ea vel illum qui velit quia minima hic. Commodi et a repellat beatae quae hic tempora.', 'beatae', 31, NULL, '2000-07-24 17:38:14', '1991-04-10 02:07:05');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '1', '17', 'Laboriosam amet assumenda et in voluptas. Laboriosam ut velit et blanditiis. Atque eligendi voluptas aut qui omnis illo.', 'laborum', 1365564, NULL, '1984-01-10 00:39:00', '2011-02-08 15:29:36');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '2', '18', 'Ex consequatur dicta asperiores. Corrupti alias et enim quo ducimus dolores tenetur. Corporis quo ex eum eveniet repudiandae quod eaque.', 'ipsa', 323, NULL, '1993-01-16 11:13:01', '2012-12-24 04:29:19');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '1', '19', 'Non tenetur et aliquam eos aut recusandae. Suscipit qui beatae minima aut fuga. Quia ipsam cumque omnis et sed laborum quia. Enim fuga omnis et est sed placeat. Non nulla et suscipit deserunt velit doloremque est.', 'aut', 731767, NULL, '1987-07-24 10:33:07', '1997-01-12 05:28:35');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '2', '20', 'Suscipit ducimus deserunt ut qui maxime. Suscipit officiis sed similique. Enim sed ut nisi laboriosam illo dolore.', 'doloribus', 124588157, NULL, '1991-05-21 07:37:51', '1982-08-17 02:07:34');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '1', '21', 'Maiores sequi ea iure consequatur. Repudiandae voluptas corporis nisi aspernatur ab vero suscipit reiciendis. Dolorem dolorem quo fugit necessitatibus accusamus velit iste.', 'libero', 40340, NULL, '2003-06-23 07:25:09', '2003-10-22 22:10:24');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '2', '22', 'Culpa voluptates et aut repellendus. Aut sint aliquid eos occaecati. Iusto omnis corporis non aliquid quae consequatur. Nulla id minus repudiandae ipsam velit.', 'ut', 9175565, NULL, '1998-02-13 01:39:59', '2006-11-18 09:59:57');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '1', '23', 'Qui fugit officiis id distinctio blanditiis sequi quos. Consequatur officiis voluptas soluta odit qui expedita ratione. Cupiditate consequuntur ex ipsum dicta animi magnam vitae.', 'exercitationem', 8505, NULL, '2011-04-06 06:45:03', '1998-11-27 09:00:35');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '2', '24', 'Amet suscipit quibusdam neque ducimus unde blanditiis suscipit. Sequi magni id ut sed in necessitatibus. Quaerat ipsam expedita ex minus nam rerum. Nesciunt laboriosam cum omnis minus magni et et.', 'fuga', 0, NULL, '1983-04-21 17:15:28', '2000-05-28 10:46:16');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '1', '25', 'Ut aspernatur sit ea ex voluptas. Cum ut voluptas vel ipsam impedit delectus. Minus fugiat temporibus iusto nulla eum.', 'maxime', 205625129, NULL, '1973-01-19 20:37:34', '2016-10-01 14:10:30');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '2', '26', 'Tenetur officiis debitis molestias beatae tempore quibusdam. Doloremque voluptatem aperiam aut quis aut sed dolore velit. Laborum quod at molestias qui odio saepe nulla. Nobis corrupti impedit provident sed aspernatur deleniti corrupti.', 'unde', 328028, NULL, '1987-06-18 15:07:32', '1975-03-26 18:13:04');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '1', '27', 'Voluptas consequuntur ipsa voluptatibus et at sapiente nihil. Sed veritatis et consequatur quisquam est quaerat. Magnam fuga ab ipsam.', 'quo', 97973201, NULL, '1997-10-23 04:00:05', '2004-10-21 23:01:26');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '2', '28', 'Maxime quam corporis est enim ut ab non. Rerum eius eos facilis cumque dolor. Fuga sit nostrum vel corrupti fugiat error vitae quia.', 'corrupti', 17028, NULL, '1973-08-03 08:29:55', '1971-10-29 23:10:20');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '1', '29', 'Ea quibusdam corporis qui sint. Necessitatibus odit voluptas veniam provident perspiciatis veritatis eos. Ea eligendi vitae rerum sint velit ad quia. Dolorem maxime eligendi est corrupti.', 'cumque', 596123326, NULL, '2009-12-15 05:34:53', '1985-03-07 02:03:26');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '2', '30', 'Consectetur sed temporibus similique recusandae dolorem dolorum. Possimus ex quisquam architecto nam velit. Blanditiis cum magnam facere.', 'est', 532, NULL, '1989-09-11 04:53:41', '2008-12-18 12:47:58');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '1', '31', 'Voluptatem excepturi officia quia et id. Quia repellat suscipit eos quia saepe eum. Dignissimos provident in illum voluptatem cupiditate exercitationem aspernatur.', 'numquam', 2, NULL, '1985-11-28 06:22:22', '1991-09-21 01:31:14');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '2', '32', 'Id maxime dignissimos non et laudantium consequuntur. Eligendi et et omnis soluta vitae ut dolores. Tempora nesciunt labore ad ut enim qui.', 'quo', 1108, NULL, '2006-03-14 13:23:29', '2010-04-06 01:39:02');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '1', '33', 'Et ut molestiae molestias fugiat voluptas commodi. Impedit non ipsum alias. Vel vitae similique inventore perferendis consectetur repellat voluptas.', 'est', 7122251, NULL, '1995-11-02 09:05:34', '1977-08-26 09:01:01');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '2', '34', 'Fugit magnam voluptatem suscipit alias. Omnis quia autem molestiae autem esse nesciunt ad. Maiores id quia perferendis eos. Est non aut a id.', 'labore', 6, NULL, '2012-05-15 10:21:55', '1997-02-21 22:03:21');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '1', '35', 'Quo saepe enim doloremque sed blanditiis repudiandae quo. Autem tenetur est ab blanditiis quia sit nihil.', 'modi', 70, NULL, '2008-10-23 06:48:41', '2003-01-28 22:34:16');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '2', '36', 'Alias qui in repellat quam quas eligendi suscipit. Unde commodi inventore pariatur. Facilis quidem laborum eos magnam molestiae sed optio amet. Suscipit libero sunt hic nemo fuga non quos.', 'et', 0, NULL, '1979-09-01 22:01:29', '1970-01-03 21:25:50');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '1', '37', 'Necessitatibus sapiente aliquam illum ipsa et. Beatae suscipit officia recusandae. Nam aut consequuntur nobis exercitationem asperiores at harum nihil. Sed eos earum nostrum maxime rerum. Ad quae omnis soluta nisi facilis incidunt.', 'possimus', 9375, NULL, '1984-05-08 08:01:56', '2008-08-30 01:44:31');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '2', '38', 'Sint maiores voluptatem enim labore porro fugit qui. Quaerat enim voluptas vel minus. Atque dolor sed voluptatibus nobis. Cum ut eos ut mollitia.', 'et', 0, NULL, '2000-03-17 07:10:15', '2019-12-19 17:08:01');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '1', '39', 'Ex eos qui consectetur laborum ullam delectus eius dolore. Aut qui pariatur voluptatem dignissimos est quae. Odio doloribus animi nostrum sunt.', 'ea', 61, NULL, '1976-11-05 04:31:28', '1982-10-09 06:50:47');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '2', '40', 'Voluptate fugit a dignissimos vero aut est. Facere et quas nisi quam.', 'assumenda', 15, NULL, '1984-11-13 17:15:49', '2015-07-17 14:06:27');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '1', '41', 'Totam molestiae et est tempore. Quo natus qui dolor aspernatur amet. Officiis doloremque eum in consequuntur.', 'beatae', 8, NULL, '2002-10-12 08:12:10', '2010-02-12 03:54:51');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '2', '42', 'Et rem a fugiat culpa qui. Aut quo quis voluptatem officiis sit. Eum tempore iste nisi minus sed.', 'aut', 29, NULL, '2019-01-21 08:53:28', '1995-02-28 21:35:56');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '1', '43', 'Vel soluta blanditiis numquam praesentium ab vitae libero. Voluptatum ipsum sunt id. Culpa aspernatur eos reiciendis pariatur voluptatem eligendi sint.', 'veniam', 0, NULL, '1980-07-08 03:58:59', '1972-12-13 09:03:22');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '2', '44', 'Tempora et impedit qui voluptatem. Quam hic vitae quos qui voluptatem ad. Quas ipsam repellendus rerum eaque ut. Rerum porro accusamus exercitationem omnis et.', 'illo', 0, NULL, '1981-11-16 09:22:04', '2008-05-20 14:47:02');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '1', '45', 'Consequatur unde optio soluta eveniet. Est provident consequatur dolor praesentium magnam ad corrupti. Debitis iure est laborum soluta est esse qui.', 'temporibus', 17, NULL, '1989-02-20 03:31:12', '1984-02-06 06:53:09');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '2', '46', 'Officiis repudiandae qui voluptate quia esse rerum ipsa. Quasi quasi fugiat est ex tempora. Voluptate minus est nostrum voluptatum. Iusto quibusdam animi voluptas quia voluptatem.', 'ea', 7168406, NULL, '2012-03-21 23:11:55', '1977-12-02 16:42:19');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '1', '47', 'Quasi harum in molestiae. A at quos beatae quo nisi aut tempore ipsam.', 'aut', 59230886, NULL, '2011-07-20 00:47:43', '1970-09-19 14:10:51');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '2', '48', 'Eaque est molestiae quo quaerat laborum. Molestiae quia optio debitis. Qui molestiae necessitatibus veritatis aut. Eum laborum enim voluptas. In nemo molestias fuga omnis debitis.', 'suscipit', 2912697, NULL, '2005-04-23 04:10:48', '1979-03-12 11:47:54');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '1', '49', 'Et omnis inventore eveniet in iusto. Sed consequatur non illo doloremque suscipit. Ut aspernatur quos et quod cum vel.', 'et', 39598327, NULL, '1996-02-05 19:13:29', '1982-01-24 12:42:46');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '2', '50', 'Error delectus quia voluptatem iste quaerat. Ea consequatur dolores voluptatem architecto id. Expedita neque consectetur at fuga incidunt ut culpa. Mollitia aliquam facilis nisi.', 'aut', 42890, NULL, '1982-01-13 21:41:15', '1983-07-23 02:12:18');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '1', '1', 'Sunt possimus quo nisi tempora. Qui ducimus sunt magni rem corporis ea. Qui quo et veniam pariatur vitae qui.', 'perspiciatis', 234, NULL, '1993-01-16 11:58:18', '1976-10-01 11:05:56');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '2', '2', 'Commodi cumque perferendis nobis sequi occaecati cupiditate alias. Hic dolorem eum rem consequuntur dolore assumenda. Rem aut nemo a deleniti.', 'perspiciatis', 0, NULL, '2007-06-08 07:32:59', '1978-12-21 21:14:15');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '1', '3', 'Numquam consequuntur beatae nulla doloribus et asperiores. Enim incidunt corporis laborum aut id earum. Aperiam quas odio earum similique odio quia.', 'corporis', 97, NULL, '1989-06-07 11:31:20', '2016-12-21 13:36:20');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '2', '4', 'Velit modi voluptas debitis. Quis dolorem ab nihil sapiente quos eius. Voluptate quia consequatur minima delectus dolore.', 'culpa', 876545241, NULL, '2007-11-18 17:34:42', '1999-06-05 20:33:29');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '1', '5', 'Quis nesciunt ad porro voluptates. Aut reiciendis quos magni. Quia id numquam minus est ut. Et ut quos culpa laboriosam veritatis natus consectetur voluptas.', 'sunt', 285, NULL, '1991-10-06 21:34:07', '2008-11-26 03:29:19');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '2', '6', 'Cumque dolorem quaerat ipsam sed sit est iusto. Sequi rerum ea est quia eos aut id ut. Unde esse assumenda atque eaque quia ut. Blanditiis assumenda nesciunt voluptas earum ullam.', 'illum', 0, NULL, '2012-09-21 06:16:48', '2012-02-16 15:23:31');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '1', '7', 'Voluptatum quo qui doloribus eum nihil nihil eos. Aut aut sint quos dignissimos. Iusto laudantium repellat minus.', 'nulla', 551819458, NULL, '2009-05-29 21:53:57', '1993-10-07 03:11:43');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '2', '8', 'Consectetur repellendus voluptas iste harum doloribus. Atque quam deleniti in fugit ipsum ullam quisquam dignissimos. Facere ipsa voluptate minima quam tenetur quisquam. Fuga numquam voluptatum libero inventore enim quia ea.', 'dolor', 10357, NULL, '2011-07-09 03:42:11', '2013-11-12 07:45:54');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '1', '9', 'Alias nostrum dolor in alias dolorem maiores. Repellat velit sed sit expedita eveniet quae. Quae libero ut minima iste cumque reiciendis voluptatem.', 'commodi', 78, NULL, '1988-05-22 12:38:25', '2008-02-07 01:07:25');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '2', '10', 'Distinctio laudantium ipsum ex placeat in iusto eos. Et velit aut asperiores quis. Officia nemo consequatur animi nobis ut.', 'libero', 0, NULL, '2008-07-26 04:32:50', '2007-03-16 02:46:49');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '1', '11', 'Neque tempora enim illo at qui ullam qui. Quam quas nihil veniam est. Aut illo recusandae iure qui ut voluptatum qui. Quaerat saepe temporibus tempora adipisci beatae.', 'et', 2476701, NULL, '1987-02-28 10:43:47', '1971-08-05 15:36:26');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '2', '12', 'Ut cupiditate mollitia exercitationem nam suscipit expedita. Sapiente minima ipsam aut itaque quaerat laboriosam.', 'quas', 0, NULL, '1972-06-29 01:41:19', '1992-02-10 12:36:51');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '1', '13', 'Quo voluptate voluptatem rerum soluta nobis nobis rerum saepe. Sunt repellendus cupiditate qui adipisci. Voluptatibus dolor veniam nobis velit.', 'deleniti', 0, NULL, '1985-03-19 05:49:38', '1991-06-05 14:05:44');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '2', '14', 'Non molestiae et reprehenderit quos quia iure. Eum praesentium et quia sit aspernatur eveniet. Aut nesciunt est est eaque.', 'eum', 18, NULL, '2008-02-28 06:11:28', '2015-06-14 18:01:15');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '1', '15', 'Possimus qui laudantium eveniet voluptate magni. Asperiores molestiae iure provident omnis a illum. Est cumque explicabo numquam eveniet illum eum. Sed est incidunt distinctio eos.', 'alias', 221, NULL, '1997-12-17 03:01:56', '1988-12-21 09:02:32');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '2', '16', 'Qui non numquam rerum ex ea dolores. Ea quis voluptatem temporibus recusandae eum non nam et. Ea distinctio placeat inventore iure delectus provident eaque. Qui quasi reiciendis quia consectetur.', 'sequi', 7486, NULL, '1985-01-14 22:05:57', '2000-03-12 00:36:43');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '1', '17', 'Dolorem aut aut expedita et iusto praesentium. Iusto cumque sunt sint aut qui velit error distinctio. Eligendi ea qui voluptates deleniti velit eius est totam. Dolores dolorum illo magni ea id.', 'quaerat', 60357, NULL, '2001-04-01 08:06:37', '2014-03-01 08:34:33');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '2', '18', 'Aut eum consequatur est ratione hic et. Qui ad nihil consequatur quia ducimus. Et dolorem hic et ex earum quo.', 'est', 805, NULL, '1980-02-12 10:51:53', '1976-10-31 18:54:29');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '1', '19', 'Omnis enim dolore quasi voluptatibus sint. Impedit odio et assumenda velit qui culpa numquam. Consequuntur ut aliquid rerum eos quidem. Quis quia voluptatum est deserunt eius nesciunt est.', 'culpa', 215, NULL, '1973-07-19 00:04:14', '2005-09-20 13:59:00');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '2', '20', 'Aut occaecati deserunt dolores natus maiores. Et consequuntur quibusdam quo. Doloribus molestias dolorem velit reprehenderit modi est pariatur.', 'eos', 9, NULL, '1978-10-03 19:26:39', '1981-07-05 11:38:48');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '1', '21', 'Et id corporis quam architecto est. Minus earum quia eligendi qui omnis. Amet non ex dolorem deserunt eveniet. Sit et quae voluptates nulla.', 'optio', 51567, NULL, '2003-08-20 23:48:48', '2017-10-10 12:28:12');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '2', '22', 'Molestias repudiandae ut quae esse nobis non. Vel dicta eligendi tempore et. Et officia ut et repudiandae ut quidem quo.', 'neque', 343, NULL, '2011-02-13 04:19:52', '1996-03-07 16:35:56');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '1', '23', 'Numquam suscipit aliquid et non deserunt ut autem. Saepe aut eum aperiam non. Et et provident odit aut eos temporibus. Quia velit nam rem quod.', 'et', 46745083, NULL, '1983-12-23 09:03:11', '2019-03-19 12:17:06');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '2', '24', 'Voluptatem asperiores in illo amet eveniet nesciunt. Et soluta quis numquam est aut. Odit sed sunt ipsum corrupti.', 'facere', 54, NULL, '1977-03-26 04:40:23', '1995-09-06 14:59:51');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '1', '25', 'At aut iusto ea est. Quae est illo dignissimos. Dolor quae sit ut aut. Deserunt iusto ut vel facere sed fugiat ratione.', 'perspiciatis', 8297068, NULL, '2004-04-14 12:25:44', '2013-12-19 16:20:28');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '2', '26', 'Repudiandae sunt omnis sapiente officia vero eum vel. Fuga dolore iusto eius.', 'amet', 2, NULL, '2002-02-07 05:36:57', '2006-07-04 07:21:56');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '1', '27', 'In quia maxime et neque quia et odio. Fuga unde et explicabo ut et nulla earum perspiciatis. Excepturi odio sint voluptate voluptas nihil voluptatem.', 'numquam', 94575, NULL, '1991-10-27 22:06:41', '2004-02-12 16:50:21');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '2', '28', 'Molestiae autem facere doloremque unde possimus mollitia. Cumque est consectetur mollitia explicabo soluta laborum. Quo maxime iure at voluptas eveniet.', 'temporibus', 72848699, NULL, '1980-03-25 23:04:39', '1983-01-15 17:04:29');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '1', '29', 'Et autem dolores sit reiciendis aut repudiandae. Vel sequi quam tempora. Est aut veniam officiis dolore quo aspernatur ut.', 'autem', 140, NULL, '1978-07-05 22:23:32', '1978-09-21 12:30:55');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '2', '30', 'Veritatis earum deserunt autem sit suscipit. Omnis sed nihil occaecati quaerat voluptatibus eos. Ullam ipsum voluptates molestiae cupiditate beatae aspernatur ab et. Officia rerum quo error suscipit.', 'facilis', 50786, NULL, '2018-07-07 02:28:13', '1989-10-01 21:34:47');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '1', '31', 'Fugit aliquid rem quia accusamus. Ipsum autem autem exercitationem aliquam nulla saepe est soluta.', 'ut', 130, NULL, '2001-06-01 07:07:43', '1988-01-29 23:03:24');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '2', '32', 'Fuga iure soluta soluta nobis consequatur incidunt eum. Voluptas aspernatur sint modi aspernatur quo. Laudantium consequuntur aspernatur explicabo illo rerum ad.', 'corporis', 792725, NULL, '2019-01-12 09:05:24', '1991-11-08 06:59:54');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '1', '33', 'Eum totam dolore ea voluptas. Explicabo ipsa sit magni et est magni. Est inventore temporibus aliquam. Voluptatem dolorem dolorum et ipsum dignissimos quaerat quae. Nisi harum velit et repellat in aliquam reprehenderit.', 'unde', 506314443, NULL, '1973-12-24 10:18:09', '2017-07-29 07:59:37');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '2', '34', 'Nobis doloremque maiores velit illum voluptate autem sunt repellat. Eius expedita voluptatem delectus mollitia consequatur. Qui magnam temporibus ipsam in odit necessitatibus.', 'laudantium', 94053, NULL, '2003-08-22 23:47:20', '1973-10-29 05:43:59');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '1', '35', 'Autem aut et exercitationem molestiae veritatis mollitia facilis. Quasi sed maiores dolorem qui sed officiis. Non aut excepturi odit.', 'voluptatem', 9966826, NULL, '2006-02-12 13:03:15', '1995-12-24 05:35:14');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '2', '36', 'Dolores dicta et sapiente aut ut est tenetur. Odit placeat aut rem temporibus magnam quam reiciendis. Eum dolore ducimus voluptate voluptas nobis inventore. Quisquam iusto et et reprehenderit ut suscipit voluptatem.', 'eum', 8, NULL, '1993-11-27 16:13:16', '1999-08-12 11:58:10');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '1', '37', 'Eos incidunt saepe sunt et. Ut expedita qui necessitatibus error expedita. Minus officiis consequatur et nesciunt deleniti non.', 'et', 43857814, NULL, '2000-05-09 13:30:48', '1985-01-12 22:28:47');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '2', '38', 'Quaerat nemo iure qui aut cumque architecto. Magnam quia sunt omnis quia nostrum laborum. Cum quis voluptatem aut occaecati nam.', 'aspernatur', 829, NULL, '2019-08-28 19:56:26', '1983-11-06 12:29:51');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '1', '39', 'Voluptates ab qui molestias quod. Est consequatur molestias debitis dolores recusandae. Voluptatem exercitationem totam quis ipsa mollitia optio. Excepturi praesentium recusandae modi voluptatem consequuntur eveniet.', 'ratione', 7601408, NULL, '1971-04-08 09:28:02', '1977-04-04 16:15:51');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '2', '40', 'Sit deleniti eum consequatur ipsa veniam debitis at. Nesciunt maiores sint adipisci reiciendis. Praesentium sunt eaque ea aut. At dolorem non at ut.', 'inventore', 0, NULL, '1983-01-12 23:20:34', '1989-12-22 08:22:50');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '1', '41', 'Beatae in odit hic. Quia vitae qui sed ut.', 'quibusdam', 4780140, NULL, '1982-07-24 08:09:16', '1996-06-22 17:48:23');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '2', '42', 'Quia quisquam atque laboriosam doloribus dolor. Ad nemo rerum nobis temporibus non. Consectetur odit error neque doloremque consequatur nemo unde. Facere cupiditate qui velit.', 'quis', 525, NULL, '1977-08-01 11:03:02', '2015-04-28 02:00:23');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '1', '43', 'Cupiditate iure iusto ipsum repellat. Facilis vero numquam qui voluptas. Fugit reiciendis ea ea cupiditate et qui. Accusantium dolorem sunt autem ex ut.', 'quasi', 554200829, NULL, '1981-02-25 08:54:33', '2003-11-01 00:07:25');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '2', '44', 'Neque et veniam et sit. Officiis enim cupiditate autem explicabo. Aperiam quia velit explicabo voluptates.', 'ipsa', 37239, NULL, '2018-07-02 13:21:32', '1971-02-21 21:22:08');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '1', '45', 'Qui perspiciatis ipsum dignissimos est eos. Illum nostrum ut sapiente ipsa ipsam. Numquam dolorum expedita et saepe id.', 'in', 143, NULL, '2002-12-03 16:30:18', '1993-07-25 22:33:51');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '2', '46', 'Officia eligendi qui quis ut est rem deserunt amet. Doloribus qui velit repudiandae voluptatum recusandae magnam architecto atque. Excepturi sequi asperiores dolorem quo voluptatum ratione. Ut voluptatum facere commodi aut animi.', 'magni', 804221932, NULL, '1995-05-27 05:45:49', '2015-10-24 13:51:08');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '1', '47', 'Similique in aut id fuga quidem iste. Repellat in maiores voluptatem voluptatem doloribus. Qui provident porro aut quisquam consequatur consequatur.', 'officiis', 30633854, NULL, '2017-07-07 14:29:07', '2011-07-15 03:28:37');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '2', '48', 'Repudiandae dolor autem eius magni nisi recusandae dolor. Et minus culpa neque cum voluptas et molestiae. Sint id voluptas laboriosam quae architecto perspiciatis. Magni doloribus atque inventore earum commodi sunt velit.', 'aut', 35717522, NULL, '1987-12-28 18:57:19', '2008-06-02 01:44:37');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('99', '1', '49', 'Necessitatibus ut aut laborum tenetur nostrum magni perferendis. At ex iste ducimus accusantium numquam et minus. Aliquam alias illum dolorum iste beatae molestiae mollitia.', 'non', 76, NULL, '2005-02-25 18:46:07', '2020-01-28 15:39:44');
INSERT INTO `media` (`id`, `media_type_id`, `apart_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('100', '2', '50', 'Voluptatem est modi ullam et necessitatibus eum. Numquam reprehenderit cumque sed sit harum quis in quo. Et dolores veritatis vel voluptatem. Sint repellendus aut tenetur quam vero. Molestiae voluptate et et.', 'et', 2640, NULL, '1982-12-28 20:08:48', '2001-11-01 13:16:22');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('1', 'Photo', '2003-07-09 10:08:05');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('2', 'Video', '1984-04-18 01:55:09');


#
# TABLE STRUCTURE FOR: orders
#

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `apart_id` bigint(20) unsigned NOT NULL,
  `total` bigint(20) unsigned NOT NULL,
  `status` enum('requested','approved','declined') COLLATE utf8_unicode_ci DEFAULT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  KEY `apart_id` (`apart_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`apart_id`) REFERENCES `apartments` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `orders` (`id`, `client_id`, `apart_id`, `total`, `status`, `requested_at`, `confirmed_at`) VALUES ('1', '101', '1', '0', 'declined', '1994-12-06 19:53:49', '1985-02-18 06:58:01');
INSERT INTO `orders` (`id`, `client_id`, `apart_id`, `total`, `status`, `requested_at`, `confirmed_at`) VALUES ('2', '102', '2', '0', 'declined', '2002-11-06 19:18:10', '1991-02-15 01:28:50');
INSERT INTO `orders` (`id`, `client_id`, `apart_id`, `total`, `status`, `requested_at`, `confirmed_at`) VALUES ('3', '103', '3', '0', 'declined', '2010-10-21 11:18:00', '1970-04-13 12:38:06');
INSERT INTO `orders` (`id`, `client_id`, `apart_id`, `total`, `status`, `requested_at`, `confirmed_at`) VALUES ('4', '104', '4', '0', 'approved', '1989-12-25 07:00:17', '1992-06-06 15:21:27');
INSERT INTO `orders` (`id`, `client_id`, `apart_id`, `total`, `status`, `requested_at`, `confirmed_at`) VALUES ('5', '105', '5', '0', 'declined', '1976-03-16 15:03:41', '2006-05-22 21:00:46');
INSERT INTO `orders` (`id`, `client_id`, `apart_id`, `total`, `status`, `requested_at`, `confirmed_at`) VALUES ('6', '106', '6', '0', 'requested', '2019-07-24 06:19:24', '2017-07-25 05:21:34');
INSERT INTO `orders` (`id`, `client_id`, `apart_id`, `total`, `status`, `requested_at`, `confirmed_at`) VALUES ('7', '107', '7', '0', 'requested', '2001-07-22 20:07:25', '1981-02-07 17:23:24');
INSERT INTO `orders` (`id`, `client_id`, `apart_id`, `total`, `status`, `requested_at`, `confirmed_at`) VALUES ('8', '108', '8', '0', 'requested', '1980-10-25 13:01:26', '2014-06-27 07:22:22');
INSERT INTO `orders` (`id`, `client_id`, `apart_id`, `total`, `status`, `requested_at`, `confirmed_at`) VALUES ('9', '109', '9', '0', 'approved', '1984-03-14 17:23:56', '2019-05-11 22:30:44');
INSERT INTO `orders` (`id`, `client_id`, `apart_id`, `total`, `status`, `requested_at`, `confirmed_at`) VALUES ('10', '110', '10', '0', 'declined', '1981-10-11 19:18:15', '2002-11-15 03:25:48');
INSERT INTO `orders` (`id`, `client_id`, `apart_id`, `total`, `status`, `requested_at`, `confirmed_at`) VALUES ('11', '111', '11', '0', 'declined', '1976-10-12 07:19:45', '1984-06-30 09:40:01');
INSERT INTO `orders` (`id`, `client_id`, `apart_id`, `total`, `status`, `requested_at`, `confirmed_at`) VALUES ('12', '112', '12', '0', 'declined', '1996-06-13 23:22:24', '2012-12-15 18:26:19');
INSERT INTO `orders` (`id`, `client_id`, `apart_id`, `total`, `status`, `requested_at`, `confirmed_at`) VALUES ('13', '113', '13', '0', 'declined', '2007-06-25 17:28:24', '2015-12-24 14:47:03');
INSERT INTO `orders` (`id`, `client_id`, `apart_id`, `total`, `status`, `requested_at`, `confirmed_at`) VALUES ('14', '114', '14', '0', 'declined', '2016-06-02 03:32:28', '1979-02-04 15:53:18');
INSERT INTO `orders` (`id`, `client_id`, `apart_id`, `total`, `status`, `requested_at`, `confirmed_at`) VALUES ('15', '115', '15', '0', 'approved', '1998-12-16 00:14:38', '1977-07-23 05:40:43');


#
# TABLE STRUCTURE FOR: photo_albums
#

DROP TABLE IF EXISTS `photo_albums`;

CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apart_id` bigint(20) unsigned DEFAULT NULL,
  `house_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `apart_id` (`apart_id`),
  KEY `house_id` (`house_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`apart_id`) REFERENCES `apartments` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `photo_albums_ibfk_2` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `photo_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('1', 'numquam', '1', '1');
INSERT INTO `photo_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('2', 'odio', '2', '2');
INSERT INTO `photo_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('3', 'ipsam', '3', '3');
INSERT INTO `photo_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('4', 'eius', '4', '4');
INSERT INTO `photo_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('5', 'voluptates', '5', '5');
INSERT INTO `photo_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('6', 'nam', '6', '6');
INSERT INTO `photo_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('7', 'quia', '7', '7');
INSERT INTO `photo_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('8', 'sit', '8', '8');
INSERT INTO `photo_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('9', 'deserunt', '9', '9');
INSERT INTO `photo_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('10', 'et', '10', '10');
INSERT INTO `photo_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('11', 'expedita', '11', '11');
INSERT INTO `photo_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('12', 'molestiae', '12', '12');
INSERT INTO `photo_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('13', 'voluptatem', '13', '13');
INSERT INTO `photo_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('14', 'ut', '14', '14');
INSERT INTO `photo_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('15', 'voluptas', '15', '15');
INSERT INTO `photo_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('16', 'sit', '16', '16');
INSERT INTO `photo_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('17', 'ipsa', '17', '17');
INSERT INTO `photo_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('18', 'aliquid', '18', '18');
INSERT INTO `photo_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('19', 'ipsum', '19', '19');
INSERT INTO `photo_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('20', 'natus', '20', '20');
INSERT INTO `photo_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('21', 'non', '21', '1');
INSERT INTO `photo_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('22', 'explicabo', '22', '2');
INSERT INTO `photo_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('23', 'consequatur', '23', '3');
INSERT INTO `photo_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('24', 'nulla', '24', '4');
INSERT INTO `photo_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('25', 'voluptatibus', '25', '5');


#
# TABLE STRUCTURE FOR: photos
#

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ph_album_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ph_album_id` (`ph_album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`ph_album_id`) REFERENCES `photo_albums` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('1', '1', '1', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('2', '2', '2', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('3', '3', '3', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('4', '4', '4', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('5', '5', '5', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('6', '6', '6', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('7', '7', '7', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('8', '8', '8', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('9', '9', '9', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('10', '10', '10', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('11', '11', '11', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('12', '12', '12', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('13', '13', '13', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('14', '14', '14', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('15', '15', '15', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('16', '16', '16', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('17', '17', '17', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('18', '18', '18', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('19', '19', '19', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('20', '20', '20', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('21', '21', '21', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('22', '22', '22', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('23', '23', '23', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('24', '24', '24', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('25', '25', '25', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('26', '1', '26', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('27', '2', '27', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('28', '3', '28', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('29', '4', '29', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('30', '5', '30', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('31', '6', '31', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('32', '7', '32', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('33', '8', '33', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('34', '9', '34', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('35', '10', '35', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('36', '11', '36', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('37', '12', '37', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('38', '13', '38', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('39', '14', '39', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('40', '15', '40', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('41', '16', '41', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('42', '17', '42', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('43', '18', '43', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('44', '19', '44', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('45', '20', '45', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('46', '21', '46', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('47', '22', '47', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('48', '23', '48', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('49', '24', '49', NULL);
INSERT INTO `photos` (`id`, `ph_album_id`, `media_id`, `comment`) VALUES ('50', '25', '50', NULL);


#
# TABLE STRUCTURE FOR: plans
#

DROP TABLE IF EXISTS `plans`;

CREATE TABLE `plans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pl_album_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pl_album_id` (`pl_album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `plans_ibfk_1` FOREIGN KEY (`pl_album_id`) REFERENCES `plans_albums` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `plans_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('1', '1', '1', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('2', '2', '2', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('3', '3', '3', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('4', '4', '4', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('5', '5', '5', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('6', '6', '6', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('7', '7', '7', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('8', '8', '8', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('9', '9', '9', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('10', '10', '10', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('11', '11', '11', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('12', '12', '12', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('13', '13', '13', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('14', '14', '14', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('15', '15', '15', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('16', '16', '16', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('17', '17', '17', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('18', '18', '18', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('19', '19', '19', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('20', '20', '20', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('21', '21', '21', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('22', '22', '22', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('23', '23', '23', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('24', '24', '24', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('25', '25', '25', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('26', '1', '26', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('27', '2', '27', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('28', '3', '28', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('29', '4', '29', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('30', '5', '30', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('31', '6', '31', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('32', '7', '32', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('33', '8', '33', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('34', '9', '34', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('35', '10', '35', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('36', '11', '36', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('37', '12', '37', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('38', '13', '38', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('39', '14', '39', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('40', '15', '40', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('41', '16', '41', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('42', '17', '42', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('43', '18', '43', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('44', '19', '44', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('45', '20', '45', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('46', '21', '46', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('47', '22', '47', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('48', '23', '48', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('49', '24', '49', NULL);
INSERT INTO `plans` (`id`, `pl_album_id`, `media_id`, `comment`) VALUES ('50', '25', '50', NULL);


#
# TABLE STRUCTURE FOR: plans_albums
#

DROP TABLE IF EXISTS `plans_albums`;

CREATE TABLE `plans_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apart_id` bigint(20) unsigned DEFAULT NULL,
  `house_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `apart_id` (`apart_id`),
  KEY `house_id` (`house_id`),
  CONSTRAINT `plans_albums_ibfk_1` FOREIGN KEY (`apart_id`) REFERENCES `apartments` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `plans_albums_ibfk_2` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `plans_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('1', 'dolorem', '1', '1');
INSERT INTO `plans_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('2', 'laborum', '2', '2');
INSERT INTO `plans_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('3', 'eveniet', '3', '3');
INSERT INTO `plans_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('4', 'sit', '4', '4');
INSERT INTO `plans_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('5', 'ut', '5', '5');
INSERT INTO `plans_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('6', 'iure', '6', '6');
INSERT INTO `plans_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('7', 'corporis', '7', '7');
INSERT INTO `plans_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('8', 'quia', '8', '8');
INSERT INTO `plans_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('9', 'perferendis', '9', '9');
INSERT INTO `plans_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('10', 'et', '10', '10');
INSERT INTO `plans_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('11', 'enim', '11', '11');
INSERT INTO `plans_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('12', 'facilis', '12', '12');
INSERT INTO `plans_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('13', 'similique', '13', '13');
INSERT INTO `plans_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('14', 'hic', '14', '14');
INSERT INTO `plans_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('15', 'accusantium', '15', '15');
INSERT INTO `plans_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('16', 'commodi', '16', '16');
INSERT INTO `plans_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('17', 'qui', '17', '17');
INSERT INTO `plans_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('18', 'placeat', '18', '18');
INSERT INTO `plans_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('19', 'nihil', '19', '19');
INSERT INTO `plans_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('20', 'facilis', '20', '20');
INSERT INTO `plans_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('21', 'repellendus', '21', '1');
INSERT INTO `plans_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('22', 'eos', '22', '2');
INSERT INTO `plans_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('23', 'et', '23', '3');
INSERT INTO `plans_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('24', 'odio', '24', '4');
INSERT INTO `plans_albums` (`id`, `name`, `apart_id`, `house_id`) VALUES ('25', 'velit', '25', '5');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `client_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`client_id`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('101', NULL, '1987-08-26', '2017-03-17 17:56:08');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('102', NULL, '1981-03-03', '1981-09-12 05:37:41');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('103', NULL, '1999-04-27', '1974-02-28 12:18:51');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('104', NULL, '1988-04-06', '2012-08-22 15:24:12');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('105', NULL, '2006-06-09', '2013-01-27 23:45:33');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('106', NULL, '1983-05-10', '1992-10-29 21:37:02');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('107', NULL, '2013-02-26', '1971-09-27 19:03:58');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('108', NULL, '2017-03-01', '1979-10-08 10:29:17');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('109', NULL, '1989-03-11', '1977-11-28 02:04:41');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('110', NULL, '1993-12-26', '2017-11-06 14:17:13');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('111', NULL, '2017-01-21', '2000-08-13 08:31:28');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('112', NULL, '1983-07-14', '1998-12-27 23:17:28');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('113', NULL, '1972-02-05', '1995-02-14 07:14:15');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('114', NULL, '1984-06-13', '2019-10-02 07:01:29');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('115', NULL, '1983-12-26', '2004-03-16 22:32:29');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('116', NULL, '1991-06-29', '2016-11-09 02:46:42');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('119', NULL, '2003-11-01', '2019-05-13 12:41:07');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('120', NULL, '1987-02-04', '2009-01-22 00:47:09');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('121', NULL, '2014-09-22', '2012-04-07 11:49:30');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('123', NULL, '1979-06-01', '1995-01-16 19:53:56');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('124', NULL, '2002-07-22', '1976-09-25 13:24:34');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('125', NULL, '1988-01-09', '1988-07-21 19:52:43');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('126', NULL, '1985-09-15', '2016-04-12 17:42:31');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('127', NULL, '1987-09-29', '2010-03-01 14:00:47');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('129', NULL, '2015-04-19', '2005-05-26 19:43:28');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('130', NULL, '1990-02-05', '2002-09-16 17:31:05');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('131', NULL, '1986-05-23', '1998-12-02 07:46:05');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('132', NULL, '2014-07-09', '1989-09-06 11:17:00');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('134', NULL, '2003-05-28', '1987-12-29 04:03:41');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('135', NULL, '1984-01-14', '1977-07-25 19:17:52');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('136', NULL, '2012-08-20', '1973-02-05 07:47:53');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('137', NULL, '1996-12-15', '1971-07-15 20:02:35');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('143', NULL, '1992-07-29', '2006-08-01 16:15:55');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('144', NULL, '1989-12-07', '2018-07-01 18:16:10');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('146', NULL, '1971-08-07', '1996-05-08 13:00:13');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('148', NULL, '1997-03-29', '1976-03-27 19:40:50');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('149', NULL, '2001-09-30', '2018-08-10 02:48:38');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('152', NULL, '1990-01-29', '2001-01-28 02:12:22');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('154', NULL, '1975-06-06', '1983-10-10 22:24:01');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('155', NULL, '1973-05-15', '1986-03-24 11:59:57');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('157', NULL, '2001-02-10', '1977-03-24 04:06:56');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('159', NULL, '1970-06-29', '1983-06-22 12:24:08');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('160', NULL, '2001-10-01', '2016-12-10 20:14:15');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('161', NULL, '1994-06-04', '2007-04-19 18:08:06');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('165', NULL, '1983-05-04', '1995-03-11 01:47:38');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('166', NULL, '1988-01-22', '1984-05-31 11:30:35');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('169', NULL, '1996-07-11', '1996-08-09 18:57:51');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('170', NULL, '1994-02-12', '2017-09-26 23:54:01');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('174', NULL, '1974-10-19', '2014-01-08 21:39:45');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('175', NULL, '2010-06-14', '1984-11-06 14:54:03');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('177', NULL, '1982-11-01', '2017-10-24 20:14:05');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('178', NULL, '1981-11-21', '2007-08-27 16:23:51');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('179', NULL, '2011-09-24', '2004-03-06 18:24:23');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('182', NULL, '2014-05-05', '2001-03-22 20:30:26');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('183', NULL, '1983-05-05', '2008-11-07 00:46:41');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('184', NULL, '2003-04-15', '2011-05-17 02:41:41');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('185', NULL, '1979-10-08', '1992-09-13 20:46:38');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('187', NULL, '1990-10-10', '1978-02-13 15:04:55');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('189', NULL, '1984-09-26', '2003-04-10 05:48:22');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('190', NULL, '2006-04-30', '2018-11-07 01:40:48');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('191', NULL, '1999-07-23', '1979-11-23 23:18:51');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('196', NULL, '2007-11-03', '1991-10-29 12:26:19');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('198', NULL, '1989-11-21', '1979-04-19 00:23:26');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`) VALUES ('199', NULL, '1987-08-07', '1974-10-04 12:39:18');


#
# TABLE STRUCTURE FOR: projects
#

DROP TABLE IF EXISTS `projects`;

CREATE TABLE `projects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `projects` (`id`, `name`) VALUES ('1', 'deserunt');
INSERT INTO `projects` (`id`, `name`) VALUES ('2', 'eius');
INSERT INTO `projects` (`id`, `name`) VALUES ('3', 'quos');
INSERT INTO `projects` (`id`, `name`) VALUES ('4', 'laborum');
INSERT INTO `projects` (`id`, `name`) VALUES ('5', 'earum');
INSERT INTO `projects` (`id`, `name`) VALUES ('6', 'totam');
INSERT INTO `projects` (`id`, `name`) VALUES ('7', 'et');
INSERT INTO `projects` (`id`, `name`) VALUES ('8', 'quia');
INSERT INTO `projects` (`id`, `name`) VALUES ('9', 'totam');
INSERT INTO `projects` (`id`, `name`) VALUES ('10', 'sequi');


#
# TABLE STRUCTURE FOR: rent_orders
#

DROP TABLE IF EXISTS `rent_orders`;

CREATE TABLE `rent_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `apart_id` bigint(20) unsigned NOT NULL,
  `rent_price_id` bigint(20) unsigned NOT NULL,
  `status` enum('requested','approved','declined') COLLATE utf8_unicode_ci DEFAULT NULL,
  `rent_from` date DEFAULT NULL,
  `rent_till` date DEFAULT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rent_price_id` (`rent_price_id`),
  KEY `apart_id` (`apart_id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `rent_orders_ibfk_1` FOREIGN KEY (`rent_price_id`) REFERENCES `rent_prices` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `rent_orders_ibfk_2` FOREIGN KEY (`apart_id`) REFERENCES `apartments` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `rent_orders_ibfk_3` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `rent_orders` (`id`, `client_id`, `apart_id`, `rent_price_id`, `status`, `rent_from`, `rent_till`, `requested_at`, `confirmed_at`) VALUES ('1', '101', '1', '1', 'requested', '2003-09-21', '1995-05-15', '2004-04-20 15:35:49', '1994-07-10 13:36:17');
INSERT INTO `rent_orders` (`id`, `client_id`, `apart_id`, `rent_price_id`, `status`, `rent_from`, `rent_till`, `requested_at`, `confirmed_at`) VALUES ('2', '102', '2', '2', 'declined', '1973-09-15', '2005-03-13', '1987-04-03 12:59:22', '2015-02-10 11:23:14');
INSERT INTO `rent_orders` (`id`, `client_id`, `apart_id`, `rent_price_id`, `status`, `rent_from`, `rent_till`, `requested_at`, `confirmed_at`) VALUES ('3', '103', '3', '3', 'declined', '2013-07-12', '1989-06-21', '1973-07-26 09:21:11', '1976-10-06 03:57:12');
INSERT INTO `rent_orders` (`id`, `client_id`, `apart_id`, `rent_price_id`, `status`, `rent_from`, `rent_till`, `requested_at`, `confirmed_at`) VALUES ('4', '104', '4', '4', 'requested', '1993-12-01', '2007-02-13', '1970-09-28 16:06:55', '1976-02-23 16:37:20');
INSERT INTO `rent_orders` (`id`, `client_id`, `apart_id`, `rent_price_id`, `status`, `rent_from`, `rent_till`, `requested_at`, `confirmed_at`) VALUES ('5', '105', '5', '5', 'requested', '1972-08-11', '2017-08-11', '1986-09-04 17:13:12', '1976-08-06 17:02:11');
INSERT INTO `rent_orders` (`id`, `client_id`, `apart_id`, `rent_price_id`, `status`, `rent_from`, `rent_till`, `requested_at`, `confirmed_at`) VALUES ('6', '106', '6', '6', 'declined', '2007-11-22', '1997-09-11', '1977-06-17 22:23:42', '1990-11-23 19:38:38');
INSERT INTO `rent_orders` (`id`, `client_id`, `apart_id`, `rent_price_id`, `status`, `rent_from`, `rent_till`, `requested_at`, `confirmed_at`) VALUES ('7', '107', '7', '7', 'requested', '1988-02-15', '1985-12-15', '2015-01-13 14:58:10', '2011-06-26 17:17:47');
INSERT INTO `rent_orders` (`id`, `client_id`, `apart_id`, `rent_price_id`, `status`, `rent_from`, `rent_till`, `requested_at`, `confirmed_at`) VALUES ('8', '108', '8', '8', 'requested', '2009-12-31', '2007-08-14', '1970-03-05 08:16:12', '2008-09-07 09:42:47');
INSERT INTO `rent_orders` (`id`, `client_id`, `apart_id`, `rent_price_id`, `status`, `rent_from`, `rent_till`, `requested_at`, `confirmed_at`) VALUES ('9', '109', '9', '9', 'approved', '2014-01-14', '2003-10-02', '1994-01-25 08:21:23', '1998-05-19 13:03:23');
INSERT INTO `rent_orders` (`id`, `client_id`, `apart_id`, `rent_price_id`, `status`, `rent_from`, `rent_till`, `requested_at`, `confirmed_at`) VALUES ('10', '110', '10', '10', 'requested', '1971-04-02', '2011-02-02', '2004-11-22 01:20:10', '1975-04-12 03:37:45');
INSERT INTO `rent_orders` (`id`, `client_id`, `apart_id`, `rent_price_id`, `status`, `rent_from`, `rent_till`, `requested_at`, `confirmed_at`) VALUES ('11', '111', '11', '11', 'approved', '1997-09-14', '1991-03-25', '2017-02-25 18:37:29', '1994-12-18 23:34:35');
INSERT INTO `rent_orders` (`id`, `client_id`, `apart_id`, `rent_price_id`, `status`, `rent_from`, `rent_till`, `requested_at`, `confirmed_at`) VALUES ('12', '112', '12', '12', 'requested', '1978-01-16', '2009-05-23', '2015-01-11 23:06:14', '2011-01-04 06:24:37');
INSERT INTO `rent_orders` (`id`, `client_id`, `apart_id`, `rent_price_id`, `status`, `rent_from`, `rent_till`, `requested_at`, `confirmed_at`) VALUES ('13', '113', '13', '13', 'requested', '2012-07-20', '2005-06-02', '1989-07-30 07:16:05', '1973-06-18 11:52:36');
INSERT INTO `rent_orders` (`id`, `client_id`, `apart_id`, `rent_price_id`, `status`, `rent_from`, `rent_till`, `requested_at`, `confirmed_at`) VALUES ('14', '114', '14', '14', 'declined', '1984-02-26', '1978-07-08', '2008-04-30 19:13:31', '2005-05-11 20:10:59');
INSERT INTO `rent_orders` (`id`, `client_id`, `apart_id`, `rent_price_id`, `status`, `rent_from`, `rent_till`, `requested_at`, `confirmed_at`) VALUES ('15', '115', '15', '15', 'declined', '1987-07-19', '2007-07-16', '1974-09-16 11:10:44', '1995-07-03 18:58:13');
INSERT INTO `rent_orders` (`id`, `client_id`, `apart_id`, `rent_price_id`, `status`, `rent_from`, `rent_till`, `requested_at`, `confirmed_at`) VALUES ('16', '116', '16', '16', 'requested', '1985-05-21', '1996-07-25', '1991-05-27 12:28:05', '1975-08-05 12:41:12');
INSERT INTO `rent_orders` (`id`, `client_id`, `apart_id`, `rent_price_id`, `status`, `rent_from`, `rent_till`, `requested_at`, `confirmed_at`) VALUES ('17', '119', '17', '17', 'declined', '1972-04-16', '1993-01-14', '1971-11-05 18:42:22', '1982-12-11 23:22:12');
INSERT INTO `rent_orders` (`id`, `client_id`, `apart_id`, `rent_price_id`, `status`, `rent_from`, `rent_till`, `requested_at`, `confirmed_at`) VALUES ('18', '120', '18', '18', 'requested', '1973-06-30', '2011-12-22', '1973-06-30 06:01:38', '2013-02-20 18:57:53');
INSERT INTO `rent_orders` (`id`, `client_id`, `apart_id`, `rent_price_id`, `status`, `rent_from`, `rent_till`, `requested_at`, `confirmed_at`) VALUES ('19', '121', '19', '19', 'approved', '1972-09-24', '1992-11-05', '2007-10-31 16:18:31', '2002-07-23 00:03:32');
INSERT INTO `rent_orders` (`id`, `client_id`, `apart_id`, `rent_price_id`, `status`, `rent_from`, `rent_till`, `requested_at`, `confirmed_at`) VALUES ('20', '123', '20', '20', 'approved', '2011-07-01', '2005-11-07', '1983-03-09 06:35:00', '1991-06-07 05:53:26');


#
# TABLE STRUCTURE FOR: rent_prices
#

DROP TABLE IF EXISTS `rent_prices`;

CREATE TABLE `rent_prices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `apart_id` bigint(20) unsigned NOT NULL,
  `price` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `apart_id` (`apart_id`),
  CONSTRAINT `rent_prices_ibfk_1` FOREIGN KEY (`apart_id`) REFERENCES `apartments` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `rent_prices` (`id`, `apart_id`, `price`) VALUES ('1', '1', '7260');
INSERT INTO `rent_prices` (`id`, `apart_id`, `price`) VALUES ('2', '2', '17988');
INSERT INTO `rent_prices` (`id`, `apart_id`, `price`) VALUES ('3', '3', '47');
INSERT INTO `rent_prices` (`id`, `apart_id`, `price`) VALUES ('4', '4', '0');
INSERT INTO `rent_prices` (`id`, `apart_id`, `price`) VALUES ('5', '5', '1');
INSERT INTO `rent_prices` (`id`, `apart_id`, `price`) VALUES ('6', '6', '138788616');
INSERT INTO `rent_prices` (`id`, `apart_id`, `price`) VALUES ('7', '7', '59241899');
INSERT INTO `rent_prices` (`id`, `apart_id`, `price`) VALUES ('8', '8', '223983544');
INSERT INTO `rent_prices` (`id`, `apart_id`, `price`) VALUES ('9', '9', '47');
INSERT INTO `rent_prices` (`id`, `apart_id`, `price`) VALUES ('10', '10', '0');
INSERT INTO `rent_prices` (`id`, `apart_id`, `price`) VALUES ('11', '11', '1');
INSERT INTO `rent_prices` (`id`, `apart_id`, `price`) VALUES ('12', '12', '290494499');
INSERT INTO `rent_prices` (`id`, `apart_id`, `price`) VALUES ('13', '13', '389926');
INSERT INTO `rent_prices` (`id`, `apart_id`, `price`) VALUES ('14', '14', '407900691');
INSERT INTO `rent_prices` (`id`, `apart_id`, `price`) VALUES ('15', '15', '2739758');
INSERT INTO `rent_prices` (`id`, `apart_id`, `price`) VALUES ('16', '16', '0');
INSERT INTO `rent_prices` (`id`, `apart_id`, `price`) VALUES ('17', '17', '44817');
INSERT INTO `rent_prices` (`id`, `apart_id`, `price`) VALUES ('18', '18', '483163');
INSERT INTO `rent_prices` (`id`, `apart_id`, `price`) VALUES ('19', '19', '12801469');
INSERT INTO `rent_prices` (`id`, `apart_id`, `price`) VALUES ('20', '20', '4117');


