-- добаляем в таблицу developers поле salary
ALTER TABLE developers ADD COLUMN salary decimal;

-- заполняем значения
UPDATE developers SET salary = 1000 WHERE id = 1;
UPDATE developers SET salary = 2000 WHERE id = 2;
UPDATE developers SET salary = 3000 WHERE id = 3;
UPDATE developers SET salary = 4000 WHERE id = 4;
UPDATE developers SET salary = 5000 WHERE id = 5;
