# ✈️ Airline Passenger Satisfaction Analysis

![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)
![Pandas](https://img.shields.io/badge/Pandas-1.3+-orange.svg)
![Scikit-learn](https://img.shields.io/badge/Scikit--learn-1.0+-green.svg)
![PowerBI](https://img.shields.io/badge/Power_BI-Dashboard-yellow.svg)
![SQL](https://img.shields.io/badge/SQL-Analytics-orange.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)

&gt; **End-to-end data analytics project combining SQL analytics, interactive Power BI dashboards, and machine learning to predict and improve airline customer satisfaction.**

---

## 📋 Table of Contents

- [Executive Summary](#-executive-summary)
- [Business Problem](#-business-problem)
- [Dataset Overview](#-dataset-overview)
- [Key Findings & Insights](#-key-findings--insights)
- [Technical Architecture](#-technical-architecture)
- [Power BI Dashboard](#-power-bi-dashboard)
- [Machine Learning Pipeline](#-machine-learning-pipeline)
- [Actionable Recommendations](#-actionable-recommendations)
- [Installation & Usage](#-installation--usage)
- [Project Structure](#-project-structure)

---

## 🎯 Executive Summary

This project analyzes **129,880 airline passenger records** to understand satisfaction drivers and build predictive models. The analysis reveals a **critical satisfaction gap**: only **43.45%** of passengers are satisfied, with an NPS proxy score of **-13.11** indicating significant improvement opportunities.

**Key Business Impact:**
- ✅ Identified **50.7 percentage point satisfaction gap** between Business and Economy class
- ✅ Discovered **Online Boarding** as the #1 differentiator (1.37-point rating gap)
- ✅ Built ML model achieving **&gt;95% prediction accuracy** for satisfaction prediction
- ✅ Created interactive prediction system for real-time customer satisfaction scoring

---

## 🎓 Business Problem

**Primary Question:** *What factors drive airline passenger satisfaction, and how can we predict and improve it?*

**Specific Objectives:**
1. Identify service gaps between satisfied and dissatisfied passengers
2. Understand demographic and operational factors affecting satisfaction
3. Build predictive models to identify at-risk customers
4. Create actionable recommendations for service improvement

---

## 📊 Dataset Overview

| Attribute | Details |
|-----------|---------|
| **Total Records** | 129,880 passengers |
| **Features** | 24 attributes (demographic, service ratings, operational) |
| **Target Variable** | `satisfaction` (Satisfied / Neutral or Dissatisfied) |
| **Data Quality** | Clean dataset with minimal missing values |

### Feature Categories

| Category | Features |
|----------|----------|
| **Demographics** | Gender, Age, Age Group, Customer Type |
| **Travel Profile** | Type of Travel, Class, Flight Distance, Distance Group |
| **Service Ratings** | Inflight wifi, Entertainment, Seat comfort, Food & drink, Online boarding, etc. (14 services rated 1-5) |
| **Operational** | Departure/Arrival delays, Delay groups |

### Class Distribution
- **Business**: 47.9% (62,160 passengers)
- **Economy**: 44.9% (58,309 passengers)  
- **Economy Plus**: 7.2% (9,411 passengers)

---

## 🔍 Key Findings & Insights

### 1. Overall Satisfaction Metrics

| Metric | Value | Status |
|--------|-------|--------|
| **Satisfaction Rate** | 43.45% | ⚠️ Below Average |
| **NPS Proxy Score** | -13.11 | 🔴 Critical |
| **Dissatisfied Rate** | 56.55% | 🔴 High Risk |

### 2. Critical Service Gaps (Satisfied vs. Dissatisfied Passengers)

| Service | Satisfied Avg | Dissatisfied Avg | **Gap** | Priority |
|---------|---------------|------------------|---------|----------|
| **Online Boarding** | 4.03 | 2.66 | **+1.37** | 🔴 Critical |
| **Inflight Entertainment** | 3.96 | 2.89 | **+1.07** | 🟠 High |
| **Seat Comfort** | 3.97 | 3.04 | **+0.93** | 🟠 High |
| **On-board Service** | 3.86 | 3.02 | **+0.84** | 🟡 Medium |
| **Leg Room Service** | 3.82 | 2.99 | **+0.83** | 🟡 Medium |

### 3. Class-Based Satisfaction Analysis

| Class | Satisfaction Rate | Passenger Count |
|-------|-------------------|-----------------|
| **Business** | 69.4% | 62,160 |
| **Economy Plus** | 57.7% | 9,411 |
| **Economy** | 18.8% | 58,309 |

**Insight:** Business class passengers are **3.7x more likely** to be satisfied than Economy passengers.

### 4. Travel Type Impact

| Travel Type | Satisfaction Rate | Volume |
|-------------|-------------------|--------|
| **Business Travel** | 58.0% | 69.1% of passengers |
| **Personal Travel** | 10.9% | 30.9% of passengers |

**Insight:** Business travelers show **5.3x higher satisfaction** despite higher service expectations.

### 5. Delay Impact Analysis

| Delay Category | Satisfaction Rate | Avg Delay (min) |
|----------------|-------------------|-----------------|
| **On Time** | 45.9% | 0 |
| **Minor Delay (1-30min)** | 40.2% | 14.7 |
| **Moderate Delay (31-120min)** | 38.5% | 52.3 |
| **Severe Delay (120min+)** | 35.2% | 187.4 |

**Insight:** Each delay category reduces satisfaction by **5-7 percentage points**.

### 6. Age Demographics & Satisfaction

| Age Group | % of Passengers | Satisfaction Rate |
|-----------|-----------------|-------------------|
| Adult (36-50) | 34.3% | 48.2% |
| Young (0-25) | 21.7% | 38.5% |
| Young Adult (26-35) | 18.1% | 45.1% |
| Middle Age (51-60) | 18.1% | 41.8% |
| Senior (60+) | 7.7% | 39.2% |

---

## 🏗️ Technical Architecture

┌─────────────────────────────────────────────────────────────┐
│                        DATA SOURCES                         │
│         Airline_Data.xlsx (129,880 records)                 │
└───────────────────────────┬─────────────────────────────────┘
                            │
        ┌───────────────────┼───────────────────┐
        │                   │                   │
        ▼                   ▼                   ▼
┌───────────────┐   ┌───────────────┐   ┌───────────────┐
│      SQL      │   │   Power BI    │   │   Python ML   │
│   Analytics   │   │  Dashboard    │   │   Pipeline    │
└───────┬───────┘   └───────┬───────┘   └───────┬───────┘
        │                   │                   │
        └───────────────┬───┴───────────┬───────┘
                        │               │
                        ▼               ▼
┌─────────────────────────────────────────────────────────────┐
│                    INSIGHTS & ACTIONS                       │
│  • Service Gap Analysis    • Predictive Modeling            │
│  • Trend Identification   • Customer Segmentation           │
│  • Performance Metrics    • Real-time Prediction            │
└─────────────────────────────────────────────────────────────┘


---

## 📈 Power BI Dashboard

The interactive Power BI dashboard provides executive-level insights through comprehensive visualizations:

### Dashboard Components

| Section | Visual Type | Purpose |
|---------|-------------|---------|
| **Satisfaction Overview** | Pie Chart | Travel type distribution |
| **Demographics** | Bar Chart | Age group analysis |
| **Service Metrics** | KPI Cards | Average ratings display |
| **Customer Type** | Column Chart | Loyalty vs. satisfaction |
| **Class Analysis** | Donut Chart | Class distribution & satisfaction |
| **Delay Impact** | Grouped Bar Chart | Delay vs. satisfaction correlation |
| **NPS Proxy** | KPI Card | Net Promoter Score indicator |

### Key Dashboard Metrics

- **NPS Proxy: -13.11** (indicates more detractors than promoters)
- **Average Departure Delay: 14.71 minutes**
- **Dissatisfied Rate: 56.55%**
- **Customer Journey Score: 3.22/5**
- **Average Arrival Delay: 15.09 minutes**

### Dashboard Preview

![Airline Dashboard](https://github.com/nujoomzmn/AeroInsight-Airline-Passenger-Satisfaction-Dashboard/blob/main/Airline%20Dashboard.png)

---

## 🤖 Machine Learning Pipeline

The `AirlineMLPipeline` class provides a complete end-to-end ML workflow from data preparation to interactive predictions:

### Supported Algorithms

| Algorithm | Type | Use Case |
|-----------|------|----------|
| **Random Forest** | Ensemble | High accuracy, feature importance |
| **Gradient Boosting** | Ensemble | Best performance, handles imbalance |
| **Extra Trees** | Ensemble | Fast training, low variance |
| **Logistic Regression** | Linear | Baseline model, interpretability |
| **SVM** | Kernel-based | Complex boundaries |
| **Naive Bayes** | Probabilistic | Fast inference |
| **K-Nearest Neighbors** | Instance-based | Local patterns |
| **Decision Tree** | Tree-based | Interpretable rules |

### Pipeline Features

`python
# Initialize pipeline
pipeline = AirlineMLPipeline(df_ml)

# Run complete workflow
pipeline.run_complete_pipeline()

# Interactive prediction
pipeline.interactive_prediction()

# Batch prediction
results = pipeline.batch_prediction(new_customers)
# ✈️ Airline Customer Satisfaction Prediction System

An end-to-end machine learning pipeline designed to predict airline customer satisfaction, provide real-time scoring, and deliver actionable business insights to improve customer experience and operational efficiency.

---

## 📌 Project Overview

This project focuses on:
- Predicting customer **satisfaction vs dissatisfaction**
- Identifying **key drivers** impacting satisfaction
- Enabling **real-time and batch predictions**
- Translating model outputs into **business actions**

---

## 🧠 Model Performance & Methodology

### 🔁 Cross-Validation
- **5-Fold Stratified Cross-Validation**
- Ensures balanced class distribution and robust evaluation

### ⚙️ Hyperparameter Tuning
- **GridSearchCV**
- Optimal parameters selected based on validation performance

### 📊 Evaluation Metrics
The model is evaluated using multiple metrics to ensure reliability:

- Accuracy
- Precision
- Recall
- F1 Score
- AUC-ROC

### 🌲 Feature Importance
- Extracted from **tree-based models**
- Helps identify the most influential service and operational factors affecting satisfaction

---

## 🔮 Prediction System

The pipeline includes an **interactive prediction system** with the following capabilities:

- ✅ Real-time customer satisfaction scoring
- 📈 Probability estimates for satisfaction / dissatisfaction
- 📉 Confidence intervals for predictions
- 📦 Batch processing for multiple customers

---

## 💡 Actionable Recommendations

### 🚀 Immediate Actions (0–3 Months)

| Priority | Action                               | Expected Impact |
|--------|--------------------------------------|----------------|
| 🔴 Critical | Redesign Online Boarding Process     | +15% satisfaction |
| 🔴 Critical | Upgrade Inflight Entertainment       | +8% satisfaction |
| 🟠 High | Improve Economy Class Seat Comfort   | +5% satisfaction |

---

### 🧭 Strategic Initiatives (3–12 Months)

#### 1️⃣ Class Experience Harmonization
- Address the **50.7-point satisfaction gap** between Business and Economy
- Introduce **“Economy Plus” upgrades** at check-in

#### 2️⃣ Delay Management System
- Implement **predictive delay alerts**
- Offer **proactive compensation** for delays > 30 minutes  
- 🎯 Target: **40% reduction in delay-related dissatisfaction**

#### 3️⃣ Personalized Service Delivery
- **Business Travelers**: Speed, efficiency, connectivity
- **Personal Travelers**: Comfort and entertainment
- **Age-based service customization**

---

## 🛠️ Operational Improvements Roadmap

| Service Area     | Current Avg | Target Avg | Action Plan |
|------------------|------------|------------|-------------|
| Inflight WiFi    | 2.73 / 5   | 3.5 / 5   | Bandwidth upgrade, free tier |
| Food & Drink     | 3.20 / 5   | 3.8 / 5   | Menu refresh, dietary options |
| Online Boarding  | 2.73 / 5   | 4.0 / 5   | Mobile app & UX redesign |

---

## 📈 Business Value

- Improves customer satisfaction through **data-driven decisions**
- Reduces churn by addressing **high-impact pain points**
- Enhances operational efficiency with **predictive insights**
- Bridges experience gaps across customer segments

---

## 🧪 Tech Stack

- Python (Pandas, NumPy, Scikit-learn)
- Machine Learning (Classification Models)
- GridSearchCV
- Power BI / Visualization tools
- SQL (for data integration)

---

## 📌 Future Enhancements

- Model monitoring & drift detection
- Integration with live airline booking systems
- Explainable AI (SHAP / LIME)
- Deployment using cloud services (Azure / AWS)

---

## 👤 Author

**Tharique Najoomi K**  
Data / Business Analyst  
📊 Python | SQL | Power BI | Machine Learning  




