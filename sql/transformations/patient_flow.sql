CREATE OR REPLACE TABLE analytics.patient_flow AS
SELECT
  a.patient_id,
  a.department,
  a.diagnosis,
  a.bed_id,
  a.admission_ts,
  d.discharge_ts,
  TIMESTAMP_DIFF(d.discharge_ts, a.admission_ts, HOUR)/24 AS los_days,
  d.readmitted_30d
FROM raw.admissions a
JOIN raw.discharges d USING (patient_id);