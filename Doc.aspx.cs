﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Data_And_Documents_Management_System
{
    public partial class Doc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Butsubmit_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex.Equals(0))
            {
                Label1.Text = "SELECT ITEM !";
                Label1.ForeColor = System.Drawing.Color.DarkRed;


            }
            else
            {




                if (DropDownList1.SelectedIndex.Equals(1))
                {

                    Response.Redirect("Facdoc.aspx");

                }
                else
                {
                    Response.Redirect("Studdoc.aspx");
                }
            }


        }
    }
}