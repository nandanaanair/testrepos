<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.ascx.cs" Inherits="WebUserControl" %>

Enter your full name:  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

<p>

<asp:Button ID="Button1" runat="server" Text="Confirm" onclick="Button1_Click" />
</p>
<p>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</p>
