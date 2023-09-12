<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
    Demo
    </h2>
    <p>
        To learn more about ASP.NET visit <a href="http://www.asp.net" title="ASP.NET Website">www.asp.net</a>.
    </p>
    <asp:Label ID="Label1" runat="server" Text="first-name:  " 
        Font-Names="Arial Black" ></asp:Label> 
    <asp:TextBox ID="TextBox1" TabIndex = "1" BackColor="Yellow" runat="server" 
        BorderColor="Black" Height="30px" Width="165px" TextMode="MultiLine" 
        AccessKey="F" ForeColor="#3333CC" ontextchanged="TextBox1_TextChanged" 
        Rows="4" ToolTip="enter name" ></asp:TextBox><br/><br/>

    <asp:Label ID="Label2" runat="server" Text="last-name:  " 
        Font-Names="Arial Black" ></asp:Label> 
    <asp:TextBox ID="TextBox2" TabIndex = "2" BackColor="Yellow" runat="server" 
        BorderColor="Black" Height="30px" Width="165px" TextMode="MultiLine" 
        AccessKey="L" ForeColor="#3333CC" ontextchanged="TextBox2_TextChanged"></asp:TextBox><br/><br/>       

     <asp:Label ID="Label3" runat="server" Text="description:  " 
        Font-Names="Arial Black" Height="55px" ></asp:Label> 
     <asp:TextBox ID="TextBox3" TabIndex = "3" BackColor="Yellow" runat="server" 
        BorderColor="Black" Height="98px" Width="199px" 
        Wrap="False" ForeColor="Black" ontextchanged="TextBox3_TextChanged" 
        ToolTip="1" MaxLength="5" ></asp:TextBox><br/><br/>
    <asp:CheckBox ID="CheckBox1" runat="server" Text="I am not a robot" 
        Font-Bold="True" oncheckedchanged="CheckBox1_CheckedChanged"/>
    <br/><br/>
      
    <asp:Button ID="Button1" runat="server" Text="copy" 
        ToolTip="copy" Width="76px" style="margin-left: 6px" BackColor="#660066" 
        ForeColor="White" onclick="Button1_Click"/>
  
    <asp:Button ID="Button2" runat="server" style="margin-left: 25px" Text="Submit" 
        Width="76px" BackColor="#660066" ForeColor="White" />
  
    <p>
        You can also find <a href="http://go.microsoft.com/fwlink/?LinkID=152368&amp;clcid=0x409"
            title="MSDN ASP.NET Docs">documentation on ASP.NET at MSDN</a>.
    </p>
</asp:Content>
