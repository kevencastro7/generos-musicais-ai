import pandas as pd

base = pd.read_csv('testdata.csv')

previsores = base.iloc[:, 0:20].values
classe = base.iloc[:, 20].values

from sklearn.preprocessing import StandardScaler
scaler = StandardScaler()
previsores = scaler.fit_transform(previsores)