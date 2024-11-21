# ML Notes and Cheatsheet
# Table of Contents
## [1 ML Lifecycle ](#chap1)
## [2 Models List](#chap2)
- ### [2.1 Supervised Learning](#chap2.1)
- ### [2.2 Unsupervised Learning](#chap2.2)
- ### [2.3 Summary](#chap2.3)
## [3 Cheatsheet](#chap3)


## 1 ML Lifecycle <a name="chap1"></a>
0. Dataset Preparation (optional)
- remove empty spaces
- remove typos

1. Data Preparation
Load in data
- pandas
- numpy


2. Data Cleaning and Preprocessing
Make it easier for the algorithm to process the data by **'chewing'** it for the ML algorithm
- Adresses missing values, outliers, inconsistencies, etc. in the data
- Standardise formats, scale values and encode categorical values (e.g. Red -> 0, White -> 1)

3. Exploratory Data Analysis (EDA)
Understand the patterns and characteristics within the data. Subsequent steps are dependent on the revelations done in this part
- matplotlib.pyplot
- seaborn
- visualise the data
- identidy patterns, trends and problems in data

4. Feature Engineering and Selection
Select features that are the most relevant from the different factors in the dataset
- Create new features or transform exisiting ones to better capture patterns and relationships
- Identify the subset of features most significantly impact the model's performance

5. Model Selection and Training
Decide on the proper model to go forward with training based on previous steps' information and train the model chosen.
- Model should align with the defined problem and characteristics determiend in the previous steps.
- Train the model iteratively: parameters should be adjusted to minimise cost function and reduce loss
- refer to Model section for more information

6. Model Evaluation and Tuning

## 2 Models <a name="chap2"></a>
### 2.1 Supervised Learning <a name="chap2.1"></a>
### 2.2 Unsupervised Learning <a name="chap2.2"></a>
### 2.3 Summary <a name="chap2.3"></a>

## 3 Cheatsheet <a name="chap3"></a>

