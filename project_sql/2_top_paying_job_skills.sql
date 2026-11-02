WITH top_paying_jobs AS
(SELECT 
job.job_id,job.job_title_short,company.name,job.salary_year_avg
FROM job_postings_fact AS job
LEFT JOIN company_dim AS company
ON job.company_id=company.company_id
WHERE job.job_title_short='Data Analyst' AND job.job_location='Anywhere' AND job.salary_year_avg IS NOT NULL
ORDER BY job.salary_year_avg DESC
LIMIT 10)

SELECT top_paying_jobs.job_id,top_paying_jobs.job_title_short,top_paying_jobs.name,top_paying_jobs.salary_year_avg,skills_dim.skills
 FROM top_paying_jobs
INNER JOIN skills_job_dim
ON top_paying_jobs.job_id=skills_job_dim.job_id
INNER JOIN skills_dim
ON skills_job_dim.skill_id=skills_dim.skill_id

-- IMPORTANT: Use LEFT JOIN instead of INNER JOIN when connecting the top-paying jobs
-- with skills_job_dim and skills_dim. INNER JOIN would exclude job postings that
-- have no matching skill records, potentially removing some of the original top 10
-- highest-paying jobs and changing the results of the analysis.