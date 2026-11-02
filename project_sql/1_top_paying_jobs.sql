--what are the top paying data analyst jobs.
--identify the top 10 highest paying data analyst roles that are available remotely
--focuses on the job postings with specified salaries(remove NULL)
--WHY?! Highlight the top-paying opportunities for data analysts,offering insights 


SELECT 
job.job_id,job.job_title_short,company.name,job.salary_year_avg
FROM job_postings_fact AS job
LEFT JOIN company_dim AS company
ON job.company_id=company.company_id
WHERE job.job_title_short='Data Analyst' AND job.job_location='Anywhere' AND job.salary_year_avg IS NOT NULL
ORDER BY job.salary_year_avg DESC
LIMIT 10;

-- NOTE: This query identifies the actual top 10 highest-paying remote Data Analyst jobs.
-- These 10 job postings serve as the base dataset for the subsequent skills analysis.



