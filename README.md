# 🛍️ Sales Store SQL Analysis  

This repository contains **SQL-based business insights** derived from a fictional `Sales_store` dataset.  
The queries were executed in **SQL Server Management Studio (SSMS)** to showcase **SQL proficiency** and the ability to derive **actionable business insights**.  

The aim of this project is to demonstrate **data analysis, reporting, and business problem-solving skills** relevant to **Business Analyst roles**.  

---

## 🧹 Data Cleaning Performed  
Before analysis, data was cleaned and standardized to ensure accuracy:  
- Removed **duplicates** using `ROW_NUMBER()` with **CTE**.  
- Handled **NULL values** → deleted invalid rows & updated missing customer details.  
- Standardized **Gender values** → converted `Male/Female` → `M/F`.  
- Standardized **Payment Mode** → converted `CC` → `Credit Card`.  

---

## 📊 Analyses Performed  

### 1️⃣ Top 5 Most Selling Products (by Quantity)  
**SQL Insight:** Identified products with the highest sales volume.  
**Business Impact:** Optimizes **inventory planning** and supports **promotions for in-demand products**.  

---

### 2️⃣ Top 5 Cancelled Products  
**SQL Insight:** Ranked products with the most cancellations.  
**Business Impact:** Indicates need for **quality checks, vendor improvements, or catalog adjustments**.  

---

### 3️⃣ Time of Day with Highest Purchases  
**SQL Insight:** Grouped orders into time buckets (Morning, Afternoon, Evening, Night).  
**Business Impact:** Helps in **staff planning, peak-hour promotions, and scheduling downtime in low-traffic hours**.  

---

### 4️⃣ Top 5 Customers by Spend  
**SQL Insight:** Calculated gross and net spending per customer.  
**Business Impact:** Enables **loyalty program design**, **personalized offers**, and **retention strategies**.  

---

### 5️⃣ Revenue-Generating Product Categories  
**SQL Insight:** Ranked categories based on revenue.  
**Business Impact:** Guides **category-specific promotions, discount strategies, and product portfolio expansion**.  

---

### 6️⃣ Cancellation & Return Rate per Category  
**SQL Insight:** Computed cancellation and return percentages per category.  
**Business Impact:** Identifies **customer dissatisfaction areas**, highlights **quality issues**, and helps improve **supply chain performance**.  

---

### 7️⃣ Most Preferred Payment Mode  
**SQL Insight:** Analyzed transactions by payment method.  
**Business Impact:** Informs focus on **streamlining checkout experience** for the most-used payment modes.  

---

### 8️⃣ Age Group Buying Behaviour  
**SQL Insight:** Bucketed customers into age groups and analyzed purchase value.  
**Business Impact:** Enables **demographic-targeted marketing** and **personalized recommendations**.  

---

### 9️⃣ Monthly Sales Trend  
**SQL Insight:** Aggregated sales and revenue by month.  
**Business Impact:** Helps in **forecasting, identifying seasonality, and planning inventory accordingly**.  

---

### 🔟 Gender-Specific Buying Categories  
**SQL Insight:** Pivoted sales data by gender and product category.  
**Business Impact:** Supports **gender-based personalization** and **marketing strategy refinement**.  

---

## 🛠️ Tools & Skills Used  
- **SQL Server Management Studio (SSMS)**  
- **SQL Concepts:** Joins, Aggregations, CTEs, CASE statements, PIVOT, Grouping, Ordering, Formatting  
- **Data Cleaning:** Duplicate removal, NULL handling, data standardization  
- **Business Analysis:** Converting raw query outputs into **actionable insights**  

---

## 🚀 Key Takeaways  
This project highlights how SQL can be used not just for **data extraction** but also for **strategic business decisions**.  
It reflects both **technical SQL skills** and **business analysis acumen** — a strong foundation for **Business Analyst roles**.  

---

## 📂 Repository Structure  
- `SQL_Scripts/` → Contains all SQL queries used in this project  
- `README.md` → Project overview, data cleaning, and business insights  

---

✨ *If you find this project interesting, feel free to connect with me on LinkedIn!*  
