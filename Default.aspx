﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" Culture="auto:en-US" UICulture="auto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href ="StyleSheet.css" type ="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
   <h1 style="text-align:center;"> 
       <asp:Label ID="lb_msci" runat="server" Text="<%$ Resources:Resource, Welcome %>"></asp:Label>
        </h1>
   <h2 style="text-align:center;"> 
      
        <asp:Label ID="lb_software" runat="server" Text="<%$ Resources:Resource, Software %>"></asp:Label>
        </h2>
        <p style="text-align:center;"> 
      
            &nbsp;</p>
        
                <p style="text-align:center;">
            <asp:Label ID="lb_Mr" runat="server" Text="<%$ Resources:Resource, Mr %>"></asp:Label>
            <asp:Label ID="lb_Ms" runat="server" Text="<%$ Resources:Resource, Ms %>"></asp:Label>
        &nbsp;<asp:Label ID="lb_responname" runat="server"></asp:Label>
        </p>
        <p style="text-align:center;">
            <asp:Label ID="lb_respon1" runat="server" Text="<%$ Resources:Resource, Respon1 %>"></asp:Label>
&nbsp;<asp:Label ID="lb_date" runat="server"></asp:Label>
        </p>
        <p style="text-align:center;">
            <asp:Label ID="lb_respon2" runat="server" Text="<%$ Resources:Resource, Respon2 %>"></asp:Label>
&nbsp;<asp:Label ID="lb_currency" runat="server"></asp:Label>
        &nbsp;<asp:Label ID="lb_respon3" runat="server" Text="<%$ Resources:Resource, Respon3 %>"></asp:Label>
        </p>
        <p style="text-align:center;">
            <asp:Label ID="lb_respon4" runat="server" Text="<%$ Resources:Resource, Respon4 %>"></asp:Label>
&nbsp;<asp:HyperLink ID="hl_github" runat="server" NavigateUrl="https://github.com/whenfers">GitHub</asp:HyperLink>
        </p>

<p style="text-align:center;">
        <asp:Label ID="lb_selectlang" runat="server" Text="<%$ Resources:Resource , Language  %>" meta:resourceKey="Label1"></asp:Label>
        <br />
        <br />
    </p>
<p style="text-align:center;">
        <asp:DropDownList ID="Language1" runat="server" AutoPostBack="true" >
            <asp:ListItem Value="en-US">English</asp:ListItem>
            <asp:ListItem Value="ar">Arabic</asp:ListItem>
            <asp:ListItem Value="es">Spanish</asp:ListItem>
            <asp:ListItem Value="zh-cn">中文</asp:ListItem>
        </asp:DropDownList>
    </p>
        <br />
            
<p style="text-align:center;">
        <asp:Label ID="lb_name" runat="server" Text="<%$ Resources:Resource, Name %>"></asp:Label>
&nbsp;
        <asp:TextBox ID="tb_name" runat="server" Width="254px"></asp:TextBox>
    <br />
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                runat="server" 
                ControlToValidate="tb_name" 
                ErrorMessage="Please Enter Your Name!" ForeColor="Red"></asp:RequiredFieldValidator>
        
   </p>
        <p style="text-align:center;">
            
        </p>
        <p style="text-align:center;">
        <br />
        <br />
        <asp:Label ID="lb_gender" runat="server" Text="<%$ Resources:Resource, Iam %>"></asp:Label>
&nbsp;
        <asp:RadioButton ID="cb_male" runat="server" Text="<%$ Resources:Resource, Gender1 %>" GroupName="gender" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="cb_female" runat="server" Text="<%$ Resources:Resource, Gender2 %>" GroupName ="gender" />
        <br />
        <br />
        
   </p>
    <hr />
    
    </div>
        <p style="text-align:center;">
        <asp:Label  ID="lb_plan" runat="server" Text="<%$ Resources:Resource, Plan %>"></asp:Label>
</p>
        <p>
            <asp:Calendar ID="Calendar1" runat="server" CssClass="calendar"></asp:Calendar>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>

        <p style="text-align:center;">
            <asp:Label ID="lb_gradua" runat="server" Text="<%$ Resources:Resource, Gradua %>"></asp:Label>
&nbsp;<asp:TextBox ID="tb_salary" runat="server" Width="218px"></asp:TextBox>
            <br/>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                runat="server" 
                ControlToValidate="tb_salary" 
                ErrorMessage="Please Enter Your Salary!" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p style="text-align:center;">
            &nbsp;</p>
        <p style="text-align:center;">
            <asp:Button ID="b_submit" runat="server" Text="Submit" />
        </p>

        
    </form>
</body>
</html>
