
# Wildlife A Global Species Analysis

## Table of Contents
1. [Introduction](#Introduction)
2. [Data Loading](#Data-Loading)
3. [Data Cleaning and Preprocessing](#Data-Cleaning-and-Preprocessing)
4. [Exploratory Data Analysis](#Exploratory-Data-Analysis)
5. [Insights and Conclusions](#insights-and-conclusions)


## Introduction
This project represents my initial journey into data and Python programming, focusing on analyzing a comprehensive wildlife dataset.
This data set contains information about various animal species, their characteristics, habitats, and conservation status. The analysis includes population trends, species distribution, physical characteristics, and conservation insights.

The dataset used in this project is sourced from Kaggle: [Animal Planet](https://www.kaggle.com/datasets/lainguyn123/animal-planet)

### My First Python Data Project

**Project Goals:**
1. Clean and preprocess the wildlife dataset
2. Explore species characteristics
3. Visualize key findings
4. Provide insights into global biodiversity

**Personal Learning Objectives:**
- Improve Python programming skills
- Learn data manipulation with pandas
- Practice data visualization techniques
- Develop analytical thinking

## Data Loading
### Import Required Libraries
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
### Data Cleaning and Preprocessing

Let's clean our data and prepare it for analysis:
1. Handle missing values
2. Clean numerical columns (Population size, Life span, Top speed, Weight)
3. Extract meaningful information from complex columns (Distribution, Habits)
   
```python
def clean_numeric_value(value):
    """Clean numeric values that might contain ranges (e.g., '10-20 yrs')"""
    if pd.isna(value):
        return np.nan
    if isinstance(value, str):
        # Extract numbers from string
        numbers = pd.to_numeric(value.replace(',', '').split('-')[0], errors='coerce')
        return numbers
    return value

# Clean population size
df['Population_size_clean'] = df['Population size'].apply(clean_numeric_value)

# Clean life span (extract first number from ranges like '10-20 yrs')
df['Life_span_years'] = df['Life span'].str.extract(r'(\d+)').astype(float)  # Added 'r' prefix

# Clean top speed
df['Speed_kmh'] = df['Top speed'].str.extract(r'(\d+)').astype(float)  # Added 'r' prefix

# Display summary of cleaned numerical columns
print("=== Summary Statistics ===")
numerical_cols = ['Population_size_clean', 'Life_span_years', 'Speed_kmh']
print(df[numerical_cols].describe())

# Display number of missing values
print("\n=== Missing Values ===")
print(df[numerical_cols].isnull().sum())
```
## Insights and Conclusions

### Key Findings
1. **Conservation Status**
   - Most critical conservation statuses
   - Percentage of endangered species

2. **Species Distribution**
   - Dominant animal classes
   - Biodiversity insights

3. **Speed and Population Dynamics**
   - Relationship between speed and population size
   - Variations across different animal classes

4. **Lifespan Patterns**
   - Variations in lifespan across animal classes
   - Factors potentially influencing longevity

### Limitations and Future Work
- Dataset constraints
- Potential biases in data collection
- Suggestions for further research

**Skills Developed:**
- Python programming
- Pandas data manipulation
- Matplotlib and Seaborn visualization
- Statistical analysis
- Markdown documentation
