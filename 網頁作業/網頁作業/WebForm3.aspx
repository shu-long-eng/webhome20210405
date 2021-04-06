<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="網頁作業.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #myContent{
            margin-left:250px;
            margin-top:-100px;
        }
        footer{
            margin-top:500px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="myContent">
    <asp:TextBox id="textbox" runat="server" placeholder="輸入ID" type="number"></asp:TextBox>
    <asp:Button runat="server" Text="Button" OnClick="Unnamed2_Click" />
    <table>
        <thead>
            <tr>
                <th>No</th>
                <th>日期</th>
                <th>科目</th>
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
