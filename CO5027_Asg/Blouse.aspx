<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Blouse.aspx.cs" Inherits="CO5027_Asg.Blouse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="box">
        <asp:Repeater ID="itemsrpt" runat="server">

        <HeaderTemplate></HeaderTemplate>
        
        <ItemTemplate>
             <div class="item" id="productItems">
                <img src="../images/<%#Eval("Image_ID") %><%#Eval("Prod_Extension") %>" alt="<%#Eval("Image_Altenantetext") %>"/>
                    <div class="text">
                        <h4><%#Eval("ImageName") %></h4>
                        <a class="morebutton" href="itemDetails.aspx?id=<%#Eval("Product_ID") %>" title="Description">Desription</a>
                    </div>            
                </div>
         </ItemTemplate>
       
        <FooterTemplate></FooterTemplate>        
        </asp:Repeater>

       

     </div>

    <table class="Product">
        <tr>
            <td>
               <div class="img_box">
                        <a href="DetailProduct.aspx"><asp:Image ID="blouse1" runat="server" imageurl="Image/cardiBeigeNew.png" alt="Blouse"/></a>
                    </div>
                  <h4>Cardi Blouse Beige</h4>
                  <h5>Free Size Available</h5>
                <h5>Price : BND23</h5>

            </td>

<td>
                    <div class="img_box">
                        <a href="DetailProduct.aspx"><asp:Image ID="blouse2" runat="server" imageurl="Image/cardiPruneNew.png" alt="Blouse"/></a> 
                    </div>
                    <h4>Cardi Blouse Prune</h4>
      <h5>Free Size Available</h5>
    <h5>Price : BND23</h5>
                    
                </td>
            <td>
                    <div class="img_box">
                        <a href="DetailProduct.aspx"><asp:Image ID="blouse3" runat="server" imageurl="Image/cardiWhiteNew.PNG" alt="Blouse"/></a> 
                    </div>
                    <h4>Cardi Blouse White
                    </h4>
                <h5>Free Size Available</h5>
                <h5>Price : BND23</h5>
                    
                </td>


        </tr>

    </table>

</asp:Content>

