-- получаем среднюю ЗП программистов в самом дешевом проекте
SELECT avg(d.salary)
FROM developers d, projects p, developers_projects dp
WHERE d.id = dp.developer_id AND p.id = dp.project_id
AND p.name = (SELECT p.name
FROM projects p
ORDER BY p.cost ASC
LIMIT 1)