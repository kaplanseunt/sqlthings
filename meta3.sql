 SELECT
    AVG(CASE 
        WHEN p.promotion_name IS NOT NULL 
        AND (s.transaction_date = p.start_date 
        OR s.transaction_date = p.end_date)
        THEN 1 
        ELSE 0 
    END) * 100 AS pct_of_transactions_on_first_or_last_day_of_valid_promotion
FROM
    sales s
LEFT JOIN promotions p 
    ON s.promotion_id = p.promotion_id
WHERE
    p.promotion_name IS NOT NULL;

