﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserControl
{
    public partial class CachingExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString();

            if (!IsPostBack)
            {
                GetEmployeeByDesignation("All");
            }
        }





    private void GetEmployeeByDesignation(string v)
    {
        string CS = ConfigurationManager.ConnectionStrings["TestConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(CS);
        SqlDataAdapter da = new SqlDataAdapter("spGetEmployeeByDesignation", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;

        SqlParameter paramEmployeeDesignation = new SqlParameter();
        paramEmployeeDesignation.ParameterName = "@EmployeeDesignation";
        paramEmployeeDesignation.Value = v;
        da.SelectCommand.Parameters.Add(paramEmployeeDesignation);

        DataSet DS = new DataSet();
        da.Fill(DS);
        GridView1.DataSource = DS;
        GridView1.DataBind();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GetEmployeeByDesignation(DropDownList1.SelectedItem.Value);
    }


}
}