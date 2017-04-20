<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="editUser.aspx.cs" Inherits="Product_Sales.editUser" %>


<asp:Content ID="Content2" ContentPlaceHolderID="AdminPagesPlaceHolder" runat="server">
    <form id="formEditUser" runat="server">
        <div class="account">
            <div class="container">
                <div class="account-top heading">
                    <h2>Edit Users</h2>
                </div>
                <div class="account-main">
                    <div class="col-md-6 account-left">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="userTableEdit" AllowPaging="True" AllowSorting="True">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                <asp:BoundField DataField="isAdmin" HeaderText="isAdmin" SortExpression="isAdmin" />
                                <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
                                <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
                                <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex" />
                                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                            </Columns>

                        </asp:GridView>
                        <asp:SqlDataSource ID="userTableEdit"
                            runat="server"
                            ConflictDetection="CompareAllValues"
                            ConnectionString="<%$ ConnectionStrings:tproductSalesConnectionLocalhost %>"
                            DeleteCommand="DELETE FROM [userlogin] WHERE [id] = @original_id AND [username] = @original_username AND [password] = @original_password AND [email] = @original_email AND (([isAdmin] = @original_isAdmin) OR ([isAdmin] IS NULL AND @original_isAdmin IS NULL)) AND [firstName] = @original_firstName AND (([lastName] = @original_lastName) OR ([lastName] IS NULL AND @original_lastName IS NULL)) AND [sex] = @original_sex AND (([mobile] = @original_mobile) OR ([mobile] IS NULL AND @original_mobile IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL))"
                            OldValuesParameterFormatString="original_{0}"
                            SelectCommand="SELECT * FROM [userlogin]"
                            UpdateCommand="UPDATE [userlogin] SET [username] = @username, [password] = @password, [email] = @email, [isAdmin] = @isAdmin, [firstName] = @firstName, [lastName] = @lastName, [sex] = @sex, [mobile] = @mobile, [address] = @address WHERE [id] = @original_id AND [username] = @original_username AND [password] = @original_password AND [email] = @original_email AND (([isAdmin] = @original_isAdmin) OR ([isAdmin] IS NULL AND @original_isAdmin IS NULL)) AND [firstName] = @original_firstName AND (([lastName] = @original_lastName) OR ([lastName] IS NULL AND @original_lastName IS NULL)) AND [sex] = @original_sex AND (([mobile] = @original_mobile) OR ([mobile] IS NULL AND @original_mobile IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_id" Type="Int32" />
                                <asp:Parameter Name="original_username" Type="String" />
                                <asp:Parameter Name="original_password" Type="String" />
                                <asp:Parameter Name="original_email" Type="String" />
                                <asp:Parameter Name="original_isAdmin" Type="String" />
                                <asp:Parameter Name="original_firstName" Type="String" />
                                <asp:Parameter Name="original_lastName" Type="String" />
                                <asp:Parameter Name="original_sex" Type="String" />
                                <asp:Parameter Name="original_mobile" Type="Int32" />
                                <asp:Parameter Name="original_address" Type="String" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="username" Type="String" />
                                <asp:Parameter Name="password" Type="String" />
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="isAdmin" Type="String" />
                                <asp:Parameter Name="firstName" Type="String" />
                                <asp:Parameter Name="lastName" Type="String" />
                                <asp:Parameter Name="sex" Type="String" />
                                <asp:Parameter Name="mobile" Type="Int32" />
                                <asp:Parameter Name="address" Type="String" />
                                <asp:Parameter Name="original_id" Type="Int32" />
                                <asp:Parameter Name="original_username" Type="String" />
                                <asp:Parameter Name="original_password" Type="String" />
                                <asp:Parameter Name="original_email" Type="String" />
                                <asp:Parameter Name="original_isAdmin" Type="String" />
                                <asp:Parameter Name="original_firstName" Type="String" />
                                <asp:Parameter Name="original_lastName" Type="String" />
                                <asp:Parameter Name="original_sex" Type="String" />
                                <asp:Parameter Name="original_mobile" Type="Int32" />
                                <asp:Parameter Name="original_address" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
