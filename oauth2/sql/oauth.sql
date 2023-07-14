CREATE TABLE `clientdetails` (
    `appId` varchar(128) CHARACTER SET utf8mb3 NOT NULL,
    `resourceIds` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
    `appSecret` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
    `scope` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
    `grantTypes` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
    `redirectUrl` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
    `authorities` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
    `access_token_validity` int DEFAULT NULL,
    `refresh_token_validity` int DEFAULT NULL,
    `additionalInformation` varchar(4096) CHARACTER SET utf8mb3 DEFAULT NULL,
    `autoApproveScopes` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
     PRIMARY KEY (`appId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

CREATE TABLE `oauth_access_token` (
    `token_id` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
    `token` blob,
    `authentication_id` varchar(128) CHARACTER SET utf8mb3 NOT NULL,
    `user_name` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
    `client_id` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
    `authentication` blob,
    `refresh_token` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
     PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

CREATE TABLE `oauth_approvals` (
    `userId` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
    `clientId` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
    `scope` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
    `status` varchar(10) CHARACTER SET utf8mb3 DEFAULT NULL,
    `expiresAt` timestamp NULL DEFAULT NULL,
    `lastModifiedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

CREATE TABLE `oauth_client_details` (
    `client_id` varchar(128) CHARACTER SET utf8mb3 NOT NULL,
    `resource_ids` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
    `client_secret` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
    `scope` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
    `authorized_grant_types` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
    `web_server_redirect_uri` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
    `authorities` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
    `access_token_validity` int DEFAULT NULL,
    `refresh_token_validity` int DEFAULT NULL,
    `additional_information` varchar(4096) CHARACTER SET utf8mb3 DEFAULT NULL,
    `autoapprove` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
     PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

CREATE TABLE `oauth_client_token` (
    `token_id` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
    `token` blob,
    `authentication_id` varchar(128) CHARACTER SET utf8mb3 NOT NULL,
    `user_name` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
    `client_id` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
     PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

CREATE TABLE `oauth_code` (
    `code` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
    `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

CREATE TABLE `oauth_refresh_token` (
    `token_id` varchar(256) CHARACTER SET utf8mb3 DEFAULT NULL,
    `token` blob,
    `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
