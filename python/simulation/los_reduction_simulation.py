import pandas as pd

df = pd.read_csv('../../data/processed/patient_flow.csv')

baseline = df['los_days'].sum()
reduced_10 = (df['los_days'] * 0.9).sum()
reduced_15 = (df['los_days'] * 0.85).sum()

print("Baseline bed-days:", baseline)
print("10% LOS reduction:", reduced_10)
print("15% LOS reduction:", reduced_15)