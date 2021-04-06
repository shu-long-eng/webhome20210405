<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="網頁作業.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
       #center{
           display:inline-block;
           background-color:grey;
           margin-left:45%;
           margin-top:-250px;
           padding-top:50px;
           padding-left:30px;
           padding-right:30px;
           padding-bottom:50px;

       }
        footer{
           margin-top:190px;
           border:none;
       }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
           
        </div>
        <div id="center">
            
        帳號:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br/>
        密碼:<asp:TextBox ID="TextBox2" runat="server" type="password"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="登入" onclick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="帳號或密碼錯誤" Visible="False"></asp:Label>
       </div>
</asp:Content>
