SELECT id, MAX((finish_date - start_date)/30) AS month_count
FROM project
GROUP BY id
HAVING MAX((finish_date - start_date)/30) = (SELECT MAX((finish_date - start_date)/30)
											FROM project);