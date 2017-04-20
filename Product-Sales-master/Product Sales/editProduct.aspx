<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="editProduct.aspx.cs" Inherits="Product_Sales.editProduct" %>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminPagesPlaceHolder" runat="server">
    <form id="formEditProduct" runat="server">
        <div class="account">
            <div class="container">
                <div class="account-top heading">
                    <h2>Edit Products</h2>
                </div>
                <div class="account-main">
                    <div class="col-md-6 account-left">
                        <!-- TODO format gridview -->
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="userProductEdit" AllowPaging="True" AllowSorting="True">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                                <asp:BoundField DataField="discount" HeaderText="discount" SortExpression="discount" />
                                <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
                                <asp:BoundField DataField="size" HeaderText="size" SortExpression="size" />
                                <asp:BoundField DataField="catogory" HeaderText="catogory" SortExpression="catogory" />
                                <asp:BoundField DataField="brand" HeaderText="brand" SortExpression="brand" />
                                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                                <asp:BoundField DataField="infomation" HeaderText="infomation" SortExpression="infomation" />
                                <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
                                <asp:BoundField DataField="numOfRate" HeaderText="numOfRate" SortExpression="numOfRate" />
                                <asp:BoundField DataField="reviews" HeaderText="reviews" SortExpression="reviews" />
                                <asp:BoundField DataField="tag" HeaderText="tag" SortExpression="tag" />
                                <asp:BoundField DataField="sku" HeaderText="sku" SortExpression="sku" />
                                <asp:BoundField DataField="picture" HeaderText="picture" SortExpression="picture" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="userProductEdit"
                            runat="server"
                            ConflictDetection="CompareAllValues"
                            ConnectionString="<%$ ConnectionStrings:tproductSalesConnectionLocalhost %>"
                            DeleteCommand="DELETE FROM [products] WHERE [id] = @original_id AND [name] = @original_name AND [price] = @original_price AND [discount] = @original_discount AND [color] = @original_color AND [size] = @original_size AND [catogory] = @original_catogory AND [brand] = @original_brand AND [description] = @original_description AND [infomation] = @original_infomation AND [rate] = @original_rate AND [numOfRate] = @original_numOfRate AND [reviews] = @original_reviews AND [tag] = @original_tag AND [sku] = @original_sku AND [picture] = @original_picture"
                            OldValuesParameterFormatString="original_{0}"
                            SelectCommand="SELECT * FROM [products]"
                            UpdateCommand="UPDATE [products] SET [name] = @name, [price] = @price, [discount] = @discount, [color] = @color, [size] = @size, [catogory] = @catogory, [brand] = @brand, [description] = @description, [infomation] = @infomation, [rate] = @rate, [numOfRate] = @numOfRate, [reviews] = @reviews, [tag] = @tag, [sku] = @sku, [picture] = @picture WHERE [id] = @original_id AND [name] = @original_name AND [price] = @original_price AND [discount] = @original_discount AND [color] = @original_color AND [size] = @original_size AND [catogory] = @original_catogory AND [brand] = @original_brand AND [description] = @original_description AND [infomation] = @original_infomation AND [rate] = @original_rate AND [numOfRate] = @original_numOfRate AND [reviews] = @original_reviews AND [tag] = @original_tag AND [sku] = @original_sku AND [picture] = @original_picture">
                            <DeleteParameters>
                                <asp:Parameter Name="original_id" Type="Int32" />
                                <asp:Parameter Name="original_name" Type="String" />
                                <asp:Parameter Name="original_price" Type="Int32" />
                                <asp:Parameter Name="original_discount" Type="Int32" />
                                <asp:Parameter Name="original_color" Type="String" />
                                <asp:Parameter Name="original_size" Type="String" />
                                <asp:Parameter Name="original_catogory" Type="String" />
                                <asp:Parameter Name="original_brand" Type="String" />
                                <asp:Parameter Name="original_description" Type="String" />
                                <asp:Parameter Name="original_infomation" Type="String" />
                                <asp:Parameter Name="original_rate" Type="Int32" />
                                <asp:Parameter Name="original_numOfRate" Type="Int32" />
                                <asp:Parameter Name="original_reviews" Type="String" />
                                <asp:Parameter Name="original_tag" Type="String" />
                                <asp:Parameter Name="original_sku" Type="String" />
                                <asp:Parameter Name="original_picture" Type="String" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="price" Type="Int32" />
                                <asp:Parameter Name="discount" Type="Int32" />
                                <asp:Parameter Name="color" Type="String" />
                                <asp:Parameter Name="size" Type="String" />
                                <asp:Parameter Name="catogory" Type="String" />
                                <asp:Parameter Name="brand" Type="String" />
                                <asp:Parameter Name="description" Type="String" />
                                <asp:Parameter Name="infomation" Type="String" />
                                <asp:Parameter Name="rate" Type="Int32" />
                                <asp:Parameter Name="numOfRate" Type="Int32" />
                                <asp:Parameter Name="reviews" Type="String" />
                                <asp:Parameter Name="tag" Type="String" />
                                <asp:Parameter Name="sku" Type="String" />
                                <asp:Parameter Name="picture" Type="String" />
                                <asp:Parameter Name="original_id" Type="Int32" />
                                <asp:Parameter Name="original_name" Type="String" />
                                <asp:Parameter Name="original_price" Type="Int32" />
                                <asp:Parameter Name="original_discount" Type="Int32" />
                                <asp:Parameter Name="original_color" Type="String" />
                                <asp:Parameter Name="original_size" Type="String" />
                                <asp:Parameter Name="original_catogory" Type="String" />
                                <asp:Parameter Name="original_brand" Type="String" />
                                <asp:Parameter Name="original_description" Type="String" />
                                <asp:Parameter Name="original_infomation" Type="String" />
                                <asp:Parameter Name="original_rate" Type="Int32" />
                                <asp:Parameter Name="original_numOfRate" Type="Int32" />
                                <asp:Parameter Name="original_reviews" Type="String" />
                                <asp:Parameter Name="original_tag" Type="String" />
                                <asp:Parameter Name="original_sku" Type="String" />
                                <asp:Parameter Name="original_picture" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
