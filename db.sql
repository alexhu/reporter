CREATE SCHEMA `reporter` ;


-- user
CREATE TABLE `reporter`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `name` VARCHAR(45) NULL COMMENT '',
  `status` INT NULL DEFAULT 0 COMMENT '',
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  `updated_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  `entry_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  `training_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '');

-- corpus
CREATE TABLE `reporter`.`corpus` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `title` VARCHAR(5000) NULL COMMENT '',
  `content` VARCHAR(5000) NULL COMMENT '',
  `type` INT NULL COMMENT '',
  `type_name` VARCHAR(45) NULL COMMENT '',
  `author` INT NULL COMMENT '',
  `import_record` INT NULL COMMENT '',
  `updated_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  `row_context` VARCHAR(5000) NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '');

-- import_record
CREATE TABLE `reporter`.`import_record` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `file_name` VARCHAR(250) NULL COMMENT '',
  `file_path` VARCHAR(1250) NULL COMMENT '',
  `file_author` INT NULL COMMENT '',
  `user` INT NULL COMMENT '',
  `status` INT NULL DEFAULT 0 COMMENT '',
  `record_count` INT NULL DEFAULT 0 COMMENT '',
  `import_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  `updated_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '');
  
 -- holiday
 CREATE TABLE `reporter`.`holiday` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `user` INT NULL COMMENT '',
  `user_name` VARCHAR(45) NULL COMMENT '',
  `type` INT NULL COMMENT '',
  `type_name` VARCHAR(45) NULL COMMENT '',
  `holiday_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  `updated_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '');

  
  
