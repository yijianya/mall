CREATE TABLE `user` (
    `id` int NOT NULL,
    `passwd` varchar(265) CHARACTER SET utf8mb3 NOT NULL,
    `user_name` varchar(256) CHARACTER SET utf8mb3 NOT NULL,
    `user_role` varchar(255) CHARACTER SET utf8mb3 NOT NULL,
    `user_email` varchar(255) CHARACTER SET utf8mb3 DEFAULT NULL,
    `user_idcard` varchar(255) CHARACTER SET utf8mb3 DEFAULT NULL,
    `user_phone` varchar(15) CHARACTER SET utf8mb3 DEFAULT NULL,
    `user_province` varchar(255) CHARACTER SET utf8mb3 DEFAULT NULL,
    `vip_epoch` int NOT NULL,
    `vip_buy_date` datetime DEFAULT NULL,
    `vip_end_date` datetime DEFAULT NULL,
    `vip_status` int NOT NULL,
    `user_real_name` varchar(255) CHARACTER SET utf8mb3 DEFAULT NULL,
     PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;