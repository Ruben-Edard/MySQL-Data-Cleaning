# Table of Contents
1. [Introduction](#Introduction)
2. [Data Loading](#Data-Loading)
3. [Data Cleaning and Preprocessing](#Data-Cleaning-and-Preprocessing)
4. [Exploratory Data Analysis](#Exploratory-Data-Analysis)
5. [Data Visualization](#Data-Visualization)
6. [Conclusion and Future Work](#Conclusion-and-Future-Work)

# Wildlife A Global Species Analysis

# Introduction
This project analyzes a comprehensive wildlife dataset containing information about various animal species, their characteristics, habitats, and conservation status. The analysis includes population trends, species distribution, physical characteristics, and conservation insights.

The dataset used in this project is sourced from Kaggle here: [Animal Planet](https://www.kaggle.com/datasets/lainguyn123/animal-planet) and contains comprehensive information about various animal species.

# Data Loading

```python
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np

# Read the dataset
df = pd.read_csv('animals_info.csv')

# Display basic information about the dataset
print("=== Dataset Overview ===")
print(f"Number of animals: {len(df)}")
print(f"\nColumns in the dataset:")
for col in df.columns:
    print(f"- {col}")

# Display first few rows
print("\n=== First Few Rows ===")
df.head(3)
```

# Key Insights
