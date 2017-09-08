﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserControl.ReusableUserControl
{
    public partial class CalenderUserControl : System.Web.UI.UserControl
    {
        public string DisplayDate
        {
            set
            {
                lblDate.Text = value;
            }
        }
        public DateTime selectedDate
        {
            get
            {
                return CalDate.SelectedDate;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void imgButton_Click(object sender, ImageClickEventArgs e)
        {
            CalDate.Visible = !CalDate.Visible;
        }

        protected void CalDate_SelectionChanged(object sender, EventArgs e)
        {
            txtDate.Text = CalDate.SelectedDate.ToString("MM-dd-yy");
            CalDate.Visible = false;
        }
    }
}