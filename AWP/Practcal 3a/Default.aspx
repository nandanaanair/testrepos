<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to ASP.NET!
    </h2>
    <p>
    <p>
        Your Name: <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>

    </p>
    Select your course name: <br/>
       <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
       <asp:ListItem>BBA</asp:ListItem> 
       <asp:ListItem>BSCIT</asp:ListItem> 
       <asp:ListItem>BAF</asp:ListItem>
       <asp:ListItem>BMS</asp:ListItem>
       </asp:RadioButtonList> 
       <br />
    Select your subjects:
    <br />
    <asp:ListBox ID="ListBox1" runat="server" 
        onselectedindexchanged="ListBox1_SelectedIndexChanged" Rows="1">
        <asp:ListItem>AWP</asp:ListItem>
        <asp:ListItem>SPM</asp:ListItem>
        <asp:ListItem>AI</asp:ListItem>
        <asp:ListItem>IOT</asp:ListItem>
        <asp:ListItem>NGT</asp:ListItem>
    </asp:ListBox>
    <br />
    <br />
       Select your gender: 
        <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Male</asp:ListItem> 
       <asp:ListItem>Female</asp:ListItem> 
       <asp:ListItem>Other</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />

    &nbsp;<p>
        Your details: <br/>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br/>
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label><br/>
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label><br/>
        <asp:Label ID="Label4" runat="server" Text=""></asp:Label><br/>
    </p>
    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    <br/>
    <br/>

</asp:Content>
