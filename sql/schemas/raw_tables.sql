CREATE SCHEMA IF NOT EXISTS raw;

CREATE OR REPLACE TABLE raw.admissions (
  patient_id STRING,
  admission_ts TIMESTAMP,
  department STRING,
  diagnosis STRING,
  bed_id STRING
);

CREATE OR REPLACE TABLE raw.discharges (
  patient_id STRING,
  discharge_ts TIMESTAMP,
  readmitted_30d INT64
);