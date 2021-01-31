-- Q1: How to use dynamic SQL to write SQL for me?
-- A1: Here is a simple example...

-- This example is for the Tables of stg_p1 and stg_p2

SELECT t.TABLE_SCHEMA
     , t.TABLE_NAME
     , 'EXEC sys.sp_addextendedproperty @name=N''MS_Description'', 
@value=N''The Position Dimension table.'' , 
@level0type=N''SCHEMA'',@level0name=N''dbo'', 
@level1type=N''TABLE'',@level1name=N''' + t.TABLE_NAME + ''';' AS sql1
  FROM INFORMATION_SCHEMA.TABLES AS t
 WHERE t.TABLE_TYPE = 'BASE TABLE'
       AND t.TABLE_SCHEMA = 'dbo'
       AND t.TABLE_NAME LIKE 'stg_%'
 ORDER BY 1
        , 2;


 -- This example is for the columns of stg_p1 and stg_p2
 SELECT t.TABLE_SCHEMA 
      ,t.TABLE_NAME
	  ,t.COLUMN_NAME
,'EXEC sys.sp_addextendedproperty @name=N''MS_Description'', 
@value=N''Primary key for Position records.'' , 
@level0type=N''SCHEMA'',@level0name=N''dbo'', 
@level1type=N''TABLE'',@level1name=N''tblPositionDim''; 
@level2type=N''COLUMN'',@level2name=N'''+ t.COLUMN_NAME+ ''';'
as sql1
  FROM INFORMATION_SCHEMA.COLUMNS as t
 WHERE t.TABLE_SCHEMA = 'dbo'
ORDER BY 1,2;


-- Q2: What does the final output look like for this stored procedure that I need to execute?
-- A2: Here it is - copy and paste from the data grid that results from the prior query

-- Table
EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Stage Table Project 1'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Stage Table Project 2'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p2';


-- Columns for stg_p1
EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Primary key for account area'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'acct_area_id';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Primary key for Account Branch Address'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'acct_branch_add_id';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Account Branch address latitude'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'acct_branch_add_lat';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Account Branch address longitude'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'acct_branch_add_lon';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Account Branch Address Type'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'acct_branch_add_type';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Account Branch Code'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'acct_branch_code';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Account Branch Desc'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'acct_branch_desc';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Primary key for Account Branch'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'acct_branch_id';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Account Branch latitude'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'acct_branch_lat';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Account Branch longitude'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'acct_branch_lon';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Primary key for Account Customer role'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'acct_cust_role_id';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Primary key for Account_ID 1'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'acct_id';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Primary key for Account_ID 2'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'acct_id2';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Primary key for Account_ID 3'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'acct_id3';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Primary key for Account Region'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'acct_region_id';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Primary key for Account Relationship'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'acct_rel_id';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Account Open date'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'as_of_date';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Birth Date'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'birth_date';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Primary key for Branch'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'branch_id';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Account Close Date'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'close_date';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Current Balance'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'cur_bal';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Primary key for Customer address'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'cust_add_id';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Customer Address Latitude'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'cust_add_lat';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Customer Address Longitude'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'cust_add_lon';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Customer Address Type'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'cust_add_type';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Primary key for Customer_id'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'cust_id';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Primary key for Customer_id2'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'cust_id2';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Customer Latitude'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'cust_lat';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Customer longitude'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'cust_lon';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Customer Primary Branch dist'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'cust_pri_branch_dist';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Primary key for Customer relationship'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'cust_rel_id';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'The date that the customer created the account'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'cust_since_date';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'First Name'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'first_name';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Gender'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'gender';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Last Name'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'last_name';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Loan Amount'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'loan_amt';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Open Close Code'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'open_close_code';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Open date'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'open_date';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Primary key for Primary Branch'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'pri_branch_id';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Primary key for Primary Customer'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'pri_cust_id';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Primary key for Product'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p1'
                              , @level2type = N'COLUMN'
                              , @level2name = N'prod_id';

----column for stg_p2

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Primary key for Account'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p2'
                              , @level2type = N'COLUMN'
                              , @level2name = N'acct_id';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Primary key for Branch'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p2'
                              , @level2type = N'COLUMN'
                              , @level2name = N'branch_id';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Currency Customer request index'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p2'
                              , @level2type = N'COLUMN'
                              , @level2name = N'cur_cust_req_ind';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Transaction Amount'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p2'
                              , @level2type = N'COLUMN'
                              , @level2name = N'tran_amt';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Transaction Date'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p2'
                              , @level2type = N'COLUMN'
                              , @level2name = N'tran_date';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Transaction Fee Amount'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p2'
                              , @level2type = N'COLUMN'
                              , @level2name = N'tran_fee_amt';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Transaction Fee prediction'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p2'
                              , @level2type = N'COLUMN'
                              , @level2name = N'tran_fee_prct';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Transaction Time'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p2'
                              , @level2type = N'COLUMN'
                              , @level2name = N'tran_time';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Transaction Type Code'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p2'
                              , @level2type = N'COLUMN'
                              , @level2name = N'tran_type_code';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Transaction Type Desc'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p2'
                              , @level2type = N'COLUMN'
                              , @level2name = N'tran_type_desc';

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
                              , @value = N'Primary key for Transaction Type'
                              , @level0type = N'SCHEMA'
                              , @level0name = N'dbo'
                              , @level1type = N'TABLE'
                              , @level1name = N'stg_p2'
                              , @level2type = N'COLUMN'
                              , @level2name = N'tran_type_id';