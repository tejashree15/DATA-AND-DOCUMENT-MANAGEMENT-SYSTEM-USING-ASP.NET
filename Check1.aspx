﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MS.Master" AutoEventWireup="true" CodeBehind="Check1.aspx.cs" Inherits="Data_And_Documents_Management_System.Check1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <br>
    <div style="color:black;background-color:transparent";>
    <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="129px">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>faculty</asp:ListItem>
        <asp:ListItem>student</asp:ListItem>
         
        
    </asp:DropDownList>
    <asp:Button ID="Butsubmit" runat="server" Text="CHECK" OnClick="Butsubmit_Click" Height="29px" Width="96px" />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
      
    <asp:GridView ID="Gridfaculty" runat="server" datakeynames="facultyId" AutoGenerateEditButton="true" AutoGenerateDeleteButton="true"  OnRowCancelingEdit="Gridfaculty_RowCancelingEdit" OnRowDeleting="Gridfaculty_RowDeleting" OnRowEditing="Gridfaculty_RowEditing" OnRowUpdating="Gridfaculty_RowUpdating" ></asp:GridView>
    <asp:GridView ID="Gridstudent" runat="server" AutoGenerateEditButton="True" AutoGenerateDeleteButton="True" >
                 </asp:GridView>
              
    </div>
</asp:Content>