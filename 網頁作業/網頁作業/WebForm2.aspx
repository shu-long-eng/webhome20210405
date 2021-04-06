<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="網頁作業.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #center{
            margin-top:-150px;
            margin-left:150px;
            height:400px;
            overflow:scroll;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="center">
    日期:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    科目:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="增加" OnClick="Button1_Click" /><br />
    ID:<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
    <asp:Button ID="Button2" runat="server" Text="刪除" OnClick="Button2_Click" /><br />
    ID:<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
    修改科目:<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
    <asp:Button ID="Button3" runat="server" Text="修改" OnClick="Button3_Click" />
    
    <table>
        <thead>
            <tr>
                <th>No:</th>
                <th>日期:</th>
                <th>科目:</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
            <tr>
                <td><%# Eval ("ID") %></td>
                <td><%# Eval ("date") %></td>
                <td><%# Eval ("sub") %></td>
            </tr>
                    </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</div>
</asp:Content>
