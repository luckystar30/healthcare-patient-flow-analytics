import pandas as pd

df = pd.read_csv('../../data/raw/admissions.csv')
assert df.isnull().sum().sum() == 0
print("Raw admissions data validated")