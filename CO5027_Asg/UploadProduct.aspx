<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UploadProduct.aspx.cs" Inherits="CO5027_Asg.UploadProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        Upload Image</p>
    <p>
        <asp:FileUpload ID="imageFileUploadControl" runat="server" />
</p>
<p>
    <br />
    <asp:Button ID="confirm" runat="server" OnClick="Button1_Click" Text="Confirm" />
</p>
    <p>
        <asp:Image ID="CurrentImage" runat="server" Height="153px" Width="286px" />
</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Image_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Image_ID" HeaderText="Image_ID" InsertVisible="False" ReadOnly="True" SortExpression="Image_ID" />
                <asp:BoundField DataField="ImageName" HeaderText="ImageName" SortExpression="ImageName" />
                <asp:BoundField DataField="Prod_Width" HeaderText="Prod_Width" SortExpression="Prod_Width" />
                <asp:BoundField DataField="Prod_Height" HeaderText="Prod_Height" SortExpression="Prod_Height" />
                <asp:BoundField DataField="Prod_Extension" HeaderText="Prod_Extension" SortExpression="Prod_Extension" />
                <asp:BoundField DataField="Image_Altenantetext" HeaderText="Image_Altenantetext" SortExpression="Image_Altenantetext" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1624980_db_1624980_user_db_1624980_co5027ConnectionString %>" DeleteCommand="DELETE FROM [ProductImage_tbl] WHERE [Image_ID] = @original_Image_ID AND (([ImageName] = @original_ImageName) OR ([ImageName] IS NULL AND @original_ImageName IS NULL)) AND (([Prod_Width] = @original_Prod_Width) OR ([Prod_Width] IS NULL AND @original_Prod_Width IS NULL)) AND (([Prod_Height] = @original_Prod_Height) OR ([Prod_Height] IS NULL AND @original_Prod_Height IS NULL)) AND (([Prod_Extension] = @original_Prod_Extension) OR ([Prod_Extension] IS NULL AND @original_Prod_Extension IS NULL)) AND (([Image_Altenantetext] = @original_Image_Altenantetext) OR ([Image_Altenantetext] IS NULL AND @original_Image_Altenantetext IS NULL))" InsertCommand="INSERT INTO [ProductImage_tbl] ([ImageName], [Prod_Width], [Prod_Height], [Prod_Extension], [Image_Altenantetext]) VALUES (@ImageName, @Prod_Width, @Prod_Height, @Prod_Extension, @Image_Altenantetext)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ProductImage_tbl]" UpdateCommand="UPDATE [ProductImage_tbl] SET [ImageName] = @ImageName, [Prod_Width] = @Prod_Width, [Prod_Height] = @Prod_Height, [Prod_Extension] = @Prod_Extension, [Image_Altenantetext] = @Image_Altenantetext WHERE [Image_ID] = @original_Image_ID AND (([ImageName] = @original_ImageName) OR ([ImageName] IS NULL AND @original_ImageName IS NULL)) AND (([Prod_Width] = @original_Prod_Width) OR ([Prod_Width] IS NULL AND @original_Prod_Width IS NULL)) AND (([Prod_Height] = @original_Prod_Height) OR ([Prod_Height] IS NULL AND @original_Prod_Height IS NULL)) AND (([Prod_Extension] = @original_Prod_Extension) OR ([Prod_Extension] IS NULL AND @original_Prod_Extension IS NULL)) AND (([Image_Altenantetext] = @original_Image_Altenantetext) OR ([Image_Altenantetext] IS NULL AND @original_Image_Altenantetext IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Image_ID" Type="Int32" />
                <asp:Parameter Name="original_ImageName" Type="String" />
                <asp:Parameter Name="original_Prod_Width" Type="Int32" />
                <asp:Parameter Name="original_Prod_Height" Type="Int32" />
                <asp:Parameter Name="original_Prod_Extension" Type="String" />
                <asp:Parameter Name="original_Image_Altenantetext" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ImageName" Type="String" />
                <asp:Parameter Name="Prod_Width" Type="Int32" />
                <asp:Parameter Name="Prod_Height" Type="Int32" />
                <asp:Parameter Name="Prod_Extension" Type="String" />
                <asp:Parameter Name="Image_Altenantetext" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ImageName" Type="String" />
                <asp:Parameter Name="Prod_Width" Type="Int32" />
                <asp:Parameter Name="Prod_Height" Type="Int32" />
                <asp:Parameter Name="Prod_Extension" Type="String" />
                <asp:Parameter Name="Image_Altenantetext" Type="String" />
                <asp:Parameter Name="original_Image_ID" Type="Int32" />
                <asp:Parameter Name="original_ImageName" Type="String" />
                <asp:Parameter Name="original_Prod_Width" Type="Int32" />
                <asp:Parameter Name="original_Prod_Height" Type="Int32" />
                <asp:Parameter Name="original_Prod_Extension" Type="String" />
                <asp:Parameter Name="original_Image_Altenantetext" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
</p>
<p>
    <asp:Button ID="Button2" runat="server" Text="Refresh" OnClick="Button2_Click" />
</p>
</asp:Content>
