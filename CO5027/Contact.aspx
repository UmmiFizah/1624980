<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CO5027.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Index.css" rel="stylesheet" type="text/css" media="screen" />
    <style type="text/css">
        .column1 {
            width: 675px;
        }
    </style>
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
        <span class="required">*</span></li>

      
    <li> Email:<br />
       
         <div class="ctcEmail"> <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox></div>
        <span class="required">*</span></li>

    <li>Subject:<br />
        <div class="ctcSubject">  <asp:TextBox ID="TxtSubject" runat="server"></asp:TextBox></div>
        <span class="required">*</span></li>
  
            <li>Message :<br />
     <div class="ctcMessage"><asp:TextBox ID="TxtMessage" runat="server" TextMode="MultiLine" ></asp:TextBox></div>
         <span class="required">*</span></li>
 

    <li> <div class="ctcbutton"><asp:Button ID="BtnSendEmail" runat="server" Text="SEND MESSAGE"  OnClick="BtnSendEmail_Click" BackColor="Black" BorderColor="#333333"  ForeColor="White" /></div>
</li>
       <asp:Literal ID="litResult" runat="server"></asp:Literal>
</ul>
</nav>
      

    <div id="article">
  <h1>Dont be shy to contact us!</h1>
            <p> 
                Our friendly Help Team can be reached Monday through Saturday, from 10am to 9pm, Just fill in the form&nbsp;to contact us.</p>
            <hr>
            <ul>
                <li>Qayla.Co HQ</li>
                <li >Phone: +673 8793664</li>
                <li >Email:&nbsp;Qayla.Co1@gmail.com</li>
                

                </ul>
  
</div>
        <ul class="socialmedia">
                    <li><a href="https://www.facebook.com"><img src="Image/fb.jpg" /></a> </li>
                    <li><a href="https://www.instagram.com"><img src="Image/ig.png" /></a> </li>

            </ul>

        </div>

    <hr />

   <h2>OUR LOCATION</h2> <br />
     


    
    <script src='https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCCYOKFa_OO7arlpEzD0IzT0eR5e181YG8'></script>
    <div class="mappp">
        <div id='gmap_canvas'>  </div>

     <a href='https://add-map.org/'></a> 
         <script type='text/javascript' src='https://embedmaps.com/google-maps-authorization/script.js?id=a5f6ceeb79b68e415cfce2596cd259642d0634fb'>
    </script>
    <script type='text/javascript'>function init_map(){var myOptions = {zoom:12,center:new google.maps.LatLng(4.8863094,114.93202059999999),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(4.8863094,114.93202059999999)});infowindow = new google.maps.InfoWindow({content:'<strong>Our Location</strong><br>Jalan Batu Satu<br> Bandar Seri Begawan<br>'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>

      </div>
</asp:Content>

