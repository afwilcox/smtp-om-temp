create or replace PACKAGE cas_accountcode_validation AS
--$Header: bcoa_oraclefinancial_interface.pls 2.0 2004/04/14
--*****************************************************************************
--*
--* Application:   CAS GL Chart of Accounts
--* Program:       cas_accountcode_validation
--*
--* Title:         CAS Account Code Validation
--*
--* Author:        Wendmagegn Sahle
--* Written:       2003-July-30
--*
--* Purpose:       This package was built for validating GL code combinations.
--*                Whenever the code combination does not exit, the package
--*				   will dynamically create one if all the segments exist and are
--*				   valid and fit in an existing cross validation rule.
--*
--* Main Module:   fn_accont_is_valid
--*
--* Parameters:    pr_in - record containing code combination detail.
--*
--* Calls:         fn_code_combination_exists
--*
--* Tables:        list of tables of accessed including type of access
--*                list of other database objects if applicable
--*
--* Logic:
--*
--* Known limitations:  N/A
--*
--* Modification Log
--* ================
--* Ver.Rel      Date         Developer/Description
--* ---------------------------------------------------------------------------
--* 3.0       
--* 2.0  	    2004/04/14   Wendmagegn Sahle - Made change so that no
--*                                           - duplicate CCID is created.
--* 1.0  	    2003/07/30   Wendmagegn Sahle - initial version
--* 
--*****************************************************************************
--
TYPE acct_code_rec IS RECORD
   (sob				  		  NUMBER(15),
    application_id			  NUMBER(10),
    id_flexnum				  NUMBER(15),
	num_of_segments			  NUMBER(2),
	id_flexcode				  VARCHAR2(4),
	flexvalset_id1            NUMBER(10),
    flexvalset_id2            NUMBER(10),
	flexvalset_id3            NUMBER(10),
	flexvalset_id4            NUMBER(10),
	flexvalset_id5            NUMBER(10),
	flexvalset_id6            NUMBER(10),
	flexvalset_id7            NUMBER(10),
	flexvalset_id8            NUMBER(10),
	flexvalset_id9            NUMBER(10),
	flexvalset_id10           NUMBER(10),
    segment1                  VARCHAR2(15),
    segment2                  VARCHAR2(15),
    segment3                  VARCHAR2(15),
    segment4                  VARCHAR2(15),
    segment5                  VARCHAR2(15),
    segment6                  VARCHAR2(15),
    segment7                  VARCHAR2(15),
    segment8                  VARCHAR2(15),
    segment9                  VARCHAR2(15),
    segment10                 VARCHAR2(15),
	naturalacct_segment 	  VARCHAR2(30),
	eff_date				  DATE
  );
---------------------------------------
-- PROCEDURE AND FUNCTION DEFINITIONS
---------------------------------------
--
FUNCTION fn_account_is_valid (pr_in IN acct_code_rec) RETURN BOOLEAN;
--
/*FUNCTION fn_code_combination_exists (pr_in IN acct_code_rec) RETURN BOOLEAN;
--
FUNCTION fn_is_new_code_created (pr_in IN acct_code_rec) RETURN BOOLEAN;
--
FUNCTION fn_all_segments_found (pr_in IN acct_code_rec) RETURN BOOLEAN;
--
FUNCTION fn_rules_turned_on (pn_applnid_in    IN NUMBER
                            ,pn_idflexnum_in  IN NUMBER
							,pv_idflexcode_in IN VARCHAR2) RETURN BOOLEAN;
--
FUNCTION fn_segments_have_xval_rule(pr_in IN acct_code_rec) RETURN BOOLEAN;
--
FUNCTION fn_insert_code_combination (pr_in IN acct_code_rec) RETURN BOOLEAN;*/
--
END cas_accountcode_validation; 