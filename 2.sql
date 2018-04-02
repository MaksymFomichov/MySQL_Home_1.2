-- ищем самый дорогой проект (исходя из salary всех разработчиков)
SELECT DISTINCT (p.name), tc.totalCost FROM projects p
JOIN developers_projects dp ON p.id = dp.project_id
JOIN developers d ON d.id = dp.developer_id
JOIN (SELECT project_id pid, sum(salary) totalCost
	FROM developers d, projects p, developers_projects dp
    WHERE d.id = dp.developer_id AND p.id = dp.project_id
    GROUP BY p.name) tc ON tc.pid = p.id
JOIN (SELECT project_id pid, sum(salary) totalCost
	FROM developers d, projects p, developers_projects dp
    WHERE d.id = dp.developer_id AND p.id = dp.project_id
    GROUP BY p.name
    ORDER BY totalCost DESC
    LIMIT 1) maxCost ON maxCost.totalCost = tc.totalCost