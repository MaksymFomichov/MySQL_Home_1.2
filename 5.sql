-- находим самый дешевый проект (исходя из cost всех проектов)
SELECT p.name, p.cost
FROM projects p
ORDER BY p.cost ASC
LIMIT 1