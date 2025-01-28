SELECT *
FROM layoffs_staging;

WITH duplicate_cte AS
(SELECT *,
ROW_NUMBER() OVER(
PARTITION BY company, location, industry, total_laid_off, percentage_laid_off, 'date', stage, country, funds_raised_millions) AS row_num
FROM layoffs_staging
)

DELETE
FROM duplicate_cte
WHERE row_num > 1;

SELECT *
FROM layoffs_staging
WHERE company = 'Casper';

SELECT *
FROM layoffs_staging2
WHERE total_laid_off IS NULL
AND percentage_laid_off IS NULL;

UPDATE layoffs_staging2
SET industry = NULL
WHERE industry LIKE 'Bally%';

SELECT *
FROM layoffs_staging2
WHERE industry LIKE 'Bally%';

SELECT *
FROM layoffs_staging2
WHERE company='Airbnb' ;

SELECT *
FROM layoffs_staging2 t1
JOIN layoffs_staging2 t2 ON t1.company=t2.company AND t1.location=t2.location
WHERE (t1.industry IS NULL OR t1.industry = '') AND t2.industry IS NOT NULL;

UPDATE layoffs_staging2 t1
JOIN layoffs_staging2 t2 ON t1.company=t2.company
SET t1.industry = t2.industry
WHERE t1.industry IS NULL AND t2.industry IS NOT NULL;

SELECT *
FROM layoffs_staging2;

DELETE
FROm layoffs_staging2
WHERE total_laid_off IS NULL
AND percentage_laid_off IS NULL;

ALTER TABLE layoffs_staging2
DROP COLUMN row_num;