# 🏥 Healthcare Patient Flow & Capacity Optimization Analytics 📈

## Overview

Hospitals operate under constant pressure to reduce patient wait times, optimize bed capacity, and improve care quality—often without additional resources.
This project analyzes end-to-end patient flow, from admission to discharge, to uncover operational inefficiencies and quantify opportunities to improve throughput and capacity using data-driven insights.

**Tech Stack:** BigQuery · SQL · Python · Looker Studio

## Business Problems

- Healthcare operations teams commonly face:

- Prolonged patient wait times during peak hours

- Inefficient bed utilization across departments

- Discharge delays that block new admissions

- Elevated 30-day readmission rates

- Limited visibility into system-wide bottlenecks

This project addresses these challenges by transforming raw admission and discharge events into actionable operational metrics.

## Project Objectives

- Analyze patient movement across departments

- Measure and optimize Length of Stay (LOS)

- Quantify bed occupancy and throughput

- Identify high-risk readmission patterns

- Simulate capacity improvements without adding beds

## Key Outcomes & Insights

1) Identified departments contributing disproportionately to delayed discharges

2) Quantified peak vs off-peak bed utilization patterns

3) Demonstrated that a 10–15% LOS reduction can significantly increase patient throughput without additional capacity

4) Highlighted patient segments with higher readmission risk to support targeted interventions

## Data Description

The project uses synthetic / anonymized healthcare data to ensure privacy and safety.

**Core entities include:**

- Patient ID (anonymized)

- Admission and discharge timestamps

- Department / unit

- Diagnosis category

- Bed ID

- 30-day readmission flag

- Derived Length of Stay (LOS)

The dataset structure mirrors real hospital operational data commonly found in EHR and CMS-style systems.

## Architecture Overview

Raw CSV Files
→ Ingested into BigQuery (raw datasets)
→ Transformed using SQL (patient flow, utilization, readmissions)
→ Materialized Analytics Tables
→ Validated and enhanced with Python (data quality, features, simulations)
→ Visualized in Looker Studio Dashboards

## Repository Structure
```text
.
├── data/
│   ├── raw/                # Raw admissions & discharges
│   └── processed/          # Derived patient flow tables
├── sql/
│   ├── schemas/            # BigQuery table definitions
│   ├── transformations/    # Patient journey transformations
│   └── analytics/          # Utilization & readmission metrics
├── python/
│   ├── validation/         # Data quality checks
│   ├── features/           # Feature engineering
│   └── simulation/         # LOS & capacity simulations
├── dashboards/             # Looker Studio structure & notes
├── docs/                   # Architecture & interview notes
└── README.md
```
## Key Metrics Calculated

**- Average Length of Stay (LOS)**

**- Bed Occupancy Rate**

**- Admission-to-Discharge Throughput**

**- 30-Day Readmission Rate**

**- Peak vs Off-Peak Utilization**

**- Department-Level Bottlenecks**

## Core Analyses

**Patient Flow Analysis**

- Tracked patient journeys from admission to discharge

- Identified delays between departments

- Compared weekday vs weekend throughput

**Capacity & Utilization**

- Detected overutilized and underutilized units

- Analyzed hourly, daily, and seasonal demand patterns

- Quantified idle bed capacity during non-peak periods

**Readmission Risk Analysis**

- Segmented patients by LOS, department, and diagnosis

- Identified patterns associated with higher readmission rates

- Supported operational and clinical intervention strategies

**Scenario Simulation**

- Modeled LOS reductions of 10% and 15%

- Quantified resulting capacity gains in bed-days

- Demonstrated throughput improvements without adding beds

## Dashboards (Looker Studio)

 **Executive Overview**

- Hospital occupancy trends

- Average LOS and readmission KPIs

- High-impact operational bottlenecks

**Operations View**

- Department-level utilization

- Admission vs discharge timing

- Daily and hourly demand patterns

**Scenario Analysis**

- Capacity impact of LOS reductions

- Operational what-if simulations

(Dashboard links and screenshots can be added here)

## How to Run the Project

**1. Load Data**

- Upload raw CSV files into BigQuery (raw dataset)

**2. Run SQL Pipelines**

- Execute scripts in order:

   - sql/schemas
   - sql/transformations
   - sql/analytics

**3. Run Python Scripts**

pip install pandas
python python/validation/data_quality_checks.py
python python/features/feature_engineering.py
python python/simulation/los_reduction_simulation.py


**4. Build Dashboards**

- Connect BigQuery to Looker Studio

- Create Executive, Operations, and Scenario dashboards

## Business Impact

This project demonstrates how analytics can:

1. Improve patient throughput without capital expansion

2. Reduce operational strain during peak demand

3. Enable proactive discharge and readmission strategies

4. Support data-driven healthcare operations at scale

## Use Cases

- Healthcare operations analytics

- Capacity planning & optimization

- Clinical operations support

- Analytics engineering portfolios

- Interview case studies

## Notes

This project uses synthetic healthcare data and is intended for educational, analytical, and portfolio purposes only.
