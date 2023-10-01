<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID=ContentPlaceHolder1>
    <h2>
        Web navigation and site map</h2>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">HyperLink</asp:HyperLink> &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/aboutus.aspx">About us</asp:HyperLink> &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/contactus.aspx">Contact us</asp:HyperLink> &nbsp;&nbsp;
    </p>
    
    <br />
</asp:Content>
