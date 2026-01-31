SELECT
  department,
  AVG(los_days) AS avg_los,
  AVG(readmitted_30d) AS readmission_rate
FROM analytics.patient_flow
GROUP BY department;