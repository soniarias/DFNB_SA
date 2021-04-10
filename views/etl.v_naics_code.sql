USE [DFNB3];
GO

/****** Object:  View [dbo].[v_naics_code]    Script Date: 11/12/2019 8:46:01 PM ******/

DROP VIEW etl.v_naics_code;
GO

/****** Object:  View [dbo].[v_naics_code]    Script Date: 11/12/2019 8:46:01 PM ******/

SET ANSI_NULLS ON;
GO

SET QUOTED_IDENTIFIER ON;
GO


CREATE VIEW etl.v_naics_code
AS

/*****************************************************************************************************************
NAME:    etl.v_naics_code
PURPOSE: Create the etl.v_naics_code view
MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/12/2019   JJAUSSI       1. Built this view for LDS BC IT240
RUNTIME: 
Approx. 1 sec
NOTES:
Performs initial transformations on NAICS Code data
LICENSE: 
This code is covered by the GNU General Public License which guarantees end users
the freedom to run, study, share, and modify the code. This license grants the recipients
of the code the rights of the Free Software Definition. All derivative work can only be
distributed under the same license terms.
 
******************************************************************************************************************/

     SELECT LEN(nc.[2017_NAICS_US_code]) AS naics_level
          , CASE
                WHEN LEN(nc.[2017_NAICS_US_code]) = 2
                THEN NULL
                ELSE LEFT(nc.[2017_NAICS_US_code], LEN(nc.[2017_NAICS_US_code]) - 1)
            END AS naics_parent_code
          , nc.[2017_NAICS_US_code] AS naics_code
          , nc.[2017_NAICS_US_title] AS naics_desc
       FROM stg.NAICS_CODES_2017 AS nc;


GO