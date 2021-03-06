CREATE TABLE IF NOT EXISTS `pasteme_admin_dictionary`
(
    `id`         BIGINT UNSIGNED NOT NULL COMMENT '主键' PRIMARY KEY AUTO_INCREMENT,
    `type`       INT             NOT NULL COMMENT '词典类型',
    `dictionary` TEXT            NOT NULL COMMENT '词典，为了兼容 MySQL 5.5 版本使用 TEXT 替代 JSON',
    KEY `idx_type` (`type`)
)
    COMMENT '存储不同类型的词典'
    COLLATE = utf8mb4_general_ci
    ENGINE = Innodb
    DEFAULT CHARSET = utf8mb4;