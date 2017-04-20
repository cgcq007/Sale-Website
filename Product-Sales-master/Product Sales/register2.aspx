<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register2.aspx.cs" Inherits="Product_Sales.register2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Register2</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="register">
        <form class="container" name="Register" action="?Action=Resgiter" method="post">
            <div class="register-top heading">
                <h2>REGISTER</h2>
            </div>
            <div class="register-main">
                <div class="col-md-6 account-left">
                    <input name="FirstName" placeholder="First name" type="text" tabindex="1" required>
                    <input name="LastName" placeholder="Last name" type="text" tabindex="2" required>
                    <input name="Email" placeholder="Email address" type="text" tabindex="3" required>
                    <input name="Mobile" placeholder="Mobile" type="text" tabindex="3" required>
                    <ul>
                        <li>
                            <label class="radio left">
                                <input type="radio" name="sex" checked=""><i></i>Male</label></li>
                        <li>
                            <label class="radio">
                                <input type="radio" name="sex"><i></i>Female</label></li>
                        <div class="clearfix"></div>
                    </ul>
                <%--</div>--%>
                <div class="col-md-6 account-left">
                    <input name="Password" placeholder="Password" type="password" tabindex="4" required>
                    <input name="RePassword" placeholder="Retype password" type="password" tabindex="4" required>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="address submit">
                <input type="submit" value="Submit">
            </div>
        </form>
    </div>
</asp:Content>
