create database project;
use project;

select * from finance_1;
select * from finance_2;

-- 1
 select year(issue_d) as years, sum(loan_amnt) as total_loan from finance_1  group by years order by years;

-- 2
select grade,sub_grade, sum(revol_bal) as total_revol_bal from finance_1 f1 inner join finance_2 f2 on f1.id = f2.id
group by sub_grade order by sub_grade;

-- 3

select verification_status, round(sum(total_pymnt)) astotal_payment from finance_1 f1 inner join finance_2 f2 on f1.id = f2.id
group by verification_status order by verification_status;

-- 4 

select addr_state,last_credit_pull_d as last_credit_pull_date, loan_status, count(loan_status) from finance_1 f1 inner join finance_2 f2 on f1.id = f2.id
group by addr_state order by addr_state;

-- 5

 select home_ownership, max(last_pymnt_d) as last_date, sum(loan_amnt) from finance_1 f1 inner join finance_2 f2 on f1.id = f2.id
 group by home_ownership order by home_ownership;
 


 






