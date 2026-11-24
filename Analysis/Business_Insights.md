# E-commerce Sales Analysis – Business Insights

## Project Overview
This document summarizes the findings from 10 business analysis questions using PostgreSQL.

The analysis is based on a sample e-commerce dataset containing:
- 20 Customers
- 20 Products
- 30 Orders
- 60 Order Items

**Total sample records:** 130

## 1. Total Revenue
**Result:** ₹10,90,800

**Insight:** The business generated ₹10.90 lakh in total revenue from the sample orders.

## 2. Total Orders
**Result:** 30 orders

**Insight:** The dataset contains 30 unique orders.

## 3. Average Order Value (AOV)
**Result:** ₹36,360

**Insight:** On average, each order generated ₹36,360 in revenue.

## 4. Top 5 Best-Selling Products by Quantity

| Product | Quantity Sold |
|---|---:|
| Mouse Pad | 15 |
| Headphones | 15 |
| Printer | 15 |
| Smart Watch | 15 |
| Pen Set | 12 |

**Insight:** Mouse Pad, Headphones, Printer and Smart Watch are tied for the highest quantity sold.

## 5. Top 5 Revenue-Generating Products

| Product | Revenue |
|---|---:|
| Printer | ₹2,25,000 |
| Laptop | ₹1,65,000 |
| Monitor | ₹1,44,000 |
| Tablet | ₹1,08,000 |
| External SSD | ₹78,000 |

**Insight:** Printer generated the highest revenue among all products, contributing approximately 20.6% of total revenue.

## 6. Revenue by Product Category

| Category | Revenue |
|---|---:|
| Electronics | ₹9,42,000 |
| Furniture | ₹76,500 |
| Accessories | ₹68,400 |
| Stationery | ₹3,900 |

**Insight:** Electronics contributed approximately 86.35% of total revenue, making it the largest revenue-generating category.

## 7. Top 5 Highest-Spending Customers

| Customer | Total Spent |
|---|---:|
| Customer_8 | ₹1,57,000 |
| Customer_1 | ₹1,13,200 |
| Customer_2 | ₹1,05,000 |
| Customer_18 | ₹78,500 |
| Customer_3 | ₹75,000 |

**Insight:** Customer_8 was the highest-spending customer in the dataset.

## 8. Customers Without Orders
**Result:** 0 customers

**Insight:** All 20 customers in the sample dataset have placed at least one order. The customer activation rate is 100%.

## 9. Monthly Revenue

| Month | Revenue |
|---|---:|
| January 2026 | ₹3,63,600 |
| February 2026 | ₹3,35,600 |
| March 2026 | ₹3,63,600 |
| April 2026 | ₹28,000 |

**Insight:** January and March recorded the highest monthly revenue. April has a considerably lower value, which may be because the sample dataset covers only part of the month.

## 10. Order Status Analysis

| Order Status | Orders | Percentage |
|---|---:|---:|
| Delivered | 8 | 26.67% |
| Pending | 8 | 26.67% |
| Shipped | 7 | 23.33% |
| Cancelled | 7 | 23.33% |
| **Total** | **30** | **100%** |

**Insight:** Delivered and Pending orders each account for 26.67% of all orders. Cancelled orders account for 23.33%. Pending and Shipped orders may still be in progress and should not be treated as failed orders.

## Overall Business Recommendations

1. **Focus on Electronics:** Electronics generates the majority of revenue. Maintain product availability and monitor category performance.
2. **Promote High-Revenue Products:** Printer, Laptop and Monitor are important revenue contributors.
3. **Improve Customer Retention:** Consider loyalty offers and targeted promotions for high-spending customers.
4. **Monitor Order Cancellations:** Investigate the reasons behind cancelled orders to identify possible improvements.
5. **Track Monthly Performance:** Continue monitoring monthly revenue to identify trends over a longer period.

## Conclusion

This project demonstrates how PostgreSQL can be used to analyze e-commerce data and answer practical business questions.

The analysis covered revenue, order performance, product sales, customer spending, monthly trends and order statuses using SQL queries and joins.

**Note:** All findings are based on a sample dataset created for learning and portfolio demonstration. They do not represent the performance of a real business.
