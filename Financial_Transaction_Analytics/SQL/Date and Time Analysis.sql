#41. What is the total revenue by day?
select day(Transaction_Date) ,sum(Price*Quantity) as Revenue from cleaned_financial_transactions group by day(Transaction_Date) order by day(Transaction_Date)
#42. What is the total revenue by month?
#43. What is the number of transactions by month?
#44. Which month generated the highest revenue?
#45. Which month had the highest number of transactions?
#46. What is the average daily revenue?
#47. Which day had the highest sales?
#48. Which products generated the highest revenue each month?
#49. How does monthly revenue change over time?
#50. What is the month-over-month revenue growth?