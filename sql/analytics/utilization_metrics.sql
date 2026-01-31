CREATE OR REPLACE TABLE analytics.utilization_metrics AS
SELECT
  department,
  COUNT(DISTINCT bed_id) AS total_beds,
  AVG(los_days) AS avg_los,
  COUNT(*) AS admissions,
  SUM(los_days) AS bed_days_used
FROM analytics.patient_flow
GROUP BY department;