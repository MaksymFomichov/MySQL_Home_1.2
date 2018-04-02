-- получаем общую зарплату Java разработчиков
SELECT sum(d.salary)
FROM developers d, skills s, developers_skills ds
WHERE d.id = ds.developer_id AND s.id = ds.skill_id
AND s.name LIKE 'java'