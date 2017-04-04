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
        <asp:TextBox ID="txtName" runat="server" BorderColor="#CCCCCC" Style="margin-left: 23px" Width="191px"></asp:TextBox>
        <span class="required">*</span></li>
    <li> Email:<br />
        <asp:TextBox ID="TxtEmail" runat="server" Style="margin-bottom: 1px; margin-left: 22px;" BorderColor="#CCCCCC" Width="193px"></asp:TextBox>
        <span class="required">*</span></li>
    <li>Subject:<br />
        <asp:TextBox ID="TxtSubject" runat="server" BorderColor="#CCCCCC" Style="margin-left: 26px" Width="191px"></asp:TextBox>
        <span class="required">*</span></li>
  
            <li>Message :<br />
        &nbsp;<asp:TextBox ID="TxtMessage" runat="server" TextMode="MultiLine" BorderColor="#CCCCCC" Style="margin-left: 26px" Width="187px"></asp:TextBox><span class="required">*</span></li>
      <br /><br />

    <li> <asp:Button ID="BtnSendEmail" runat="server" Text="SEND MESSAGE" Width="112px" OnClick="BtnSendEmail_Click" BackColor="Black" BorderColor="#333333" Font-Size="Smaller" ForeColor="White" />
</li>
       <asp:Literal ID="litResult" runat="server"></asp:Literal>
</ul>
</nav>
      

        <article>
  <h1>Dont be shy to contact us!</h1>
            <p style="box-sizing: border-box; padding: 0px; margin: 0px 0px 20px; line-height: 1.8; font-size: 14px; color: rgb(115, 115, 115); font-family: Verdana, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                Our friendly Help Team can be reached Monday through Saturday, from 10am to 9pm, Just fill in the form&nbsp;to contact us.</p>
            <hr>
            <ul style="box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; color: rgb(115, 115, 115); font-family: Verdana, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                <li style="box-sizing: border-box; padding: 0px; margin: 0px; list-style: none; line-height: 1.8;">Qayla.Co HQ</li>
                <li style="box-sizing: border-box; padding: 0px; margin: 0px; list-style: none; line-height: 1.8;">Phone: +673 8793664</li>
                <li style="box-sizing: border-box; padding: 0px; margin: 0px; list-style: none; line-height: 1.8;">Email:&nbsp;Qayla.Co1@gmail.com</li>
                <li style="box-sizing: border-box; padding: 0px; margin: 0px; list-style: none; line-height: 1.8;"></li>
            </ul>
  <p>&nbsp;</p>
</article>

        </div>

    <hr />

    <br />
     


    <script src='https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCCYOKFa_OO7arlpEzD0IzT0eR5e181YG8'></script><div style='overflow:hidden;height:400px;width:520px;'>
        <div id='gmap_canvas' style='height:400px;width:520px;'>

        </div>
        <style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div>
     <a href='https://add-map.org/'></a> <script type='text/javascript' src='https://embedmaps.com/google-maps-authorization/script.js?id=a5f6ceeb79b68e415cfce2596cd259642d0634fb'></script><script type='text/javascript'>function init_map(){var myOptions = {zoom:12,center:new google.maps.LatLng(4.8863094,114.93202059999999),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(4.8863094,114.93202059999999)});infowindow = new google.maps.InfoWindow({content:'<strong>Our Location</strong><br>Jalan Batu Satu<br> Bandar Seri Begawan<br>'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>

    <br />







</asp:Content>

