using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

//special adds for db connection
using System.Data.OleDb;
using System.Net;
using System.Data;


namespace SrProject
{
    public class clsDataLayer
    {
        public static DataTable VerifyUser(string Database, string UserName, string UserPassword)
        {//this will take in the given username and password -- then put results in table and return it. 
            //var
                //dsUserLogin DS;
            OleDbConnection sqlConn;
            OleDbDataAdapter sqlDA;

            // form connection 
            sqlConn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" +
            "Data Source=" + Database);
            // form statement
            sqlDA = new OleDbDataAdapter("Select * from tblUserLogin " +
            "where UserName like '" + UserName + "' " +
            "and UserPassword like '" + UserPassword + "'", sqlConn);
            
            //make and fill table
            DataTable dt = new DataTable();
            sqlDA.Fill(dt);

            return dt;

        }//datatable verifyUser//




    }

    



}