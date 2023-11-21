import os
import pandas as pd

import logging
from logging import info as log


# logging setup
name_tokens = ["logs/", "step01", ".log"]

logging.basicConfig(level=logging.INFO, filename="".join(name_tokens), filemode="w")

# log a message
log("Testing message...")


# data setup
datapath = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))

filename = "data.csv"

filepath = os.path.join(datapath, "data", filename)

df = pd.read_csv(filepath)


# log the head of the dataframe
log(df.head())
