<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CO5027.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Index.css" rel="stylesheet" type="text/css" media="screen" />
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <br />

    

    <div class="container1">
        
        <header>
            <h1>Contact Us </h1>
        </header>

        <nav>
  <ul>
    <li>Name : 
    <br />



        
        <div class="ctcname"><asp:TextBox ID="txtName" runat="server"></asp:TextBox></div>
        <span class="required">*</span><asp:RequiredFieldValidator ID="ReqValName" runat="server" ErrorMessage="Name cannot be left blank" ControlToValidate="txtName" CssClass="ReqValName"></asp:RequiredFieldValidator></li>

      
    <li> Email:<br />
       
         <div class="ctcEmail"> <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox></div>
        <span class="required">*</span> <asp:RegularExpressionValidator ID="reqValEmail" runat="server" ErrorMessage="Email address is not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TxtEmail" CssClass="reqValEmail"></asp:RegularExpressionValidator></li> 
      &nbsp;<asp:RequiredFieldValidator ID="ReqFieldEmail" runat="server" ErrorMessage="Email Cannot be left Blank" ControlToValidate="TxtEmail" CssClass="ReqFieldEmail"></asp:RequiredFieldValidator>

    <li>Subject:<br />
        <div class="ctcSubject">  <asp:TextBox ID="TxtSubject" runat="server"></asp:TextBox></div>
        <span class="required">*</span><asp:RequiredFieldValidator ID="reqValSubj" runat="server" ErrorMessage="Subject Cannot be left Blank" ControlToValidate="TxtSubject" CssClass="reqValSubj"></asp:RequiredFieldValidator></li>
  
            <li>Message :<br />
     <div class="ctcMessage"><asp:TextBox ID="TxtMessage" runat="server" TextMode="MultiLine" ></asp:TextBox></div>
         <span class="required">*</span><asp:RequiredFieldValidator ID="ReqValMsg" runat="server" ErrorMessage="Message Cannot be left Blank" ControlToValidate="TxtMessage" CssClass="ReqValMsg"></asp:RequiredFieldValidator></li>
 

    <li> <div class="ctcbutton"><asp:Button ID="BtnSendEmail" runat="server" Text="SEND MESSAGE"  OnClick="BtnSendEmail_Click" BackColor="Black" BorderColor="#333333"  ForeColor="White" style="width: 160px" /></div>
</li>
       </ul>
</nav>
      

      <div class="article">
  <h1>Dont be shy to contact us!</h1>
         <p>Our friendly Help Team can be reached Monday through Saturday, from 10am to 9pm, Just fill in the form to contact us.</p>
            <hr>
            <p>
                Qayla.Co HQ</p>
         <p>
Phone: +673 8793664</p>
         <p>
Email:Qayla.Co1@gmail.com</p>
  
</div>


</div>
        <ul class="socialmedia">
                    <li><a href="https://www.facebook.com"><img src="Image/fb.jpg" alt="facebook"/></a></li>
                    <li><a href="https://www.instagram.com"><img src="Image/ig.png" alt="Instagram"/></a> </li>

            </ul>

        
    <hr />


   <h2 style="text-align: center">OUR LOCATION</h2> <br />
     
 <div id="map"></div>

    <script>
        function initMap() {
            var myLatLng = { lat: 4.885478, lng: 114.931605 };

            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 18,
                center: myLatLng
            });

            var marker = new google.maps.Marker({
                position: myLatLng,
                map: map,
                title: 'Hello World!'
            });
        }
    </script>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBoE5lihn3Zxq6tbgv3V83cWCKYqeZqKZE&callback=initMap"
        async defer></script>

    <br />

 
</asp:Content>

