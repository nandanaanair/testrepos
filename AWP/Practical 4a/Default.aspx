<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Submit1_onclick() {

        }

// ]]>
    </script>
</asp:Content>

      
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
  <asp:AdRotator ID="Ads" runat="server" AdvertisementFile="~/XMLFile.xml"
Target="_blank" KeywordFilter="Computer" />
    <h2>
        REGISTRATION FORM
    </h2>
    <p>
        First name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" CausesValidation="True" 
            EnableTheming="True" ValidationGroup="val1"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" Display="Dynamic" 
            ErrorMessage="*Please enter your first name!!" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        Last Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" Display="Dynamic" 
            ErrorMessage="*Please enter your last name!!" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        Age :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Width="28px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="TextBox3" 
            ErrorMessage="*The age should be between 18-60" ForeColor="Red" 
            MaximumValue="60" MinimumValue="18"></asp:RangeValidator>
    </p>
    <p>
        Enter Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
    </p>
    <p>
        Reenter Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
    </p>
    <p>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox5" ControlToValidate="TextBox4" 
            ErrorMessage="*Password does not match." ForeColor="Red"></asp:CompareValidator>
    </p>
    <p>
        Enter phone number :&nbsp;
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox6" 
            ErrorMessage="*Invalid phone number. Enter 10 digits" ForeColor="Red" 
            ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
    </p>
    
    
    <p>
        <asp:Button ID="Button1" runat="server" Text="Submit" />
    </p>
   
</asp:Content>
