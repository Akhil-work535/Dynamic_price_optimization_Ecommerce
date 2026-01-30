# 📦 Dynamic Pricing Optimization for E-Commerce

## 🔍 Business Problem
Traditional static pricing fails to adapt to changing market demand, competitor pricing, and seasonal trends. This leads to lost revenue and reduced competitiveness.  
This project implements a **data-driven dynamic pricing system** that suggests optimal product prices to **maximize revenue and conversion rates** in an e-commerce setting.

## 🎯 Objectives
- Understand how price affects demand and revenue
- Build models to estimate optimal price points
- Use data science to support pricing decisions
- Provide actionable business insights for pricing strategy

## 📊 Dataset Overview
- **Source:** Synthetic e-commerce transactions dataset  
- **Size:** ~10,000 rows  
- **Key Columns:**
  - `ProductID`
  - `Date`
  - `UnitsSold`
  - `BasePrice`
  - `CompetitorPrice`
  - `Discount`
  - `FinalSales`

## 🧹 Data Preparation
- Cleaned missing and outlier pricing values  
- Created new metrics like **Revenue = UnitsSold × FinalPrice**  
- Engineered lag and moving average features for time series analysis  
- Normalized numeric features using `MinMaxScaler`

## 🔄 Workflow
1. **Feature Engineering**
2. **Exploratory Data Analysis (EDA)**
3. **Model Training & Comparison**
4. **Evaluation**
5. **Visualization (Power BI)**

## 🤖 Modeling & Evaluation

| Model                  | R² Score | RMSE |
|------------------------|----------|------|
| Logistic Regression    | 0.71     | 0.89 |
| Random Forest Regressor| 0.83     | 0.65 |
| Gradient Boosting Regressor | **0.87** | **0.58** |

🔑 **Best Model:** Gradient Boosting Regressor  
- Chosen for highest explained variance (R²) and lowest RMSE.

## 📈 Key Business Insights
- Discount rates above ~25% do **not proportionally increase sales**
- Pricing decreases during holidays may boost short-term volume but lower margins
- Data-driven pricing can improve revenue by **~12–15%**
- Dynamic pricing helps balance **competitiveness & profitability**

## 🧮 SQL & Excel Analysis
- Performed pricing, discount, and competitor analysis using MySQL
- Validated discount data and calculated revenue using SQL
- Built an Excel KPI dashboard to evaluate price–demand and discount effectiveness


## 📊 Power BI Dashboard Highlights
The accompanying dashboard visualizes:
- Price vs Revenue trends over time
- Sales distribution across products
- Predicted optimal prices
- Seasonal and category-level pricing effects

## 🛠️ Tools & Tech Stack
- **Python:** pandas, numpy, scikit-learn  
- **Modeling:** Gradient Boosting, Random Forest, Regression  
- **Visualization:** seaborn, matplotlib, Power BI  
- **Environment:** Jupyter Notebooks

## 📌 Key Takeaways
- Dynamic pricing requires careful modeling of price-demand relationships
- Traditional static pricing leaves revenue on the table
- Machine learning models can guide more profitable pricing decisions

## 🚀 Future Enhancements
- Real-time pricing API deployment
- Integrate competitor scraping for real-time price signals
- Add reinforcement learning for continuous pricing adaptation
- Use A/B testing to validate price strategies live

## 👤 Author
Akhil  
Aspiring Data Analyst  
LinkedIn: http://www.linkedin.com/in/vankayalapati-akhil
