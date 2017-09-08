using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserControls.ReusableViews
{
    public partial class FullCalenderControl : System.Web.UI.UserControl
    {
        private string displayText;

        public string DisplayText
        {
            get { return displayText; }
            set { lblDisplayText.Text = value; }
        }


        public DateTime SelectedDate
        {
            get
            {
                return calDate.SelectedDate;
            }
        }

        private bool disableFutureDates;

        public bool DisableFutureDates
        {
            set { disableFutureDates = value; }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                calDate.SelectedDate = DateTime.Now;
            }
        }

        protected void calDate_DayRender(object sender, DayRenderEventArgs e)
        {

            if (disableFutureDates & e.Day.Date > DateTime.Now)
                e.Day.IsSelectable = false;
        }
        protected void imgBtnCalender_Click(object sender, ImageClickEventArgs e)
        {
            calDate.Visible = !calDate.Visible;
        }

        protected void calDate_SelectionChanged(object sender, EventArgs e)
        {
            txtDate.Text = calDate.SelectedDate.ToString("MM-dd-yyy");
            calDate.Visible = false;
        }
    }
}