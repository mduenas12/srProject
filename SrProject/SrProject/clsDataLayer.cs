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
        public static dsUserLogin VerifyUser(string Database, string UserName, string UserPassword)
        {
            //var
            dsUserLogin DS;
            OleDbConnection sqlConn;
            OleDbDataAdapter sqlDA;
            // form connection 
            sqlConn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" +
            "Data Source=" + Database);
            // form statement
            sqlDA = new OleDbDataAdapter("Select SecurityLevel from tblUserLogin " +
            "where UserName like '" + UserName + "' " +
            "and UserPassword like '" + UserPassword + "'", sqlConn);
            //instanciate dsUser
            DS = new dsUserLogin();
            // fill to table
            sqlDA.Fill(DS.tblUserLogin);
            // return the dataset
            return DS;
        }




    }

    



}