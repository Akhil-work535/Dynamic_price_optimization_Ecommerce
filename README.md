
# Dynamic Pricing Optimization for E-Commerce
This project implements a dynamic pricing system for e-commerce platforms using data-driven optimization and machine learning. The goal is to determine the optimal product price in real-time based on market demand, competitor prices, and historical sales data — helping maximize profit and conversion rates.

##  Business Problem
Static pricing strategies cause revenue loss due to ignoring demand, competition, and seasonality.  
Dynamic pricing helps businesses adapt prices automatically to maximize revenue and competitiveness.

**Goal:** Predict the optimal selling price per product using machine learning.

---

##  Business Objectives
1. Understand how discounts and competitor prices impact sales.  
2. Build a model to estimate the best price point.  
3. Support data-driven pricing strategy for higher profitability.

---

##  Dataset Overview
**Source:** Synthetic / E-commerce Transactions Dataset  
**Rows:** ~10,000  
**Key Columns:** ProductID, Date, UnitsSold, BasePrice, CompetitorPrice, Discount, FinalSales

---

## Data Preparation
- Cleaned missing and outlier prices.  
- Created `Revenue = UnitsSold × FinalPrice`.  
- Engineered lag and moving average features.  
- Normalized data using `MinMaxScaler`.

---

## Workflow

```mermaid
flowchart LR
A[Sales Data] --> B[Feature Engineering]
B --> C[EDA]
C --> D[Model Training]
D --> E[Evaluation]
E --> F[Dashboard]
```

---
## Modeling & Evaluation

| Model  | R2  | RMSE |
|--------|------------|-----------|
| Logistic Regression | 0.71 | 0.89 |
| Random Forest | 0.83 | 0.65 |
| Gradient Boosting | 0.87 | 0.58 |

Best Model: Gradient Boosting Regressor
Key Metric: R² (Explained variance in sales)

---

## Power BI Dashboard Highlights

- Sales vs Price trend over time

- Revenue per category

- Seasonal pricing effects

- Optimal price prediction visualization

---

## Business Insights

- Discounts above 25% don’t increase sales proportionally.

- Prices drop during holidays, boosting short-term volume.

- Smart pricing could raise revenue by 12–15%.

---

## Tech Stack

Python | pandas | scikit-learn | seaborn | matplotlib | Power BI

---

## Business Analytics Extension

- Funnel analysis from price view → purchase conversion.

- Cohort analysis by customer month.

- KPI tracking for revenue uplift after optimization.

---

## Conclusion

The model enables adaptive pricing decisions, improving margins and competitiveness through data-driven insights.
