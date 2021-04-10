DROP VIEW dbo.v_denorm_acct_cust_rel_prod_branch_region;
GO

CREATE VIEW dbo.v_denorm_acct_cust_rel_prod_branch_region
AS

SELECT tad.acct_id
     , YEAR(tad.open_date) as acct_since_year
     , tad.pri_cust_id
	 , tcd.last_name + ', ' + tcd.first_name as pri_cust_name
	 , YEAR(tcd.cust_since_date) as cust_since_year
	 , tcd.cust_rel_id as pri_cust_rel_id
	 , tad.prod_id
	 , tpd.prod_code
	 , tpd.prod_desc
	 , tpd.prod_code + ' - ' + tpd.prod_desc as prod
	 , tad.branch_id
	 , tbd.branch_code
	 , tbd.branch_desc
	 , tbd.branch_code + ' - ' + tbd.branch_desc as branch
	 , tbd.region_id
	 , trd.region_desc
	 , tad.loan_amt
	 , SUM(tf.tran_fee_amt) as tran_fee_amt_sum
  FROM dbo.tblAccountDim as tad 
 LEFT JOIN dbo.tblTransactionFact as tf
    ON tad.acct_id = tf.acct_id
 INNER JOIN dbo.tblCustomerDim as tcd
   ON tad.pri_cust_id = tcd.cust_id
 INNER JOIN dbo.tblProductDim as tpd
   ON tpd.prod_id = tad.prod_id
 INNER JOIN dbo.tblBranchDim as tbd
   ON tbd.branch_id = tad.branch_id
 INNER JOIN dbo.tblRegionDim as trd
   ON trd.region_id = tbd.region_id
GROUP BY tad.acct_id
     , YEAR(tad.open_date)
     , tad.pri_cust_id
	 , tcd.last_name + ', ' + tcd.first_name
	 , YEAR(tcd.cust_since_date)
	 , tcd.cust_rel_id
	 , tad.prod_id
	 , tpd.prod_code
	 , tpd.prod_desc
	 , tpd.prod_code + ' - ' + tpd.prod_desc
	 , tad.branch_id
	 , tbd.branch_code
	 , tbd.branch_desc
	 , tbd.branch_code + ' - ' + tbd.branch_desc
	 , tbd.region_id
	 , trd.region_desc
	 , tad.loan_amt;

GO