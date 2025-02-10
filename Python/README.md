# Wildlife A Global Species Analysis

## Table of Contents
1. [Introduction](#Introduction)
2. [Data Loading](#Data-Loading)
3. [Data Cleaning and Preprocessing](#Data-Cleaning-and-Preprocessing)
4. [Exploratory Data Analysis](#Exploratory-Data-Analysis)
- [Distribution of Conservation Status](#conservation-status-analysis)
- [Top 10 Animal Classes](#distribution-of-animal-classes)
- [Speed and Population Analysis](#speed-and-population-analysis)
- [Lifespan Analysis](#lifespan-analysis)
6. [Insights and Conclusions](#insights-and-conclusions)


## Introduction
This project represents my initial journey into data and Python programming, focusing on analyzing a comprehensive wildlife dataset.
This data set contains information about various animal species, their characteristics, habitats, and conservation status. The analysis includes population trends, species distribution, physical characteristics, and conservation insights.

This project is particularly relevant in the context of global biodiversity loss and the urgent need for effective conservation strategies. Understanding the factors that influence species survival, such as lifespan, habitat, and conservation status, can help inform policy decisions and conservation efforts.

The dataset used in this project is sourced from Kaggle: [Animal Planet](https://www.kaggle.com/datasets/lainguyn123/animal-planet)

### My First Python Data Project

**Project Goals:**
1. Clean and preprocess the wildlife dataset
2. Explore species characteristics
3. Visualize key findings

### Technologies Used
- **Python**: Data manipulation, analysis, and visualization
- **Pandas**: Data cleaning and preprocessing
- **Matplotlib & Seaborn**: Data visualization
- **NumPy**: Numerical computations
- **Jupyter Notebook**: Interactive coding and documentation

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
## Data Cleaning and Preprocessing

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

## Exploratory Data Analysis


### Distribution of animal classes

![imagem](https://github.com/user-attachments/assets/6b86ddf2-dd5b-43ce-b048-0df18b9503b4)

This bar graph shows the top 10 animal classes ranked by the number of species in each class.  
Birds clearly dominate in terms of species diversity, followed by mammals and reptiles.
Aves (birds) have the highest number of species, with 10,114 distinct species.
Scaphopoda (tusk shells) have the lowest number of species: 13.

```python
plt.figure(figsize=(12, 6))

# Get class counts
class_counts = df['Class'].value_counts()

# Create a barplot with color palette
ax = sns.barplot(x=class_counts.values[:10], y=class_counts.index[:10], palette="viridis")

# Add labels to the bars
for i, v in enumerate(class_counts.values[:10]):
    ax.text(v + 0.05, i, str(v), color='black', ha='left', va='center', fontsize=10)

# Customize the chart
plt.title('Top 10 Animal Classes', fontsize=14, fontweight='bold')
plt.xlabel('Number of Species', fontsize=12)
plt.ylabel('Class', fontsize=12)
plt.grid(axis='x', linestyle='--', alpha=0.6)  # Light grid for better readability
plt.tight_layout()

plt.show()
```

### Conservation Status Analysis

![imagem](https://github.com/user-attachments/assets/0b30532c-0fd9-483a-b42d-4b06207b4d35)

The conservation status distribution reveals a mix of stability and concern. While many species are classified as "Least Concern," a significant number have unknown statuses, highlighting gaps in biodiversity knowledge. The presence of "Vulnerable" and "Endangered" species underscores ongoing challenges in habitat preservation and species protection. This gradient from stability to critical risk emphasizes the need for continued conservation efforts, research, and proactive wildlife management to address biodiversity loss and prevent extinctions.

```python
plt.figure(figsize=(12, 6))
status_counts = df['Conservation_Status'].value_counts()

# Create the barplot
ax = sns.barplot(x=status_counts.values, y=status_counts.index, hue=status_counts.index, palette='RdYlGn_r', legend=False)

# Add labels to the bars
for i, v in enumerate(status_counts.values):
    ax.text(v + 0.05, i, str(v), color='black', ha='left', va='center', fontsize=10)

# Customize the chart
plt.title('Distribution of Conservation Status', fontsize=14, fontweight='bold')
plt.xlabel('Number of Species', fontsize=12)
plt.ylabel('Status', fontsize=12)
plt.grid(axis='x', linestyle='--', alpha=0.6)  # Light grid for better readability
plt.tight_layout()

plt.show()
```

### Speed and Population Analysis

![imagem](https://github.com/user-attachments/assets/1a1ffb04-cbd2-49a7-99de-387a9581926e)

The scatter plot reveals speed and population data only for Aves, Mammalia, and Reptilia, with almost no speed or population information for other animal classes. Most notably, birds (Aves) clearly dominate the high-speed range, showing a significant number of species capable of achieving extreme velocities compared to mammals and reptiles. The limited dataset underscores the need for more comprehensive research on speed and population dynamics across diverse animal taxonomic groups.

### Lifespan Analysis

![imagem](https://github.com/user-attachments/assets/471b5dbc-a7cd-4120-941d-ebac2083f0da)

The bar graph displays the average lifespan across different animal classes, revealing some intriguing variations in longevity. Reptilia stands out with the highest average lifespan of 20.5 years, significantly longer than other classes. Aves (birds) and Mammalia (mammals) show similar lifespans around 14-15 years, with birds at 14.7 years and mammals at 14.6 years. Amphibia has the shortest average lifespan at just 4 years, which is substantially lower than the other represented classes.

This visualization highlights the diverse life expectancies across different animal groups, suggesting significant evolutionary adaptations in longevity. The remarkable lifespan of reptiles, which is nearly five times that of amphibians, underscores the complex factors influencing biological aging and survival strategies in different taxonomic groups. The relatively consistent lifespans of birds and mammals also provide an interesting point of comparison in the animal kingdom.

```python
# Set figure size and style
plt.figure(figsize=(14, 7))
sns.set_style("whitegrid")
plt.rcParams['font.size'] = 12
plt.rcParams['axes.labelsize'] = 14
plt.rcParams['axes.titlesize'] = 16

# Calculate average lifespan and remove NaN values
avg_lifespan = df.groupby('Class')['Life_span_years'].mean().dropna().sort_values(ascending=False)

# Create a new color palette (using "coolwarm" for better contrast)
colors = sns.color_palette("coolwarm", n_colors=len(avg_lifespan))

# Plot with seaborn (set hue to 'Class' and disable the legend)
ax = sns.barplot(x=avg_lifespan.index, y=avg_lifespan.values, palette=colors, hue=avg_lifespan.index, legend=False)

# Add value labels on top of the bars with grey color
for i, v in enumerate(avg_lifespan.values):
    ax.text(i, v + 0.1, f'{v:.1f}', ha='center', va='bottom', fontweight='bold', color='grey')

# Title and labels
plt.title('Average Lifespan Across Animal Classes', fontweight='bold')
plt.xlabel('Animal Class', fontweight='bold')
plt.ylabel('Average Lifespan (years)', fontweight='bold')

# Add a subtle background color
plt.gca().set_facecolor('#f0f0f0')

# Adjust layout and add tight border
plt.tight_layout()
plt.show()
```

## Insights and Conclusions

### Key Findings
1. **Conservation Status**
   - Most critical conservation statuses

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
- Dataset Limitations: **Missing values**, inconsistent data formats.
- Biases: Potential lack of representation for some species.
- Future Enhancements: Machine learning models for species classification or conservation status prediction.

## Contact Information
- [**LinkedIn**](https://www.linkedin.com/in/ruben-sam/)
