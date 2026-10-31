--what are the top paying data analyst jobs.
--identify the top 10 highest paying data analyst roles that are available remotely
--focuses on the job postings with specified salaries(remove NULL)
--WHY?! Highlight the top-paying opportunities for data analysts,offering insights 


SELECT job_postings_fact.job_id,job_postings_fact.job_title_short AS job_title,company_dim.company_id,company_dim.name AS company_name,job_postings_fact.salary_year_avg AS average_yearly_sal
FROM job_postings_fact 
LEFT JOIN company_dim 
ON job_postings_fact.company_id=company_dim.company_id
WHERE job_title_short LIKE ('%Data Analyst%') AND
job_location='Anywhere' AND
salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10;
