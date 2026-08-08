SELECT COUNT(*)
FROM data_analyst_jobs; -- Q1. 1793

SELECT *
FROM data_analyst_jobs
LIMIT 10; -- Q2. Exxon Mobile

SELECT DISTINCT location
FROM data_analyst_jobs
ORDER BY location;

SELECT COUNT(*) AS tn_postings
FROM data_analyst_jobs
WHERE location = 'TN'; 

SELECT COUNT(*) AS tn_ky_postings
FROM data_analyst_jobs
WHERE location IN ('TN', 'KY'); -- Q3. 21 in TN, 27 for TN and KY

SELECT COUNT(*) AS tn_above_4_stars
FROM data_analyst_jobs
WHERE location = 'TN'
AND	 star_rating > 4; -- Q4. 3

SELECT COUNT(*) AS review_count_500_1000
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000; -- Q5. 151

SELECT location AS state,
AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
GROUP BY location
ORDER BY avg_rating DESC; -- Q6. NE

SELECT DISTINCT title
FROM data_analyst_jobs; -- Q7. 881

SELECT DISTINCT title
FROM data_analyst_jobs
WHERE location = 'CA'; -- Q8. 230

SELECT COUNT(DISTINCT company) AS company_count
FROM data_analyst_jobs
WHERE review_count > 5000; -- Q9. 40

SELECT company,
AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company
ORDER BY avg_rating DESC; -- Q10. General Motors, Unilever, Microsoft, Nike, Amex, Kaiser Permanente. All tied at 4.2

SELECT DISTINCT title
FROM data_analyst_jobs
WHERE title LIKE '%Analyst%'; -- Q11. 754

SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE title NOT LIKE '%Analyst%'
AND title NOT LIKE '%Analytics%'; -- Q12. 26

SELECT DISTINCT title
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analyst%'
AND title NOT ILIKE '%Analytics%'
ORDER BY title; -- Q12 B. Tableau

SELECT domain,
COUNT(*) AS hard_to_fill_jobs
FROM data_analyst_jobs
WHERE skill ILIKE '%SQL'
AND days_since_posting > 21
AND domain IS NOT NULL
GROUP BY domain
ORDER by hard_to_fill_jobs DESC; -- BONUS. Consulting & Business Services - 30, Internet & Software - 19, Health Care - 17.







