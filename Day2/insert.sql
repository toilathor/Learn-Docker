CREATE DATABASE IF NOT EXISTS database1;

USE database1;
SET @start_time = NOW();

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

DROP PROCEDURE IF EXISTS insert_users;

DELIMITER //
CREATE PROCEDURE insert_users()
BEGIN
   DECLARE i INT DEFAULT 1;
      WHILE i <= 1000000 DO
         INSERT INTO users (name) VALUES (CONCAT('User ', i));
         SET i = i + 1;
      END WHILE;
END//
DELIMITER ;

CALL insert_users();

SELECT COUNT(*) FROM users;

SET @end_time = NOW();

SELECT TIMEDIFF(@end_time, @start_time) AS execution_time;
