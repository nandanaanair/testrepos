using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Label1.Text = Calendar1.SelectedDate.Date.ToString();
        Label2.Text = Calendar1.TodaysDate.Date.ToString();

        DateTime sel_date = Calendar1.SelectedDate;
        DateTime today_date = Calendar1.TodaysDate;
        var diff_days = sel_date - today_date;
        Label3.Text = ""+ diff_days.Days;

        
    }

    protected void Calendar1_DayRender(object sender, System.Web.UI.WebControls.DayRenderEventArgs e)
    {
        if (e.Day.Date.Day == 2 && e.Day.Date.Month == 10)
        {
            e.Cell.BackColor = System.Drawing.Color.Red;
            Label lbl = new Label();
            lbl.Text = "<br>Gandhi Jayanti!";
            e.Cell.Controls.Add(lbl);
        }

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        
    }
}
