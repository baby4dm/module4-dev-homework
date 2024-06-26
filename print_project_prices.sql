SELECT project_id, SUM(salary * (finish_date - start_date) / 30)
FROM project_worker
JOIN worker ON worker_id = worker.id
JOIN project ON project.id = project_id
GROUP BY project_id
ORDER BY project_id;