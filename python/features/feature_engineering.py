import pandas as pd

df = pd.read_csv('../../data/processed/patient_flow.csv')
df['high_los_flag'] = df['los_days'] > df['los_days'].quantile(0.75)
print(df)