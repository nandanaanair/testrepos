<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Calender Controls</h2>
    <p>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
            BorderColor="#990000" BorderStyle="Inset" Caption="MANORAMA" 
            FirstDayOfWeek="Sunday" ForeColor="Black" Height="259px" 
            NextPrevFormat="ShortMonth" onselectionchanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender" 
            SelectedDate="10/01/2023 11:30:53" Width="275px">
            <SelectedDayStyle BackColor="#CC3300" ForeColor="White" />
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>
        <br />
</p>
<p>
        Selected Date:
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" 
            Font-Names="Times New Roman" ForeColor="Black"></asp:Label>
    </p>
    <p>
        Today's Date:
        <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" 
            Font-Names="Times New Roman" ForeColor="Black"></asp:Label>
    </p>
    <p>
        Difference between today and selected day: 
        <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True" 
            Font-Names="Times New Roman" ForeColor="Black"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Display" />
    </p>
</asp:Content>
