DELIMITER //
CREATE PROCEDURE AddData()
 BEGIN
   # MySQL-style single line comment
   INSERT INTO test_data (value) VALUES ('Hello');
 END //
DELIMITER;

CALL AddData();