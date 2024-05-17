create database finance_data;
use finance_data;
select * from finance_1;
select * from finance_2;
select year(issue_d) as year_of_issuedate, sum(loan_amnt) as total_loanamount from finance_1 group by year_of_issuedate order by total_loanamount;
select grade,sub_grade,sum(revol_bal) as total_revol_bal from finance_1 inner join finance_2 on(finance_1.id=finance_2.id)
group by grade,sub_grade order by grade,sub_grade;
select verification_status,round(sum(total_pymnt),2) as total_payment from finance_1 inner join finance_2 on(finance_1.id=finance_2.id) where verification_status
!="source verified" group by verification_status;
select addr_state,last_credit_pull_d,loan_amnt from finance_1 inner join finance_2 on (finance_1.id=finance_2.id) group by addr_state,last_credit_pull_d,loan_amnt
order by loan_amnt;
select home_ownership,last_pymnt_d from finance_1 inner join finance_2 on (finance_1.id=finance_2.id) group by home_ownership,last_pymnt_d
order by home_ownership,last_pymnt_d;