-- 1. Ad Frequency vs Drop-off
SELECT 
  CASE 
    WHEN ad_frequency < 0.2 THEN 'Low'
    WHEN ad_frequency BETWEEN 0.2 AND 0.5 THEN 'Medium'
    ELSE 'High'
  END AS freq_bucket,
  COUNT(*) AS users,
  ROUND(AVG(dropped_off),2) AS drop_rate
FROM final_user_sessions
GROUP BY freq_bucket;

-- 2. Repeat Ads vs Retention
SELECT 
  same_ad_repeat_count,
  ROUND(AVG(next_day_return),2) AS retention_rate
FROM final_user_sessions
GROUP BY same_ad_repeat_count
ORDER BY same_ad_repeat_count;

-- 3. Ads After Pause Impact
SELECT 
  ads_after_pause,
  ROUND(AVG(dropped_off),2) AS drop_rate
FROM final_user_sessions
GROUP BY ads_after_pause;

-- 4. Ads vs Completion Rate
SELECT 
  ads_shown,
  ROUND(AVG(session_completed),2) AS completion_rate
FROM final_user_sessions
GROUP BY ads_shown
ORDER BY ads_shown;

-- 5. Ad Frequency Distribution (Bonus)
SELECT 
  freq_bucket,
  COUNT(*) as users
FROM (
  SELECT 
    CASE 
      WHEN ad_frequency < 0.2 THEN 'Low'
      WHEN ad_frequency BETWEEN 0.2 AND 0.5 THEN 'Medium'
      ELSE 'High'
    END AS freq_bucket
  FROM final_user_sessions
) t
GROUP BY freq_bucket;