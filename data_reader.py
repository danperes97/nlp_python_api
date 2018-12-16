import pandas as pd
from pandas import ExcelWriter
from pandas import ExcelFile
import ast

def read_file(file, sheet):
    df = pd.read_excel(file, sheet_name=sheet)

    return [create_rows(df, i) for i in df.index]

def create_rows(df, i):
    return (df['Examples'][i], { 'entities': ast.literal_eval(df['Entities'][i]) })
