select*from financial_loan;

select 
   home_ownership, 
   Count(id) AS Total_Loan_Applications,
   SUM(loan_amount) AS Total_Funded_Amount,
   SUM (total_payment) AS Total_Recieved_Amount
FROM financial_loan
where grade = 'A' AND address_state = 'CA'
GROUP BY home_ownership
ORDER BY COUNT (id) desc

 
