<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HOTELL._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <div class="container" style="width:100%">
<br />
<div class="carousel slide" id="myCarousel" data-ride="carousel">
<ol class="carousel-indicators">
<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
<li data-target="#myCarousel" data-slide-to="1"></li>
<li data-target="#myCarousel" data-slide-to="2"></li>
<li data-target="#myCarousel" data-slide-to="3"></li>
<li data-target="#myCarousel" data-slide-to="4"></li>
<li data-target="#myCarousel" data-slide-to="5"></li>
<li data-target="#myCarousel" data-slide-to="6"></li>
<li data-target="#myCarousel" data-slide-to="7"></li>
<li data-target="#myCarousel" data-slide-to="8"></li>


</ol>

<div class="carousel-inner" role="listbox">
<div class="item active">
<img src="images/1.jpg" alt="1" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p></p>
</div>
</div>

<div class="item">
<img src="images/SL1.jpg" alt="SL1" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p></p>
</div>
</div>

<div class="item">
<img src="images/3.jpg" alt="3" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p></p>
</div>
</div>

    <div class="item">
<img src="images/SL2.jpg" alt="SL2" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p></p>
</div>
</div>

    
    <div class="item">
<img src="images/SL4.jpg" alt="SL4" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p></p>
</div>
</div>

    
    <div class="item">
<img src="images/6.jpg" alt="6" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p></p>
</div>
</div>

    <div class="item">
<img src="images/7.jpg" alt="7" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p>Olamilekan is the real guy</p>
</div>
</div>

    <div class="item">
<img src="images/8.jpg" alt="8" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p></p>
</div>
</div>

    <div class="item">
<img src="images/WATER.jpg" alt="WATER" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p></p>
</div>
</div>


</div>

<a class="left carousel-control" href="#myCarousel" style="margin-left:0px; width:100px;" role="button" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left" style="margin-left:0px; width:50px" aria-hidden="true" ></span>
<span class="sr-only">Previous</span>
</a>
<a class="right carousel-control" href="#myCarousel" style="margin-right:0px; width:100px" role="button" data-slide="next">
<span class="glyphicon glyphicon-chevron-right" style="margin-left:-50px; width:50px" aria-hidden="true" ></span>
<span class="sr-only">Next</span>
</a>
</div></div>
       

    <br />
    <br>
     <div class="container">
        
        <ul class="nav nav-tabs nav-justified" id="tnav">
            <li class="active"><a data-toggle="tab" href="#home"><strong> OVERVIEW</strong></a></li>
            <li><a data-toggle="tab" href="#menu1"><strong>DETAILS</strong> </a></li>
            <li><a data-toggle="tab" href="#menu2"><strong>ROOMS</strong> </a></li>
            <li><a data-toggle="tab" href="#menu3"><strong>SPECIALS</strong></a></li>
            <li><a data-toggle="tab" href="#menu4"><strong>REVIEWS</strong> </a></li>
            <li><a data-toggle="tab" href="#menu5"><strong>ACCREDITATIONS</strong></a></li>
        </ul>

        <div class="tab-content" style="background-color:Cornsilk; padding:30px;">
            <div id="home" style="padding:5px;" class="tab-pane fade in active w3-round-large w3-card-8">
                <br />
                <br />
                <p>The <strong> Living Spring Hotel</strong>, five-star bussiness and leisure stopover destination in the western region of Nigeria,
                    with 300 well-appointed hotel rooms and suites over 10 floors. Right across the way from hilton beach, this hotel 
                    in Lekki Penisula provides front-row views of the warm pacific ocean and is easily accessible, being only a 
                    20 minutes' drive away from Muritala Muhammed Airport.
                </p>
                <p>For tourists, Lekki penisula is the perfect hub from which to visit legendary tourist attractions like the garden routes,
                     the Sunshine Coast, the Frontier Country and the great Karoo Heartland Routes. Standout features of the hotel are 
                    the One Bedroom Suites, which offer a self-catering option in the the form of a kitchenette, as well as the large
                     ballroom, which is for formal functions, events, and product launches.
                </p>

                <h3>Accomodation</h3>
                <p>The hotel offers several different room types from which guests may choose in order to meet their personal
                     requirements. The rooms provide three decor styles: urban, with warm, natural shades of brown sand; eclectic, featuring
                     energizing shades of burnt orange; and shoreline, with sleek black and white tones.
                </p>

                <h4>Standard Room:</h4>
                <ul style="list-style-type:none">
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>King size bed or two twin beds</li>
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>Open plan bathroom with bath and shower</li>
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>Free high-speed wireless internet</li>
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>Mini-bar stocked on request</li>
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>Safe</li>
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>Tea and coffee provisions</li>
                </ul>
                <h3>Services</h3>
                <h4>Hotel facilities-Connectivity & convenience</h4>
                <ul style="list-style-type:none">
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>High-speed wireless internet</li>
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>Laptop-compatible safes</li>
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>Express check-out-invoices by email or quick pick-up at reception desk</li>
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>Three-hour express laundry service</li>
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>One-touch function button from room telephone, to process all requests</li>
                 </ul>

                    <h4>Recreation facilities-Health and Leisure</h4>
                <ul style="list-style-type:none">
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>Bar</li>
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>Swimming pool</li>
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>Spa and gym</li>
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>Lounge</li>
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>Concierge and tour assistance</li>
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>Rooftop terrace with breathtaking views</li>
                 </ul>

                 <h4 style="color:#FFFACD">Business facilities</h4>
                <ul style="list-style-type:none">
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>Business center available</li>
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>Meeting / conference room</li>
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>Audiovisual equipment</li>
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>337 square meter ballroom confortably hosts up to 180 guests</li>
                    </ul>

                 <h3 style="color:#FFF5EE">Dining</h3>
                <p>The hotel's modern and stylish Tabu Grill presents a selection of sumptuous, freshly prepared dishes, served against
                     the backdrop of the pacific ocean. For cocktails before and nightcaps after dinner, the restaurant leads through
                    to the Tabu Bar & Lounge with its sleek couches and exciting live jazz on selected evenings.
                </p>

                <h3>Location</h3>
                      <ul style="list-style-type:none">
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>Twenty minutes from Muritala Muhammed Airport</li>
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>Short trip Oriental Shopping Mall</li>
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>Fifteen minutes from six-seven</li>
                       </ul>

                <h3>Nearby Activities & Attractions</h3>
                      <ul style="list-style-type:none">
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>Summerstrand and Hobie beachs</li>
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>Vernada Stadium</li>
                    <li><span style="color:darkred"> &#9673;&nbsp;&nbsp;</span>Bayworld-museum, oceanarium and snake park</li>
                       </ul>
                
             
                 </div>

            

            <div id="menu1" class="tab-pane fade">
              <p style="color:gray; font-weight:300; font-family:'Comic Sans MS'">Below detailed information about Living Spring Hotel is available.<br />
                  For any queries regarding this hotel, you are welcome to contact us.
              </p>
               <a href="#cp" style="border:none;" class="hg" data-toggle="collapse"> <div style="color:maroon; font-size:larger; width:80%; text-decoration:none;"><strong> Amenities</strong> <span style="float:right" onclick="glyphicon glyphicon-minus-sign" class="glyphicon glyphicon-plus-sign"></span></div></a>
               
	<div id="cp" class="collapse">
		<ul class="uw">
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Air Conditioning</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Bathrobe</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Ensuite / Private bathroom</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Housekeeping</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Internet Access</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Mini Bar</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Safe</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Satellite TV</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Tea and coffee making facilities</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Telephone</li>
		</ul>
		</div>
                <hr />

                 <a href="#cq" style="border:none;" class="hg" data-toggle="collapse"> <div style="color:maroon; font-size:larger; width:80%; text-decoration:none;"><strong>Restaurants</strong> <span style="float:right" class="glyphicon glyphicon-plus-sign"></span></div></a>
               
	<div id="cq" class="collapse">
        <h5 style="font-family:Euphemia; color:maroon; font-size:large">Express Bar & Lounge</h5>
		 <p style="color:gray; font-weight:300; font-size:medium; font-family:'Berlin Sans FB'">
             An offshoot of the restaurant, Express provides the perfect hub for cocktails among friends, with sleek couches and club chairs and accompanying live jazz.
             This chic, urban cocktail lounge at the Living Spring Hotel leads off from the restaurant and splils out onto the magnificient wooden 
             pool deck as the perfect place for sipping pre-dinner drinks while soaking in the endless Quilox view.
              </p>
        	 <p style="color:gray; font-weight:300; font-size:medium; font-family:'Berlin Sans FB'">
             The bar is a place for friends to gather and alow the stress of the day to disappear.A central bar island, the heart of Express,
                 serves expertly created cocktails and specialty whiskeys from around the world. Sleek couches and laether club chairs invite 
                 comfortable conversation while live jazz often picks up the pace in the evenings.The Express bar menu offers its own delectable 
                 array of snacks and light meals.
              </p>
		</div>
                <hr />

<a href="#cr" style="border:none;" class="hg" data-toggle="collapse"> <div style="color:maroon; font-size:larger; width:80%; text-decoration:none;"><strong>Spa</strong> <span style="float:right" class="glyphicon glyphicon-plus-sign"></span></div></a>
               
	<div id="cr" class="collapse">
        <h5>The Spa</h5>
        	 <p style="color:gray; font-weight:300; font-size:medium; font-family:'Berlin Sans FB'">
            Spa treatments:
              </p>
		<ul class="uw">
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Skin care theraphy</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Spa body therapy including body wraps</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Massage therapy</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Spa journeys</li>
            
		</ul>
		</div>
                <hr />

<a href="#cs" style="border:none;" class="hg" data-toggle="collapse"> <div style="color:maroon; font-size:larger; width:80%; text-decoration:none;"><strong>Activities,Sports & Leisure</strong> <span style="float:right" class="glyphicon glyphicon-plus-sign"></span></div></a>
               
	<div id="cs" class="collapse">
        <h5>Spa Treatments</h5>
        	
		<ul class="uw">
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Skin care theraphy</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Spa body therapy including body wraps</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Massage therapy</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Spa journeys</li>
		</ul>
        
        <br />
          <h5>Gym</h5>
            	 <p style="color:gray; font-weight:300; font-size:medium; font-family:'Berlin Sans FB'">
      The Hotel provides guests complimentary access and offers high-end, exclusive membership for local residents.
              </p>
        <br />
        <h5>Nearby activities & attractions</h5>
        		<ul class="uw">
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Boardwalk Casino and Entertainment Complex-1.2 km</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Lagos Golf Club-1.1 km</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Lekki Park Stadium-7 km</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Bayworld Oceanarium-3.4 km</li>
              <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Hilton Museum-6.1 km</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Greenacres Shopping Center-24 km</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Tinubu National park-14.4 km</li>
		</ul>
		</div>
                <hr />

<a href="#ct" style="border:none;" class="hg" data-toggle="collapse"> <div style="color:maroon; font-size:larger; width:80%; text-decoration:none;"><strong>Conferences & Events</strong> <span style="float:right" class="glyphicon glyphicon-plus-sign"></span></div></a>
               
	<div id="ct" class="collapse">
        <h5>Conference Venue</h5>
        <h5 style="font-family:Euphemia; color:maroon; font-size:large">The Ballroom</h5>
		 <p style="color:gray; font-weight:300; font-size:medium; font-family:'Berlin Sans FB'">
          Designed for optimal comfort and clear thinking, the spacious ballroom spans 336 square meters and can be divided into three separate 
             meeting rooms able to accommodate 215 people for seated dining. The ballroom proves ideal for a wide range of business and social functions, from 
             business meetings and product launches to intimate cocktail functions and weddings.
              </p>
        <h5 style="font-family:Euphemia; color:maroon; font-size:large">Meeting facilities include:</h5>
          		<ul class="uw">
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Business center</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Customized menus from experience chefs</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Free high-speed internet access</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Meetings and event staff on hand for advising and packaging events</li>
              <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>State-of-the-art audiovisual equipment</li>
            	</ul>
		</div>
                <hr />

               <a href="#cu" style="border:none;" class="hg" data-toggle="collapse"> <div style="color:maroon; font-size:larger; width:80%; text-decoration:none;"><strong>Facilities</strong> <span style="float:right" class="glyphicon glyphicon-plus-sign"></span></div></a>
               
	<div id="cu" class="collapse">
		<ul class="uw">
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Bar</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Boardroom Facilities</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Conference venue</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Gym</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Lounge</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Nearby Casino</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Nearby golf course</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Outdoor patio</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Parking</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Sea views</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Restaurant</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Spa</li>
		</ul>
		</div>
                <hr />

               <a href="#cv" style="border:none;" class="hg" data-toggle="collapse"> <div style="color:maroon; font-size:larger; width:80%; text-decoration:none;"><strong>Services</strong> <span style="float:right" class="glyphicon glyphicon-plus-sign"></span></div></a>
               
	<div id="cv" class="collapse">
        <h5>Check-in and Check-out Times</h5>
        <ul class="uw">
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>check-in:13:00</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Check-out:11:30</li>
            </ul>
           <h5>Business Services</h5>
        <ul class="uw">
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Internet access in rooms</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>WIFI</li>
            </ul>
        <h5>General Services</h5>
		<ul class="uw">
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>24-hour reception service</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Airport transfers</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Concierge services</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Health & Fitness Center</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Housekeeping service</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Luggage storage</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Massage treatments</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Porters</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Room service</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Sea views</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Wake-up call</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Wellness & Beauty treatments</li>
		</ul>
		</div>
             
       <hr />
            </div>


            <div id="menu2" class="tab-pane fade">
                 <blockquote style="background-color:gray; border-radius:8px; border-color:maroon; border-left-width:10px;" >
		<p style="font-size:x-large; padding:0px; margin:0px; font-weight:700; font-family:Rockwell; color:MintCream;">Available Rooms</p>
                     </blockquote>
                <h4 style="text-align:center; font-family:Aharoni; font-size:x-large">DELUXE ROOM</h4>
                 <div class="container">
<br />
<div class="carousel slide" id="myCarouseldl" data-ride="carousel">
<ol class="carousel-indicators">
<li data-target="#myCarouseldl" data-slide-to="0" class="active"></li>
<li data-target="#myCarouseldl" data-slide-to="1"></li>

</ol>

<div class="carousel-inner" role="listbox">
<div class="item active">
<img src="images/DL.jpg" alt="e" style="width:100%; height:320px;" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p>Olamilekan is the real guy</p>
</div>
</div>

<div class="item">
<img src="images/DL2.jpg" alt="a" style="width:100%; height:320px;" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p>Olamilekan is the real guy</p>
</div>
</div>

</div>

<a class="left carousel-control" href="#myCarouseldl" style="margin-left:0px; width:100px;" role="button" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left" style="margin-left:0px; width:50px" aria-hidden="true" ></span>
<span class="sr-only">Previous</span>
</a>
<a class="right carousel-control" href="#myCarousel" style="margin-right:0px; width:100px" role="button" data-slide="next">
<span class="glyphicon glyphicon-chevron-right" style="margin-left:-50px; width:50px" aria-hidden="true" ></span>
<span class="sr-only">Next</span>
</a>
</div></div>

                
                
               
                           
       <p style="color:maroon; font-size:18px; font-family:Gisha;">DELUXE ROOM</p>
                <div class="row">
                    <div class="col-md-8">
<p class="para">Our Deluxe room has wide appeal whether you are travelling for business or leisure, decorated in contemporary style to suit the modern guest.
    The media hub stimulates communication while the marble bathroom promises pure relaxation.
</p>
 <h5 style="font-family:Algerian">AMENITIES INCLUDED</h5>
    <span class="para"><strong>Bathroom</strong></span><br />
    <span class="para">Modern styled bathroom offering separate walk-in shower and marble, including luxury bathroom amenities</span>
        <br /><br />
      <span class="para"><strong>Connectivity</strong></span><br />
    <span class="para">Complimentary Wi-Fi and cable broadband access in the room and around the hotel</span>
        <br /><br />
     <span class="para"><strong>Room Technology</strong></span><br />
    <span class="para">Widescreen interactive HD LCD TV, DVD player on request, iPod/iPhone docking station and media hub</span>
      <br /><br />
     <span class="para"><strong>Additional Information</strong></span><br />
    <span class="para">Unlimited access to Wild Waterpark and a pristine beach, including complimentary shuttle service*</span>

                    </div>
                        <div class="col-md-4">
                            <h5 style="text-align:center; font-family:Algerian">ROOM FACTS</h5>
                            <span class="fact"><strong>Size</strong></span><br />
                            <span class="para">44 square meters</span>
                            <br /><hr style="margin:1px" />
                            <span class="fact"><strong>Room View</strong></span><br />
                            <span class="para">Offering panoramic views of the Lekki cityscape</span>
                            <br /><hr style="margin:1px" />
                            <span class="fact"><strong>Occupancy</strong></span><br />
                            <span class="para">2 Adults and 2 Children (below the age of 12 years)</span>
                            <br /><hr style="margin:1px" />
                            <span class="fact"><strong>Bed Configuration</strong></span><br />
                            <span class="para">One king bed or Two Queen beds</span>
                            <br /><hr style="margin:1px" />
                            <span class="fact"><strong>Additional Amenities</strong></span><br />
                            <span class="para">Coffee & tea making facilities</span><br />
                            <span class="para">Complementary newspaper</span><br />
                            <span class="para">In-room security safe</span><br />
                            <span class="para">Hairdryer</span><br />
                            <span class="para">Ironing facilities</span><br />
                            <span class="para">Baby cots available</span>
                    </div>
                </div>
<br />

<div style="background-color:black; height:auto;" class="form-group">
    <div style="background-color:gray">
        <span style="font-family:'Berlin Sans FB';font-size:larger; color:white">BOOK THE DELUXE ROOM</span><span style="float:right; font-size:9px; font-weight:800; color:DarkOrange"><strong> Best Price<br />GUARANTEE</strong></span>
    </div>

     
    <div class="row" style="padding:5px;" >
        <div class="col-md-2">
            <p style="color:wheat">Check in Date</p>
            
            <asp:TextBox  runat="server" CssClass="form-control"  OnTextChanged="txtcid_TextChanged" placeholder="select option" ID="txtcid"></asp:TextBox>
        </div>
        <div class="col-md-2">
            <p style="color:wheat">Check out Date</p>
            <asp:TextBox runat="server" CssClass="form-control" OnTextChanged="txtcod_TextChanged" placeholder="select option" ID="txtcod"></asp:TextBox>
        </div>

                        <asp:UpdatePanel runat="server">
                    <ContentTemplate>
        <div class="col-md-1">
         <p style="color:wheat">ROOMS</p>
            
            <asp:DropDownList runat="server" Width="100%"  CssClass="form-control" ID="cmbrno" AutoPostBack="true" OnSelectedIndexChanged="cmbrno_SelectedIndexChanged">
            <asp:ListItem Text="0" Value="0"></asp:ListItem>
             <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
            <asp:ListItem Text="4" Value="4"></asp:ListItem>
            <asp:ListItem Text="5" Value="5"></asp:ListItem>
            <asp:ListItem Text="6" Value="6"></asp:ListItem>
            <asp:ListItem Text="7" Value="7"></asp:ListItem>
            
        </asp:DropDownList>
        </div>
        <div class="col-md-2">
        <p style="color:wheat; text-align:center">ADULTS</p>

<div class="form-group">
    <div class="col-md-4">
        <span style="color:white">ROOM1</span>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Width="100%"  CssClass="form-control" ID="cmba1">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
             
        </asp:DropDownList>
    </div>
    </div>

 <div class="form-group" >
    <div class="col-md-4">
        <asp:label runat="server" ForeColor="White" Visible="false"  id="lr2">ROOM2</asp:label>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmba2">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
             
        </asp:DropDownList>
    </div>
    </div>

<div class="form-group">
    <div class="col-md-4">
         <asp:label runat="server" ForeColor="White" Visible="false"  id="lr3">ROOM3</asp:label>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmba3">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
             
        </asp:DropDownList>
    </div>
    </div>

<div class="form-group">
    <div class="col-md-4">
         <asp:label runat="server" ForeColor="White" Visible="false"  id="lr4">ROOM4</asp:label>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmba4">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
             
        </asp:DropDownList>
    </div>
    </div>

<div class="form-group">
    <div class="col-md-4">
        <asp:label runat="server" ForeColor="White" Visible="false"  id="lr5">ROOM5</asp:label>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmba5">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
             
        </asp:DropDownList>
    </div>
    </div>

        </div>
        <div class="col-md-1 form-group">
        <p style="color:wheat">CHILDREN</p>
                        <asp:DropDownList runat="server" Width="100%"  CssClass="form-control" ID="cmbc1">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmbc2">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            </asp:DropDownList>

             <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmbc3">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmbc4">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmbc5">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            </asp:DropDownList>
        </div>


        <div class="col-md-4" style="padding-left:50px;">
            <br />
             <asp:Button ID="Button2" Width="60%" runat="server" BackColor="GoldenRod" Text="CHECK AVAILABILITY" CssClass="btn btn-primary" OnClick="Button2_Click"/>
            <br />
             <asp:Label ID="lblerror" runat="server" ForeColor="HotPink"></asp:Label>
            <span onclick="return confirm('Are you sure to Book Deluxe?')">
             <asp:Button ID="booking1" Visible="false" Width="40%" runat="server" data-toggle="collapse" data-target="#reg"  BackColor="SeaGreen" Text="BOOK Here" CssClass="btn btn-primary" OnClick="booking1_Click" />
                </span>





             <div class="row">
                    <div class="col-md-6">
                        <asp:label runat="server" Visible="false" style="font-family:Britannic; font-size:20px; color:gray; font-weight:300; " id="ls1">1 DAY</asp:label><br />
                        
                    <a data-toggle="modal" data-target="#myModal" style="cursor:pointer"> <asp:label ID="sa1" runat="server" style=" font-size:large; font-weight:700; color:maroon">&#8358;&nbsp;<asp:Label runat="server" Visible="false" id="prs" style="color:maroon; font-family:'Browallia New'; font-size:35px; font-weight:700;"></asp:Label></asp:label>
                     <asp:label runat="server" ID="sb1" style=" font-weight:700; font-size:large; color:maroon">US&nbsp;$&nbsp;<asp:Label runat="server" Visible="false" id="conts" style="color:maroon; font-family:'Browallia New'; font-size:30px; font-weight:700;"></asp:Label></asp:label></a>
                    </div>
                    <div class="col-md-6">
                         <asp:label runat="server" Visible="false" style=" font-family:Britannic; font-size:20px; color:gray; font-weight:300;" id="lm1"></asp:label><br />
                        <a data-toggle="modal" data-target="#myModal" style="cursor:pointer"><asp:label runat="server" ID="sc1" style=" font-weight:700; font-size:large; color:maroon">&#8358;&nbsp;<asp:Label runat="server" Visible="false" id="prd" style="color:maroon; font-family:'Browallia New'; font-size:35px; font-weight:700;"></asp:Label></asp:label>
                             <asp:label runat="server" ID="sd1" style=" font-weight:700; font-size:large; color:maroon">US&nbsp;$&nbsp;<asp:Label runat="server" Visible="false"  id="contd" style="color:maroon; font-family:'Browallia New'; font-size:30px; font-weight:700;"></asp:Label></asp:label></a>
                            
                    </div>
                </div>
             <asp:Button ID="con1" Width="30%" runat="server" Text="Convert" CssClass="btn btn-primary" OnClick="Button2_Click"/>
        </div>
    
                        </ContentTemplate>
                </asp:UpdatePanel>

    </div>

   </div>

               <br />
<hr style="width:100%; margin-bottom:0; margin-top:0;" />


<%--  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Small Modal</button>--%>

  <!-- Modal -->
                <asp:UpdatePanel runat="server"><ContentTemplate>
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-xs">
      <div style="width:50%" class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Select Currency</h4>
        </div>
        <div class="modal-body">
          <p style="color:darkblue">Select which currency to convert to</p>

            <asp:DropDownList runat="server" Width="100%" CssClass="form-control" ID="cmbcurrency" OnSelectedIndexChanged="cmbcurrency_SelectedIndexChanged">
                          
        </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="cmbcurrency" CssClass="text-danger" ErrorMessage="This field is required." />
        </div>
        <div class="modal-footer">
            <span style="color:darkblue; float:left"><strong>Thank you for considering us for your hotel booking!</strong><br />Click ok to Convert</span>
          <button type="button" class="btn btn-default"  data-dismiss="modal">OK</button>
        </div>
      </div>
    </div>
  </div>

</ContentTemplate></asp:UpdatePanel>



     
                

 <h4 style="text-align:center; font-family:Aharoni; font-size:x-large">DIPLOMAT ROOM</h4>
               <div class="container">
<br />
<div class="carousel slide" id="myCarouseldp" data-ride="carousel">
<ol class="carousel-indicators">
<li data-target="#myCarouseldp" data-slide-to="0" class="active"></li>
<li data-target="#myCarouseldp" data-slide-to="1"></li>

</ol>

<div class="carousel-inner" role="listbox">
<div class="item active">
<img src="images/DP.jpg" alt="e" style="width:100%; height:320px;" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p>Olamilekan is the real guy</p>
</div>
</div>

<div class="item">
<img src="images/DP2.jpg" alt="a" style="width:100%; height:320px;" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p>Olamilekan is the real guy</p>
</div>
</div>

</div>

<a class="left carousel-control" href="#myCarouseldp" style="margin-left:0px; width:100px;" role="button" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left" style="margin-left:0px; width:50px" aria-hidden="true" ></span>
<span class="sr-only">Previous</span>
</a>
<a class="right carousel-control" href="#myCarouseldp" style="margin-right:0px; width:100px" role="button" data-slide="next">
<span class="glyphicon glyphicon-chevron-right" style="margin-left:-50px; width:50px" aria-hidden="true" ></span>
<span class="sr-only">Next</span>
</a>
</div></div>

       <p style="color:maroon; font-size:18px; font-family:Gisha;">DIPLOMAT ROOM</p>
                <div class="row">
                    <div class="col-md-8">
<p class="para">Diplomat rooms are equipped with a king size bed, spacious bathroom with separate shower, upgraded amenities and large media hub.
</p>
<p class="para">As well as complimentary Wi-Fi conection throughout the room, when you stay in a premier Diplomat room, you receive our complimentary suit pressing service 
    on arrival(for two pieces).
</p>
 <h5 style="font-family:Algerian">AMENITIES INCLUDED</h5>
    <span class="para"><strong>Bathroom</strong></span><br />
    <span class="para">Modern styled bathroom offering separate walk-in shower and marble bath, including luxury bathroom amenities</span>
        <br /><br />
      <span class="para"><strong>Connectivity</strong></span><br />
    <span class="para">Complimentary Wi-Fi and cable broadband access in the room and around the hotel</span>
        <br /><br />
     <span class="para"><strong>Room Technology</strong></span><br />
    <span class="para">Widescreen interactive HD LCD TV, DVD player on request, iPod/iPhone docking station and media hub</span>
      <br /><br />
     <span class="para"><strong>Additional Information</strong></span><br />
    <span class="para">Unlimited access to Wild Waterpark and a pristine beach, including complimentary shuttle service*</span>

                    </div>
                        <div class="col-md-4">
                            <h5 style="text-align:center; font-family:Algerian">ROOM FACTS</h5>
                            <span class="fact"><strong>Size</strong></span><br />
                            <span class="para">44 square meters</span>
                            <br /><hr style="margin:1px" />
                            <span class="fact"><strong>Room View</strong></span><br />
                            <span class="para">Offering panoramic views of the Lekki cityscape</span>
                            <br /><hr style="margin:1px" />
                            <span class="fact"><strong>Occupancy</strong></span><br />
                            <span class="para">2 Adults and 2 Children (below the age of 12 years) or 3 Adults and 1 Child</span>
                            <br /><hr style="margin:1px" />
                            <span class="fact"><strong>Bed Configuration</strong></span><br />
                            <span class="para">One king size bed</span>
                            <br /><hr style="margin:1px" />
                            <span class="fact"><strong>Additional Amenities</strong></span><br />
                            <span class="para">Coffee & tea making facilities</span><br />
                            <span class="para">Complementary newspaper</span><br />
                            <span class="para">In-room security safe</span><br />
                            <span class="para">Hairdryer</span><br />
                            <span class="para">Ironing facilities</span><br />
                            <span class="para">Baby cots available</span>
                    </div>
                </div>
<br />

<div style="background-color:black; height:auto;" class="form-group">
    <div style="background-color:gray">
        <span style="font-family:'Berlin Sans FB';font-size:larger; color:white">BOOK THE DIPLOMAT ROOM</span><span style="float:right; font-size:9px; font-weight:800; color:DarkOrange"><strong> Best Price<br />GUARANTEE</strong></span>
    </div>

     
    <div class="row" style="padding:5px;">
        <div class="col-md-2">
            <p style="color:wheat">Check in Date</p>
            <asp:TextBox runat="server" CssClass="form-control" OnTextChanged="txtcid2_TextChanged" placeholder="select option" ID="txtcid2"></asp:TextBox>
        </div>
        <div class="col-md-2">
            <p style="color:wheat">Check out Date</p>
            <asp:TextBox runat="server" CssClass="form-control" OnTextChanged="txtcod2_TextChanged" placeholder="select option" ID="txtcod2"></asp:TextBox>
        </div>

                        <asp:UpdatePanel runat="server">
                    <ContentTemplate>
        <div class="col-md-1">
         <p style="color:wheat">ROOMS</p>
            
            
            <asp:DropDownList runat="server" Width="100%"  CssClass="form-control" ID="cmbrno2" AutoPostBack="true" OnSelectedIndexChanged="cmbrno2_SelectedIndexChanged">
            <asp:ListItem Text="0" Value="0"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
            <asp:ListItem Text="4" Value="4"></asp:ListItem>
            <asp:ListItem Text="5" Value="5"></asp:ListItem>
            <asp:ListItem Text="6" Value="6"></asp:ListItem>
            <asp:ListItem Text="7" Value="7"></asp:ListItem>
            
        </asp:DropDownList>
        </div>
        <div class="col-md-2">
        <p style="color:wheat; text-align:center">ADULTS</p>

<div class="form-group">
    <div class="col-md-4">
        <span style="color:white">ROOM1</span>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Width="100%"  CssClass="form-control" ID="cmba1b">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
             
        </asp:DropDownList>
    </div>
    </div>

 <div class="form-group" >
    <div class="col-md-4">
        <asp:label runat="server" ForeColor="White" Visible="false"  id="lr2b">ROOM2</asp:label>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmba2b">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
        </asp:DropDownList>
    </div>
    </div>

<div class="form-group">
    <div class="col-md-4">
         <asp:label runat="server" ForeColor="White" Visible="false"  id="lr3b">ROOM3</asp:label>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmba3b">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
             
        </asp:DropDownList>
    </div>
    </div>

<div class="form-group">
    <div class="col-md-4">
         <asp:label runat="server" ForeColor="White" Visible="false"  id="lr4b">ROOM4</asp:label>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmba4b">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
        </asp:DropDownList>
    </div>
    </div>

<div class="form-group">
    <div class="col-md-4">
        <asp:label runat="server" ForeColor="White" Visible="false"  id="lr5b">ROOM5</asp:label>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmba5b">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
             
        </asp:DropDownList>
    </div>
    </div>

        </div>
        <div class="col-md-1 form-group">
        <p style="color:wheat">CHILDREN</p>
                        <asp:DropDownList runat="server" Width="100%"  CssClass="form-control" ID="cmbc1b">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmbc2b">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            </asp:DropDownList>

             <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmbc3b">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmbc4b">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmbc5b">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-md-4" style="padding-left:50px;">
            <br />
             <asp:Button ID="Button3" Width="60%" runat="server" BackColor="GoldenRod" Text="CHECK AVAILABILITY" CssClass="btn btn-primary" OnClick="Button3_Click"/>
            <br />
             <asp:Label ID="lblerror2" runat="server" ForeColor="HotPink"></asp:Label>
             <span onclick="return confirm('Are you sure to Book Diplomat?')">
             <asp:Button ID="booking2" Visible="false" Width="40%" runat="server" BackColor="SeaGreen" Text="BOOK Here" CssClass="btn btn-primary" OnClick="booking2_Click"/>
                 </span>
                          <div class="row">
                    <div class="col-md-6">
                        <asp:label runat="server" Visible="false" style="font-family:Britannic; font-size:20px; color:gray; font-weight:300; " id="ls2">1 DAY</asp:label><br />
                        
                    <a data-toggle="modal" data-target="#myModal" style="cursor:pointer"> <asp:label ID="sa2" runat="server" style=" font-size:large; font-weight:700; color:maroon">&#8358;&nbsp;<asp:Label runat="server" Visible="false" id="prs2" style="color:maroon; font-family:'Browallia New'; font-size:35px; font-weight:700;"></asp:Label></asp:label>
                     <asp:label runat="server" ID="sb2" style=" font-weight:700; font-size:large; color:maroon">US&nbsp;$&nbsp;<asp:Label runat="server" Visible="false" id="conts2" style="color:maroon; font-family:'Browallia New'; font-size:30px; font-weight:700;"></asp:Label></asp:label></a>
                    </div>
                    <div class="col-md-6">
                         <asp:label runat="server" Visible="false" style=" font-family:Britannic; font-size:20px; color:gray; font-weight:300;" id="lm2"></asp:label><br />
                        <a data-toggle="modal" data-target="#myModal" style="cursor:pointer"><asp:label runat="server" ID="sc2" style=" font-weight:700; font-size:large; color:maroon">&#8358;&nbsp;<asp:Label runat="server" Visible="false" id="prd2" style="color:maroon; font-family:'Browallia New'; font-size:35px; font-weight:700;"></asp:Label></asp:label>
                             <asp:label runat="server" ID="sd2" style=" font-weight:700; font-size:large; color:maroon">US&nbsp;$&nbsp;<asp:Label runat="server" Visible="false"  id="contd2" style="color:maroon; font-family:'Browallia New'; font-size:30px; font-weight:700;"></asp:Label></asp:label></a>
                            
                    </div>
                </div>
             <asp:Button ID="con2" Width="30%" runat="server" Text="Convert" CssClass="btn btn-primary" OnClick="Button3_Click"/>
             </div>
                        </ContentTemplate>
                </asp:UpdatePanel>
    </div>
</div>

               <br />
<hr style="width:100%; margin-bottom:0; margin-top:0;" />

               <%-- <h4>DIPLOMAT ROOM</h4>
                                           
        <h4>Business Class room amenities:</h4>
		<ul class="uw">
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Free high-speed, wireless internet access</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Gown</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Individual climate control</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>King-sized bed or twin beds</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Mini bar</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Open-plan bathroom with bath</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Safe</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Satellite television</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Separate shower</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Slippers</li>
             <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Tea and coffee provisions</li>
		</ul>
               <br />


                                <div class="row">
                    <div class="col-md-6">
                        <p style="font-family:Constantia; color:gray; font-weight:300; margin-bottom:-20px">SINGLE ROOM</p>
                        
                    <a data-toggle="modal" data-target="#myModal" style="cursor:pointer"> <h1 style=" font-weight:700; color:maroon">&#8358;&nbsp;<asp:Label runat="server" id="prs2" style="color:maroon; font-family:'Browallia New'; font-size:50px; font-weight:700;"></asp:Label></h1>
                     <h3 style=" font-weight:700; margin-top:-20px; color:maroon">US&nbsp;&euro;&nbsp;<asp:Label runat="server" id="conts2" style="color:maroon; font-family:'Browallia New'; font-size:30px; font-weight:700;"></asp:Label></h3></a>
                    </div>
                    <div class="col-md-6">
                         <p style="font-family:Constantia; color:gray; font-weight:300;margin-bottom:-20px">DOUBLE ROOM</p>
                        <a data-toggle="modal" data-target="#myModal" style="cursor:pointer"><h1 style=" font-weight:700; color:maroon">&#8358;&nbsp;<asp:Label runat="server" id="prd2" style="color:maroon; font-family:'Browallia New'; font-size:50px; font-weight:700;"></asp:Label></h1>
                             <h3 style=" font-weight:700; margin-top:-20px; color:maroon">US&nbsp;&euro;&nbsp;<asp:Label runat="server" id="contd2" style="color:maroon; font-family:'Browallia New'; font-size:30px; font-weight:700;"></asp:Label></h3></a>
                            
                    </div>
                </div>
                <hr />--%>



<h4 style="text-align:center; font-family:Aharoni; font-size:x-large">EXECUTIVE TOWER SUITE</h4>
                               <div class="container">
<br />
<div class="carousel slide" id="myCarouselex" data-ride="carousel">
<ol class="carousel-indicators">
<li data-target="#myCarouselex" data-slide-to="0" class="active"></li>
<li data-target="#myCarouselex" data-slide-to="1"></li>

</ol>

<div class="carousel-inner" role="listbox">
<div class="item active">
<img src="images/EX.jpg" alt="e" style="width:100%; height:320px;" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p>Olamilekan is the real guy</p>
</div>
</div>

<div class="item">
<img src="images/EX2.jpg" alt="a" style="width:100%; height:320px;" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p>Olamilekan is the real guy</p>
</div>
</div>

</div>

<a class="left carousel-control" href="#myCarouselex" style="margin-left:0px; width:100px;" role="button" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left" style="margin-left:0px; width:50px" aria-hidden="true" ></span>
<span class="sr-only">Previous</span>
</a>
<a class="right carousel-control" href="#myCarouselex" style="margin-right:0px; width:100px" role="button" data-slide="next">
<span class="glyphicon glyphicon-chevron-right" style="margin-left:-50px; width:50px" aria-hidden="true" ></span>
<span class="sr-only">Next</span>
</a>
</div></div>

       <p style="color:maroon; font-size:18px; font-family:Gisha;">EXECUTIVE TOWER SUITE</p>
                <div class="row">
                    <div class="col-md-8">
<p class="para">Our Executive Tower suite is sophisticated and flexible choice for the seasoned traveller. Situated on the hotel's upper floors,
    it invites you to settle into its ample space or connect to Deluxe room, Diplomat room, Club Junior Suite for a widened experience.
</p>
<p class="para">A dedicated work space allows you to do business with focus and in comfort. Enjoy the privacy and tranquillity of a separate sleeping 
    area as well as a dining table for entertaining or quiet savouring.
</p>
 <h5 style="font-family:Algerian">AMENITIES INCLUDED</h5>
    <span class="para"><strong>Bathroom</strong></span><br />
    <span class="para">Spacious Modern styled bathroom offering separate walk-in shower and marble bath, including luxury bathroom amenities, with separate guest bathroom</span>
        <br /><br />
      <span class="para"><strong>Connectivity</strong></span><br />
    <span class="para">Complimentary Wi-Fi and cable broadband access in the room and around the hotel</span>
        <br /><br />
     <span class="para"><strong>Room Technology</strong></span><br />
    <span class="para">46-inch Widescreen interactive HD LCD TV, DVD player on request, iPod/iPhone docking station and media hub</span>
      <br /><br />
     <span class="para"><strong>Additional Information</strong></span><br />
    <span class="para">Unlimited access to Wild Waterpark and a pristine beach, including complimentary shuttle service*</span>

                    </div>
                        <div class="col-md-4">
                            <h5 style="text-align:center; font-family:Algerian">ROOM FACTS</h5>
                            <span class="fact"><strong>Size</strong></span><br />
                            <span class="para">87 square meters</span>
                            <br /><hr style="margin:1px" />
                            <span class="fact"><strong>Room View</strong></span><br />
                            <span class="para">Offering panoramic views of the Lekki cityscape</span>
                            <br /><hr style="margin:1px" />
                            <span class="fact"><strong>Occupancy</strong></span><br />
                            <span class="para">2 Adults and 2 Children (below the age of 12 years) or 3 Adults and 1 Child</span>
                            <br /><hr style="margin:1px" />
                            <span class="fact"><strong>Bed Configuration</strong></span><br />
                            <span class="para">One king size bed</span>
                            <br /><hr style="margin:1px" />
                            <span class="fact"><strong>Additional Amenities</strong></span><br />
                            <span class="para">Coffee & tea making facilities</span><br />
                            <span class="para">Complementary newspaper</span><br />
                            <span class="para">In-room security safe</span><br />
                            <span class="para">Hairdryer</span><br />
                            <span class="para">Ironing facilities</span><br />
                            <span class="para">Baby cots available</span>
                    </div>
                </div>
<br />

<div style="background-color:black; height:auto;" class="form-group">
    <div style="background-color:gray">
        <span style="font-family:'Berlin Sans FB';font-size:larger; color:white">BOOK THE EXECUTIVE TOWER SUITE</span><span style="float:right; font-size:9px; font-weight:800; color:DarkOrange"><strong> Best Price<br />GUARANTEE</strong></span>
    </div>

     
    <div class="row" style="padding:5px;">
        <div class="col-md-2">
            <p style="color:wheat">Check in Date</p>
            <asp:TextBox runat="server" CssClass="form-control" OnTextChanged="txtcid3_TextChanged" placeholder="select option" ID="txtcid3"></asp:TextBox>
        </div>
        <div class="col-md-2">
            <p style="color:wheat">Check out Date</p>
            <asp:TextBox runat="server" CssClass="form-control" OnTextChanged="txtcod3_TextChanged" placeholder="select option" ID="txtcod3"></asp:TextBox>
        </div>
                        <asp:UpdatePanel runat="server">
                    <ContentTemplate>
        <div class="col-md-1">
         <p style="color:wheat">ROOMS</p>
            
            <asp:DropDownList runat="server" Width="100%"  CssClass="form-control" ID="cmbrno3" AutoPostBack="true" OnSelectedIndexChanged="cmbrno3_SelectedIndexChanged">
            <asp:ListItem Text="0" Value="0"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
            <asp:ListItem Text="4" Value="4"></asp:ListItem>
            <asp:ListItem Text="5" Value="5"></asp:ListItem>
            <asp:ListItem Text="6" Value="6"></asp:ListItem>
            <asp:ListItem Text="7" Value="7"></asp:ListItem>
            
        </asp:DropDownList>
        </div>
        <div class="col-md-2">
        <p style="color:wheat; text-align:center">ADULTS</p>

<div class="form-group">
    <div class="col-md-4">
        <span style="color:white">ROOM1</span>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Width="100%"  CssClass="form-control" ID="cmba1c">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
             
        </asp:DropDownList>
    </div>
    </div>

 <div class="form-group" >
    <div class="col-md-4">
        <asp:label runat="server" ForeColor="White" Visible="false"  id="lr2c">ROOM2</asp:label>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmba2c">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
        </asp:DropDownList>
    </div>
    </div>

<div class="form-group">
    <div class="col-md-4">
         <asp:label runat="server" ForeColor="White" Visible="false"  id="lr3c">ROOM3</asp:label>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmba3c">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
             
        </asp:DropDownList>
    </div>
    </div>

<div class="form-group">
    <div class="col-md-4">
         <asp:label runat="server" ForeColor="White" Visible="false"  id="lr4c">ROOM4</asp:label>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmba4c">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
        </asp:DropDownList>
    </div>
    </div>

<div class="form-group">
    <div class="col-md-4">
        <asp:label runat="server" ForeColor="White" Visible="false"  id="lr5c">ROOM5</asp:label>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmba5c">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
             
        </asp:DropDownList>
    </div>
    </div>

        </div>
        <div class="col-md-1 form-group">
        <p style="color:wheat">CHILDREN</p>
                        <asp:DropDownList runat="server" Width="100%"  CssClass="form-control" ID="cmbc1c">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmbc2c">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            </asp:DropDownList>

             <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmbc3c">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmbc4c">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmbc5c">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-md-4" style="padding-left:50px;">
            <br />
             <asp:Button ID="Button4" Width="60%" runat="server" BackColor="GoldenRod" Text="CHECK AVAILABILITY" CssClass="btn btn-primary" OnClick="Button4_Click"/>
            <br />
             <asp:Label ID="lblerror3" runat="server" ForeColor="HotPink"></asp:Label>
             <span onclick="return confirm('Are you sure to Book Executive Tower Suite?')">
             <asp:Button ID="booking3" Visible="false" Width="40%" runat="server" BackColor="SeaGreen" Text="BOOK Here" CssClass="btn btn-primary" OnClick="booking3_Click" />
                 </span>
             <div class="row">
                    <div class="col-md-6">
                        <asp:label runat="server" Visible="false" style="font-family:Britannic; font-size:20px; color:gray; font-weight:300; " id="ls3">1 DAY</asp:label><br />
                        
                    <a data-toggle="modal" data-target="#myModal" style="cursor:pointer"> <asp:label ID="sa3" runat="server" style=" font-size:large; font-weight:700; color:maroon">&#8358;&nbsp;<asp:Label runat="server" Visible="false" id="prs3" style="color:maroon; font-family:'Browallia New'; font-size:35px; font-weight:700;"></asp:Label></asp:label>
                     <asp:label runat="server" ID="sb3" style=" font-weight:700; font-size:large; color:maroon">US&nbsp;$&nbsp;<asp:Label runat="server" Visible="false" id="conts3" style="color:maroon; font-family:'Browallia New'; font-size:30px; font-weight:700;"></asp:Label></asp:label></a>
                    </div>
                    <div class="col-md-6">
                         <asp:label runat="server" Visible="false" style=" font-family:Britannic; font-size:20px; color:gray; font-weight:300;" id="lm3"></asp:label><br />
                        <a data-toggle="modal" data-target="#myModal" style="cursor:pointer"><asp:label runat="server" ID="sc3" style=" font-weight:700; font-size:large; color:maroon">&#8358;&nbsp;<asp:Label runat="server" Visible="false" id="prd3" style="color:maroon; font-family:'Browallia New'; font-size:35px; font-weight:700;"></asp:Label></asp:label>
                             <asp:label runat="server" ID="sd3" style=" font-weight:700; font-size:large; color:maroon">US&nbsp;$&nbsp;<asp:Label runat="server" Visible="false"  id="contd3" style="color:maroon; font-family:'Browallia New'; font-size:30px; font-weight:700;"></asp:Label></asp:label></a>
                            
                    </div>
                </div>
             <asp:Button ID="con3" Width="30%" runat="server" Text="Convert" CssClass="btn btn-primary" OnClick="Button4_Click"/>
        </div>
                        </ContentTemplate>
                </asp:UpdatePanel>
    </div>
</div>

               <br />
<hr style="width:100%; margin-bottom:0; margin-top:0;" />

                <%--<h4>EXECUTIVE TOWER SUITE</h4>
                                           
        <h4>Junior Suite amenities:</h4>
		<ul class="uw">
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Free high-speed, wireless internet access</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Gown</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Individual climate control</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>King-sized bed or twin beds</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Mini bar</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Open-plan bathroom with bath</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Safe</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Satellite television</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Separate shower</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Slippers</li>
             <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Tea and coffee provisions</li>
		</ul>
               <br />


                                <div class="row">
                    <div class="col-md-6">
                        <p style="font-family:Constantia; color:gray; font-weight:300; margin-bottom:-20px">SINGLE ROOM</p>
                        
                    <a data-toggle="modal" data-target="#myModal" style="cursor:pointer"> <h1 style=" font-weight:700; color:maroon">&#8358;&nbsp;<asp:Label runat="server" id="prs3" style="color:maroon; font-family:'Browallia New'; font-size:50px; font-weight:700;"></asp:Label></h1>
                     <h3 style=" font-weight:700; margin-top:-20px; color:maroon">US&nbsp;&euro;&nbsp;<asp:Label runat="server" id="conts3" style="color:maroon; font-family:'Browallia New'; font-size:30px; font-weight:700;"></asp:Label></h3></a>
                    </div>
                    <div class="col-md-6">
                         <p style="font-family:Constantia; color:gray; font-weight:300;margin-bottom:-20px">DOUBLE ROOM</p>
                        <a data-toggle="modal" data-target="#myModal" style="cursor:pointer"><h1 style=" font-weight:700; color:maroon">&#8358;&nbsp;<asp:Label runat="server" id="prd3" style="color:maroon; font-family:'Browallia New'; font-size:50px; font-weight:700;"></asp:Label></h1>
                             <h3 style=" font-weight:700; margin-top:-20px; color:maroon">US&nbsp;&euro;&nbsp;<asp:Label runat="server" id="contd3" style="color:maroon; font-family:'Browallia New'; font-size:30px; font-weight:700;"></asp:Label></h3></a>
                            
                    </div>
                </div>
                <hr />--%>



<h4 style="text-align:center; font-family:Aharoni; font-size:x-large">CLUB JUNIOR SUITE</h4>
                       <div class="container">
<br />
<div class="carousel slide" id="myCarouselcj" data-ride="carousel">
<ol class="carousel-indicators">
<li data-target="#myCarouselcj" data-slide-to="0" class="active"></li>
<li data-target="#myCarouselcj" data-slide-to="1"></li>
<li data-target="#myCarouselcj" data-slide-to="2"></li>

</ol>

<div class="carousel-inner" role="listbox">
<div class="item active">
<img src="images/CJ.jpg" alt="e" style="width:100%; height:320px;" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p>Olamilekan is the real guy</p>
</div>
</div>

<div class="item">
<img src="images/CJ2.jpg" alt="a" style="width:100%; height:320px;" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p>Olamilekan is the real guy</p>
</div>
</div>

    <div class="item">
<img src="images/CJ3.jpg" alt="a" style="width:100%; height:320px;" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p>Olamilekan is the real guy</p>
</div>
</div>

</div>

<a class="left carousel-control" href="#myCarouselcj" style="margin-left:0px; width:100px;" role="button" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left" style="margin-left:0px; width:50px" aria-hidden="true" ></span>
<span class="sr-only">Previous</span>
</a>
<a class="right carousel-control" href="#myCarouselcj" style="margin-right:0px; width:100px" role="button" data-slide="next">
<span class="glyphicon glyphicon-chevron-right" style="margin-left:-50px; width:50px" aria-hidden="true" ></span>
<span class="sr-only">Next</span>
</a>
</div></div>

       <p style="color:maroon; font-size:18px; font-family:Gisha;">CLUB JUNIOR SUITE</p>
                <div class="row">
                    <div class="col-md-8">
<p class="para">Our Club Junior Suites are thoughtfully designed to accommodate your every mood. With a dazzling skyline view, you will enjoy 
    the comfort of divided sitting and sleeping areas. Samsung smart LED TV screens give your entertainment a sophisticated modern edge while 
    you enjoy the complimentary refreshments. A large desk allows you to focus on business until taking a break with Club Executive Lounge access.
</p>

 <h5 style="font-family:Algerian">AMENITIES INCLUDED</h5>
    <span class="para"><strong>Bathroom</strong></span><br />
    <span class="para">Modern styled bathroom offering separate walk-in shower and marble bath, including luxury bathroom amenities, with separate guest bathroom</span>
        <br /><br />
      <span class="para"><strong>Connectivity</strong></span><br />
    <span class="para">Complimentary Wi-Fi and cable broadband access in the room and around the hotel</span>
        <br /><br />
     <span class="para"><strong>Room Technology</strong></span><br />
    <span class="para">Samsung Smart LED TV, DVD player, iPod/iPhone docking station and media hub</span>
      <br /><br />
     <span class="para"><strong>Additional Information</strong></span><br />
    <span class="para">Unlimited access to Wild Waterpark and a pristine beach, including complimentary shuttle service*</span>

                    </div>
                        <div class="col-md-4">
                            <h5 style="text-align:center; font-family:Algerian">ROOM FACTS</h5>
                            <span class="fact"><strong>Size</strong></span><br />
                            <span class="para">63 square meters</span>
                            <br /><hr style="margin:1px" />
                            <span class="fact"><strong>Room View</strong></span><br />
                            <span class="para">Offering panoramic views of the Lekki cityscape</span>
                            <br /><hr style="margin:1px" />
                            <span class="fact"><strong>Occupancy</strong></span><br />
                            <span class="para">2 Adults and 2 Children (below the age of 12 years) or 3 Adults and 1 Child</span>
                            <br /><hr style="margin:1px" />
                            <span class="fact"><strong>Bed Configuration</strong></span><br />
                            <span class="para">One king size bed</span>
                            <br /><hr style="margin:1px" />
                            <span class="fact"><strong>Additional Amenities</strong></span><br />
                            <span class="para">Coffee & tea making facilities</span><br />
                            <span class="para">Complementary newspaper</span><br />
                            <span class="para">In-room security safe</span><br />
                            <span class="para">Hairdryer</span><br />
                            <span class="para">Ironing facilities</span><br />
                            <span class="para">Baby cots available</span>
                    </div>
                </div>
<br />

<div style="background-color:black; height:auto;" class="form-group">
    <div style="background-color:gray">
        <span style="font-family:'Berlin Sans FB';font-size:larger; color:white">BOOK THE CLUB JUNIOR SUITE</span><span style="float:right; font-size:9px; font-weight:800; color:DarkOrange"><strong> Best Price<br />GUARANTEE</strong></span>
    </div>

     
    <div class="row" style="padding:5px;">
        <div class="col-md-2">
            <p style="color:wheat">Check in Date</p>
            <asp:TextBox runat="server" CssClass="form-control" OnTextChanged="txtcid4_TextChanged" placeholder="select option" ID="txtcid4"></asp:TextBox>
        </div>
        <div class="col-md-2">
            <p style="color:wheat">Check out Date</p>
            <asp:TextBox runat="server" CssClass="form-control" OnTextChanged="txtcod4_TextChanged" placeholder="select option" ID="txtcod4"></asp:TextBox>
        </div>
                        <asp:UpdatePanel runat="server">
                    <ContentTemplate>
        <div class="col-md-1">
         <p style="color:wheat">ROOMS</p>
            
            <asp:DropDownList runat="server" Width="100%"  CssClass="form-control" ID="cmbrno4" AutoPostBack="true" OnSelectedIndexChanged="cmbrno4_SelectedIndexChanged">
            <asp:ListItem Text="0" Value="0"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
            <asp:ListItem Text="4" Value="4"></asp:ListItem>
            <asp:ListItem Text="5" Value="5"></asp:ListItem>
            <asp:ListItem Text="6" Value="6"></asp:ListItem>
            <asp:ListItem Text="7" Value="7"></asp:ListItem>
            
        </asp:DropDownList>
        </div>
        <div class="col-md-2">
        <p style="color:wheat; text-align:center">ADULTS</p>

<div class="form-group">
    <div class="col-md-4">
        <span style="color:white">ROOM1</span>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Width="100%"  CssClass="form-control" ID="cmba1d">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
             
        </asp:DropDownList>
    </div>
    </div>

 <div class="form-group" >
    <div class="col-md-4">
        <asp:label runat="server" ForeColor="White" Visible="false"  id="lr2d">ROOM2</asp:label>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmba2d">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
        </asp:DropDownList>
    </div>
    </div>

<div class="form-group">
    <div class="col-md-4">
         <asp:label runat="server" ForeColor="White" Visible="false"  id="lr3d">ROOM3</asp:label>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmba3d">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
             
        </asp:DropDownList>
    </div>
    </div>

<div class="form-group">
    <div class="col-md-4">
         <asp:label runat="server" ForeColor="White" Visible="false"  id="lr4d">ROOM4</asp:label>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmba4d">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
        </asp:DropDownList>
    </div>
    </div>

<div class="form-group">
    <div class="col-md-4">
        <asp:label runat="server" ForeColor="White" Visible="false"  id="lr5d">ROOM5</asp:label>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmba5d">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
            
             
        </asp:DropDownList>
    </div>
    </div>

        </div>
        <div class="col-md-1 form-group">
        <p style="color:wheat">CHILDREN</p>
                        <asp:DropDownList runat="server" Width="100%"  CssClass="form-control" ID="cmbc1d">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmbc2d">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            </asp:DropDownList>

             <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmbc3d">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmbc4d">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmbc5d">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-md-4" style="padding-left:50px;">
            <br />
             <asp:Button ID="Button5" Width="60%" runat="server" BackColor="GoldenRod" Text="CHECK AVAILABILITY" CssClass="btn btn-primary" OnClick="Button5_Click"/>
            <br />
             <asp:Label ID="lblerror4" runat="server" ForeColor="HotPink"></asp:Label>
             <span onclick="return confirm('Are you sure to Book CLUB JUNIOR SUITE?')">
             <asp:Button ID="booking4" Visible="false" Width="40%" runat="server" BackColor="SeaGreen" Text="BOOK Here" CssClass="btn btn-primary" OnClick="booking4_Click"/>
                 </span>
        <div class="row">
                    <div class="col-md-6">
                        <asp:label runat="server" Visible="false" style="font-family:Britannic; font-size:20px; color:gray; font-weight:300; " id="ls4">1 DAY</asp:label><br />
                        
                    <a data-toggle="modal" data-target="#myModal" style="cursor:pointer"> <asp:label ID="sa4" runat="server" style=" font-size:large; font-weight:700; color:maroon">&#8358;&nbsp;<asp:Label runat="server" Visible="false" id="prs4" style="color:maroon; font-family:'Browallia New'; font-size:35px; font-weight:700;"></asp:Label></asp:label>
                     <asp:label runat="server" ID="sb4" style=" font-weight:700; font-size:large; color:maroon">US&nbsp;$&nbsp;<asp:Label runat="server" Visible="false" id="conts4" style="color:maroon; font-family:'Browallia New'; font-size:30px; font-weight:700;"></asp:Label></asp:label></a>
                    </div>
                    <div class="col-md-6">
                         <asp:label runat="server" Visible="false" style=" font-family:Britannic; font-size:20px; color:gray; font-weight:300;" id="lm4"></asp:label><br />
                        <a data-toggle="modal" data-target="#myModal" style="cursor:pointer"><asp:label runat="server" ID="sc4" style=" font-weight:700; font-size:large; color:maroon">&#8358;&nbsp;<asp:Label runat="server" Visible="false" id="prd4" style="color:maroon; font-family:'Browallia New'; font-size:35px; font-weight:700;"></asp:Label></asp:label>
                             <asp:label runat="server" ID="sd4" style=" font-weight:700; font-size:large; color:maroon">US&nbsp;$&nbsp;<asp:Label runat="server" Visible="false"  id="contd4" style="color:maroon; font-family:'Browallia New'; font-size:30px; font-weight:700;"></asp:Label></asp:label></a>
                            
                    </div>
                </div>
             <asp:Button ID="con4" Width="30%" runat="server" Text="Convert" CssClass="btn btn-primary" OnClick="Button5_Click"/>
             </div>
</ContentTemplate>
                </asp:UpdatePanel>
    </div>
</div>

               <br />
<hr style="width:100%; margin-bottom:0; margin-top:0;" />

              <%--  <h4>CLUB JUNIOR SUITE</h4>
                                           
        <h4>1 Bedroom Suite amenities:</h4>
		<ul class="uw">
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Free high-speed, wireless internet access</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Gown</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Individual climate control</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>King-sized bed or twin beds</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Mini bar</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Open-plan bathroom with bath</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Safe</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Satellite television</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Separate shower</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Slippers</li>
             <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Tea and coffee provisions</li>
		</ul>
               <br />


                                <div class="row">
                    <div class="col-md-6">
                        <p style="font-family:Constantia; color:gray; font-weight:300; margin-bottom:-20px">SINGLE ROOM</p>
                        
                    <a data-toggle="modal" data-target="#myModal" style="cursor:pointer"> <h1 style=" font-weight:700; color:maroon">&#8358;&nbsp;<asp:Label runat="server" id="prs4" style="color:maroon; font-family:'Browallia New'; font-size:50px; font-weight:700;"></asp:Label></h1>
                     <h3 style=" font-weight:700; margin-top:-20px; color:maroon">US&nbsp;&euro;&nbsp;<asp:Label runat="server" id="conts4" style="color:maroon; font-family:'Browallia New'; font-size:30px; font-weight:700;"></asp:Label></h3></a>
                    </div>
                    <div class="col-md-6">
                         <p style="font-family:Constantia; color:gray; font-weight:300;margin-bottom:-20px">DOUBLE ROOM</p>
                        <a data-toggle="modal" data-target="#myModal" style="cursor:pointer"><h1 style=" font-weight:700; color:maroon">&#8358;&nbsp;<asp:Label runat="server" id="prd4" style="color:maroon; font-family:'Browallia New'; font-size:50px; font-weight:700;"></asp:Label></h1>
                             <h3 style=" font-weight:700; margin-top:-20px; color:maroon">US&nbsp;&euro;&nbsp;<asp:Label runat="server" id="contd4" style="color:maroon; font-family:'Browallia New'; font-size:30px; font-weight:700;"></asp:Label></h3></a>
                            
                    </div>
                </div>
                <hr />--%>

<h4 style="text-align:center; font-family:Aharoni; font-size:x-large">PRESIDENTIAL SUITE</h4>
                       <div class="container">
<br />
<div class="carousel slide" id="myCarouselpr" data-ride="carousel">
<ol class="carousel-indicators">
<li data-target="#myCarouselpr" data-slide-to="0" class="active"></li>
<li data-target="#myCarouselpr" data-slide-to="1"></li>
<li data-target="#myCarouselpr" data-slide-to="2"></li>
 <li data-target="#myCarouselpr" data-slide-to="3"></li>
 <li data-target="#myCarouselpr" data-slide-to="4"></li>

</ol>

<div class="carousel-inner" role="listbox">
<div class="item active">
<img src="images/PR.jpg" alt="e" style="width:100%; height:320px;" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p>Olamilekan is the real guy</p>
</div>
</div>

<div class="item">
<img src="images/PR2.jpg" alt="a" style="width:100%; height:320px;" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p>Olamilekan is the real guy</p>
</div>
</div>

    <div class="item">
<img src="images/PR3.jpg" alt="a" style="width:100%; height:320px;" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p>Olamilekan is the real guy</p>
</div>
</div>

    <div class="item">
<img src="images/PR4.jpg" alt="a" style="width:100%; height:320px;" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p>Olamilekan is the real guy</p>
</div>
</div>

    <div class="item">
<img src="images/PR5.jpg" alt="a" style="width:100%; height:320px;" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p>Olamilekan is the real guy</p>
</div>
</div>

</div>

<a class="left carousel-control" href="#myCarouselpr" style="margin-left:0px; width:100px;" role="button" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left" style="margin-left:0px; width:50px" aria-hidden="true" ></span>
<span class="sr-only">Previous</span>
</a>
<a class="right carousel-control" href="#myCarouselpr" style="margin-right:0px; width:100px" role="button" data-slide="next">
<span class="glyphicon glyphicon-chevron-right" style="margin-left:-50px; width:50px" aria-hidden="true" ></span>
<span class="sr-only">Next</span>
</a>

</div></div>

       <p style="color:maroon; font-size:18px; font-family:Gisha;">PRESIDENTIAL SUITE</p>
                <div class="row">
                    <div class="col-md-8">
<p class="para">Our Presidential suites evoke high expectations and promise to exceed them, offering three design types: Modern Scandinavian, 
    Louis XVI and Versace inspired. Luxuriate in Lavish space, your needs attended to with personalized butler service. Work, dine or simply 
    unwind in sumptuous and dedicated areas, with stunning views as your backdrop. Two bedrooms afford you ultimate privacy while jacuzzis relax and 
    revive you.
</p>

 <h5 style="font-family:Algerian">AMENITIES INCLUDED</h5>
    <span class="para"><strong>Bathroom</strong></span><br />
    <span class="para">Grand and spacious en-suite bathrooms offering separate walk-in showers and jacuzzi baths, including luxury bathroom amenities</span>
        <br /><br />
      <span class="para"><strong>Connectivity</strong></span><br />
    <span class="para">Complimentary Wi-Fi and cable broadband access in the room and around the hotel</span>
        <br /><br />
     <span class="para"><strong>Room Technology</strong></span><br />
    <span class="para">46-inch Widescreen interactive HD LCD TV, DVD player, iPod/iPhone docking station and media hub</span>
      <br /><br />
     <span class="para"><strong>Additional Information</strong></span><br />
    <span class="para">Unlimited access to Wild Waterpark and a pristine beach, including complimentary shuttle service*</span>

                    </div>
                        <div class="col-md-4">
                            <h5 style="text-align:center; font-family:Algerian">ROOM FACTS</h5>
                            <span class="fact"><strong>Size</strong></span><br />
                            <span class="para">225 square meters</span>
                            <br /><hr style="margin:1px" />
                            <span class="fact"><strong>Room View</strong></span><br />
                            <span class="para">Offering panoramic views of the Lekki cityscape</span>
                            <br /><hr style="margin:1px" />
                            <span class="fact"><strong>Occupancy</strong></span><br />
                            <span class="para">4 Adults and 2 Children (below the age of 12 years)</span>
                            <br /><hr style="margin:1px" />
                            <span class="fact"><strong>Bed Configuration</strong></span><br />
                            <span class="para">One king bedroom and two Queen beds</span>
                            <br /><hr style="margin:1px" />
                            <span class="fact"><strong>Additional Amenities</strong></span><br />
                            <span class="para">Coffee & tea making facilities</span><br />
                            <span class="para">Complementary newspaper</span><br />
                            <span class="para">In-room security safe</span><br />
                            <span class="para">Hairdryer</span><br />
                            <span class="para">Ironing facilities</span><br />
                            <span class="para">Baby cots available</span>
                    </div>
                </div>
<br />

<div style="background-color:black; height:auto;" class="form-group">
    <div style="background-color:gray">
        <span style="font-family:'Berlin Sans FB';font-size:larger; color:white">BOOK THE PRESIDENTIAL SUITE</span><span style="float:right; font-size:9px; font-weight:800; color:DarkOrange"><strong> Best Price<br />GUARANTEE</strong></span>
    </div>

     
    <div class="row" style="padding:5px;">
        <div class="col-md-2">
            <p style="color:wheat">Check in Date</p>
            <asp:TextBox runat="server" CssClass="form-control" OnTextChanged="txtcid5_TextChanged" placeholder="select option" ID="txtcid5"></asp:TextBox>
        </div>
        <div class="col-md-2">
            <p style="color:wheat">Check out Date</p>
            <asp:TextBox runat="server" CssClass="form-control" OnTextChanged="txtcod5_TextChanged" placeholder="select option" ID="txtcod5"></asp:TextBox>
        </div>
                <asp:UpdatePanel runat="server">
                    <ContentTemplate>
        <div class="col-md-1">
         <p style="color:wheat">ROOMS</p>
            
            <asp:DropDownList runat="server" Width="100%"  CssClass="form-control" ID="cmbrno5" AutoPostBack="true" OnSelectedIndexChanged="cmbrno5_SelectedIndexChanged">
            <asp:ListItem Text="0" Value="0"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
            <asp:ListItem Text="4" Value="4"></asp:ListItem>
            <asp:ListItem Text="5" Value="5"></asp:ListItem>
            <asp:ListItem Text="6" Value="6"></asp:ListItem>
            <asp:ListItem Text="7" Value="7"></asp:ListItem>
            
        </asp:DropDownList>
        </div>
        <div class="col-md-2">
        <p style="color:wheat; text-align:center">ADULTS</p>

<div class="form-group">
    <div class="col-md-4">
        <span style="color:white">ROOM1</span>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Width="100%"  CssClass="form-control" ID="cmba1e">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
            <asp:ListItem Text="4" Value="4"></asp:ListItem>
             
        </asp:DropDownList>
    </div>
    </div>

 <div class="form-group" >
    <div class="col-md-4">
        <asp:label runat="server" ForeColor="White" Visible="false"  id="lr2e">ROOM2</asp:label>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmba2e">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
            <asp:ListItem Text="4" Value="4"></asp:ListItem>
        </asp:DropDownList>
    </div>
    </div>

<div class="form-group">
    <div class="col-md-4">
         <asp:label runat="server" ForeColor="White" Visible="false"  id="lr3e">ROOM3</asp:label>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmba3e">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
            <asp:ListItem Text="4" Value="4"></asp:ListItem> 
        </asp:DropDownList>
    </div>
    </div>

<div class="form-group">
    <div class="col-md-4">
         <asp:label runat="server" ForeColor="White" Visible="false"  id="lr4e">ROOM4</asp:label>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmba4e">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
            <asp:ListItem Text="4" Value="3"></asp:ListItem>
        </asp:DropDownList>
    </div>
    </div>

<div class="form-group">
    <div class="col-md-4">
        <asp:label runat="server" ForeColor="White" Visible="false"  id="lr5e">ROOM5</asp:label>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmba5e">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
            <asp:ListItem Text="4" Value="4"></asp:ListItem>
             
        </asp:DropDownList>
    </div>
    </div>

        </div>
        <div class="col-md-1 form-group">
        <p style="color:wheat">CHILDREN</p>
                        <asp:DropDownList runat="server" Width="100%"  CssClass="form-control" ID="cmbc1e">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmbc2e">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            </asp:DropDownList>

             <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmbc3e">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmbc4e">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmbc5e">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-md-4" style="padding-left:50px;">
            <br />
             <asp:Button ID="Button6" Width="60%" runat="server" BackColor="GoldenRod" Text="CHECK AVAILABILITY" CssClass="btn btn-primary" OnClick="Button6_Click"/>
            <br />
             <asp:Label ID="lblerror5" runat="server" ForeColor="HotPink"></asp:Label>
             <span onclick="return confirm('Are you sure to Book PRESIDENTIAL SUITE?')">
             <asp:Button ID="booking5" Visible="false" Width="40%" runat="server" BackColor="SeaGreen" Text="BOOK Here" CssClass="btn btn-primary" OnClick="booking5_Click" />
                 </span>
         <div class="row">
                    <div class="col-md-6">
                        <asp:label runat="server" Visible="false" style="font-family:Britannic; font-size:20px; color:gray; font-weight:300; " id="ls5">1 DAY</asp:label><br />
                        
                    <a data-toggle="modal" data-target="#myModal" style="cursor:pointer"> <asp:label ID="sa5" runat="server" style=" font-size:large; font-weight:700; color:maroon">&#8358;&nbsp;<asp:Label runat="server" Visible="false" id="prs5" style="color:maroon; font-family:'Browallia New'; font-size:35px; font-weight:700;"></asp:Label></asp:label>
                     <asp:label runat="server" ID="sb5" style=" font-weight:700; font-size:large; color:maroon">US&nbsp;$&nbsp;<asp:Label runat="server" Visible="false" id="conts5" style="color:maroon; font-family:'Browallia New'; font-size:30px; font-weight:700;"></asp:Label></asp:label></a>
                    </div>
                    <div class="col-md-6">
                         <asp:label runat="server" Visible="false" style=" font-family:Britannic; font-size:20px; color:gray; font-weight:300;" id="lm5"></asp:label><br />
                        <a data-toggle="modal" data-target="#myModal" style="cursor:pointer"><asp:label runat="server" ID="sc5" style=" font-weight:700; font-size:large; color:maroon">&#8358;&nbsp;<asp:Label runat="server" Visible="false" id="prd5" style="color:maroon; font-family:'Browallia New'; font-size:35px; font-weight:700;"></asp:Label></asp:label>
                             <asp:label runat="server" ID="sd5" style=" font-weight:700; font-size:large; color:maroon">US&nbsp;$&nbsp;<asp:Label runat="server" Visible="false"  id="contd5" style="color:maroon; font-family:'Browallia New'; font-size:30px; font-weight:700;"></asp:Label></asp:label></a>
                            
                    </div>
                </div>
             <asp:Button ID="con5" Width="30%" runat="server" Text="Convert" CssClass="btn btn-primary" OnClick="Button6_Click"/>
        </div>
</ContentTemplate>
                </asp:UpdatePanel>
    </div>
</div>

               <br />
<hr style="width:100%; margin-bottom:0; margin-top:0;" />

               <%-- <h4>PRESIDENTIAL SUITE</h4>
                                           
        <h4>1 Bedroom Suite amenities:</h4>
		<ul class="uw">
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Free high-speed, wireless internet access</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Gown</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Individual climate control</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>King-sized bed or twin beds</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Mini bar</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Open-plan bathroom with bath</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Safe</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Satellite television</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Separate shower</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Slippers</li>
             <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Tea and coffee provisions</li>
		</ul>
               <br />


                                <div class="row">
                    <div class="col-md-6">
                        <p style="font-family:Constantia; color:gray; font-weight:300; margin-bottom:-20px">SINGLE ROOM</p>
                        
                    <a data-toggle="modal" data-target="#myModal" style="cursor:pointer"> <h1 style=" font-weight:700; color:maroon">&#8358;&nbsp;<asp:Label runat="server" id="prs5" style="color:maroon; font-family:'Browallia New'; font-size:50px; font-weight:700;"></asp:Label></h1>
                     <h3 style=" font-weight:700; margin-top:-20px; color:maroon">US&nbsp;&euro;&nbsp;<asp:Label runat="server" id="conts5" style="color:maroon; font-family:'Browallia New'; font-size:30px; font-weight:700;"></asp:Label></h3></a>
                    </div>
                    <div class="col-md-6">
                         <p style="font-family:Constantia; color:gray; font-weight:300;margin-bottom:-20px">DOUBLE ROOM</p>
                        <a data-toggle="modal" data-target="#myModal" style="cursor:pointer"><h1 style=" font-weight:700; color:maroon">&#8358;&nbsp;<asp:Label runat="server" id="prd5" style="color:maroon; font-family:'Browallia New'; font-size:50px; font-weight:700;"></asp:Label></h1>
                             <h3 style=" font-weight:700; margin-top:-20px; color:maroon">US&nbsp;&euro;&nbsp;<asp:Label runat="server" id="contd5" style="color:maroon; font-family:'Browallia New'; font-size:30px; font-weight:700;"></asp:Label></h3></a>
                            
                    </div>
                </div>
                <hr />--%>

<h4 style="text-align:center; font-family:Aharoni; font-size:x-large">ROYAL SUITE</h4>

 <div class="container">
<br />
<div class="carousel slide" id="myCarouselry" data-ride="carousel">
<ol class="carousel-indicators">
<li data-target="#myCarouselry" data-slide-to="0" class="active"></li>
<li data-target="#myCarouselry" data-slide-to="1"></li>
<li data-target="#myCarouselry" data-slide-to="2"></li>
 <li data-target="#myCarouselry" data-slide-to="3"></li>


</ol>

<div class="carousel-inner" role="listbox">
<div class="item active">
<img src="images/RY.jpg" alt="e" style="width:100%; height:320px;" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p>Olamilekan is the real guy</p>
</div>
</div>

<div class="item">
<img src="images/RY2.jpg" alt="a" style="width:100%; height:320px;" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p>Olamilekan is the real guy</p>
</div>
</div>

    <div class="item">
<img src="images/RY3.jpg" alt="a" style="width:100%; height:320px;" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p>Olamilekan is the real guy</p>
</div>
</div>

    <div class="item">
<img src="images/RY4.jpg" alt="a" style="width:100%; height:320px;" />
<div class="carousel-caption">
<h3>Asmovic</h3>
<p>Olamilekan is the real guy</p>
</div>
</div>



</div>

<a class="left carousel-control" href="#myCarouselry" style="margin-left:0px; width:100px;" role="button" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left" style="margin-left:0px; width:50px" aria-hidden="true" ></span>
<span class="sr-only">Previous</span>
</a>
<a class="right carousel-control" href="#myCarouselry" style="margin-right:0px; width:100px" role="button" data-slide="next">
<span class="glyphicon glyphicon-chevron-right" style="margin-left:-50px; width:50px" aria-hidden="true" ></span>
<span class="sr-only">Next</span>
</a>
</div></div>

       <p style="color:maroon; font-size:18px; font-family:Gisha;">ROYAL SUITE</p>
                <div class="row">
                    <div class="col-md-8">
<p class="para">Our Royal suite is truly palatial experience, with an array of features appointed over two sumptuous storeys. You decide your realm's 
    preferred ambiance, with true arabian styling. Framed by stunning city views, you will dedicated areas to relax, work or entertain with 
    private butler servicefor every need. Three bedrooms offer separate domains of private luxury, each with their own dressing room and jacuzzi.
</p>

 <h5 style="font-family:Algerian">AMENITIES INCLUDED</h5>
    <span class="para"><strong>Bathroom</strong></span><br />
    <span class="para">Grand and spacious en-suite bathrooms offering separate walk-in showers and jacuzzi baths, including luxury bathroom amenities</span>
        <br /><br />
      <span class="para"><strong>Connectivity</strong></span><br />
    <span class="para">Complimentary Wi-Fi and cable broadband access in the room and around the hotel</span>
        <br /><br />
     <span class="para"><strong>Room Technology</strong></span><br />
    <span class="para">46-inch Widescreen interactive HD LCD TV, DVD player, iPod/iPhone docking station and media hub</span>
      <br /><br />
     <span class="para"><strong>Additional Information</strong></span><br />
    <span class="para">Unlimited access to Wild Waterpark and a pristine beach, including complimentary shuttle service*</span>

                    </div>
                        <div class="col-md-4">
                            <h5 style="text-align:center; font-family:Algerian">ROOM FACTS</h5>
                            <span class="fact"><strong>Size</strong></span><br />
                            <span class="para">312 square meters</span>
                            <br /><hr style="margin:1px" />
                            <span class="fact"><strong>Room View</strong></span><br />
                            <span class="para">Offering panoramic views of the Lekki cityscape</span>
                            <br /><hr style="margin:1px" />
                            <span class="fact"><strong>Occupancy</strong></span><br />
                            <span class="para">6 Adults and 3 Children (below the age of 12 years)</span>
                            <br /><hr style="margin:1px" />
                            <span class="fact"><strong>Bed Configuration</strong></span><br />
                            <span class="para">One king bedroom and Two Queen beds</span>
                            <br /><hr style="margin:1px" />
                            <span class="fact"><strong>Additional Amenities</strong></span><br />
                            <span class="para">Coffee & tea making facilities</span><br />
                            <span class="para">Complementary newspaper</span><br />
                            <span class="para">In-room security safe</span><br />
                            <span class="para">Hairdryer</span><br />
                            <span class="para">Ironing facilities</span><br />
                            <span class="para">Baby cots available</span>
                    </div>
                </div>
<br />

<div style="background-color:black; height:auto;" class="form-group">
    <div style="background-color:gray">
        <span style="font-family:'Berlin Sans FB';font-size:larger; color:white">BOOK THE ROYAL SUITE</span><span style="float:right; font-size:9px; font-weight:800; color:DarkOrange"><strong> Best Price<br />GUARANTEE</strong></span>
    </div>

     
    <div class="row" style="padding:5px;">
        <div class="col-md-2">
            <p style="color:wheat">Check in Date</p>
            <asp:TextBox runat="server" CssClass="form-control" OnTextChanged="txtcid6_TextChanged" placeholder="select option" ID="txtcid6"></asp:TextBox>
        </div>
        <div class="col-md-2">
            <p style="color:wheat">Check out Date</p>
            <asp:TextBox runat="server" CssClass="form-control" OnTextChanged="txtcod6_TextChanged" placeholder="select option" ID="txtcod6"></asp:TextBox>
        </div>
                <asp:UpdatePanel runat="server">
                    <ContentTemplate>
        <div class="col-md-1">
         <p style="color:wheat">ROOMS</p>
            
            <asp:DropDownList runat="server" Width="100%"  CssClass="form-control" ID="cmbrno6" AutoPostBack="true" OnSelectedIndexChanged="cmbrno6_SelectedIndexChanged">
            <asp:ListItem Text="0" Value="0"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
            <asp:ListItem Text="4" Value="4"></asp:ListItem>
            <asp:ListItem Text="5" Value="5"></asp:ListItem>
            <asp:ListItem Text="6" Value="6"></asp:ListItem>
            <asp:ListItem Text="7" Value="7"></asp:ListItem>
            
        </asp:DropDownList>
        </div>
        <div class="col-md-2">
        <p style="color:wheat; text-align:center">ADULTS</p>

<div class="form-group">
    <div class="col-md-4">
        <span style="color:white">ROOM1</span>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Width="100%"  CssClass="form-control" ID="cmba1f">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
            <asp:ListItem Text="4" Value="4"></asp:ListItem>
            <asp:ListItem Text="5" Value="5"></asp:ListItem>
            <asp:ListItem Text="6" Value="6"></asp:ListItem>
             
        </asp:DropDownList>
    </div>
    </div>

 <div class="form-group" >
    <div class="col-md-4">
        <asp:label runat="server" ForeColor="White" Visible="false"  id="lr2f">ROOM2</asp:label>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmba2f">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
            <asp:ListItem Text="4" Value="4"></asp:ListItem>
            <asp:ListItem Text="5" Value="5"></asp:ListItem>
            <asp:ListItem Text="6" Value="6"></asp:ListItem>
        </asp:DropDownList>
    </div>
    </div>

<div class="form-group">
    <div class="col-md-4">
         <asp:label runat="server" ForeColor="White" Visible="false"  id="lr3f">ROOM3</asp:label>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmba3f">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
            <asp:ListItem Text="4" Value="4"></asp:ListItem>
            <asp:ListItem Text="5" Value="5"></asp:ListItem>
            <asp:ListItem Text="6" Value="6"></asp:ListItem> 
        </asp:DropDownList>
    </div>
    </div>

<div class="form-group">
    <div class="col-md-4">
         <asp:label runat="server" ForeColor="White" Visible="false"  id="lr4f">ROOM4</asp:label>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmba4f">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
            <asp:ListItem Text="4" Value="3"></asp:ListItem>
            <asp:ListItem Text="5" Value="5"></asp:ListItem>
            <asp:ListItem Text="6" Value="6"></asp:ListItem>
        </asp:DropDownList>
    </div>
    </div>

<div class="form-group">
    <div class="col-md-4">
        <asp:label runat="server" ForeColor="White" Visible="false"  id="lr5f">ROOM5</asp:label>
    </div>
    <div class="col-md-8">
            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmba5f">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
            <asp:ListItem Text="4" Value="4"></asp:ListItem>
            <asp:ListItem Text="5" Value="5"></asp:ListItem>
            <asp:ListItem Text="6" Value="6"></asp:ListItem>
             
        </asp:DropDownList>
    </div>
    </div>

        </div>
        <div class="col-md-1 form-group">
        <p style="color:wheat">CHILDREN</p>
                        <asp:DropDownList runat="server" Width="100%"  CssClass="form-control" ID="cmbc1f">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmbc2f">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
            </asp:DropDownList>

             <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmbc3f">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmbc4f">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList runat="server" Visible="false" Width="100%"  CssClass="form-control" ID="cmbc5f">
            <asp:ListItem Enabled="true" Text="0" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-md-4" style="padding-left:50px;">
            <br />
             <asp:Button ID="Button7" Width="60%" runat="server" BackColor="GoldenRod" Text="CHECK AVAILABILITY" CssClass="btn btn-primary" OnClick="Button7_Click"/>
            <br />
             <asp:Label ID="lblerror6" runat="server" ForeColor="HotPink"></asp:Label>
             <span onclick="return confirm('Are you sure to Book ROYAL SUITE?')">
             <asp:Button ID="booking6" Visible="false" Width="40%" runat="server" BackColor="SeaGreen" Text="BOOK Here" CssClass="btn btn-primary" OnClick="booking6_Click"/>
              </span>
                  <div class="row">
                    <div class="col-md-6">
                        <asp:label runat="server" Visible="false" style="font-family:Britannic; font-size:20px; color:gray; font-weight:300; " id="ls6">1 DAY</asp:label><br />
                        
                    <a data-toggle="modal" data-target="#myModal" style="cursor:pointer"> <asp:label ID="sa6" runat="server" style=" font-size:large; font-weight:700; color:maroon">&#8358;&nbsp;<asp:Label runat="server" Visible="false" id="prs6" style="color:maroon; font-family:'Browallia New'; font-size:35px; font-weight:700;"></asp:Label></asp:label>
                     <asp:label runat="server" ID="sb6" style=" font-weight:700; font-size:large; color:maroon">US&nbsp;$&nbsp;<asp:Label runat="server" Visible="false" id="conts6" style="color:maroon; font-family:'Browallia New'; font-size:30px; font-weight:700;"></asp:Label></asp:label></a>
                    </div>
                    <div class="col-md-6">
                         <asp:label runat="server" Visible="false" style=" font-family:Britannic; font-size:20px; color:gray; font-weight:300;" id="lm6"></asp:label><br />
                        <a data-toggle="modal" data-target="#myModal" style="cursor:pointer"><asp:label runat="server" ID="sc6" style=" font-weight:700; font-size:large; color:maroon">&#8358;&nbsp;<asp:Label runat="server" Visible="false" id="prd6" style="color:maroon; font-family:'Browallia New'; font-size:35px; font-weight:700;"></asp:Label></asp:label>
                             <asp:label runat="server" ID="sd6" style=" font-weight:700; font-size:large; color:maroon">US&nbsp;$&nbsp;<asp:Label runat="server" Visible="false"  id="contd6" style="color:maroon; font-family:'Browallia New'; font-size:30px; font-weight:700;"></asp:Label></asp:label></a>
                            
                    </div>
                </div>
             <asp:Button ID="con6" Width="30%" runat="server" Text="Convert" CssClass="btn btn-primary" OnClick="Button7_Click"/>
            
            <asp:Label runat="server" Visible="false" ID="tdinar">&nbsp;&nbsp;&#8363;</asp:Label>
            <asp:Label runat="server" Visible="false" ID="euro">&nbsp;&nbsp;&euro;</asp:Label>
            <asp:Label runat="server" Visible="false" ID="yen">&nbsp;&nbsp;&yen;</asp:Label>
            <asp:Label runat="server" Visible="false" ID="adollar">&nbsp;&nbsp;&#8371;</asp:Label>
            <asp:Label runat="server" Visible="false" ID="cdollar">&nbsp;&nbsp;&sect;</asp:Label>
            <asp:Label runat="server" Visible="false" ID="sfr">&nbsp;&nbsp;&fnof;</asp:Label>
            <asp:Label runat="server" Visible="false" ID="dkr">&nbsp;&nbsp;&#8365;</asp:Label>
            <asp:Label runat="server" Visible="false" ID="breal">&nbsp;&nbsp;&beta;</asp:Label>
            <asp:Label runat="server" Visible="false" ID="irup">&nbsp;&nbsp;&#8360;</asp:Label>
            <asp:Label runat="server" Visible="false" ID="cfa">&nbsp;&nbsp;&#8376;</asp:Label>
            <asp:Label runat="server" Visible="false" ID="ts">&nbsp;&nbsp;&#8366;</asp:Label>
            <asp:Label runat="server" Visible="false" ID="won">&nbsp;&nbsp;&#8361;</asp:Label>
            <asp:Label runat="server" Visible="false" ID="cedi">&nbsp;&nbsp;&#8373;</asp:Label>
        </div>
</ContentTemplate>
                </asp:UpdatePanel>
    </div>
</div>

               <br />
<hr style="width:100%; margin-bottom:0; margin-top:0;" />

               <%-- <h4>ROYAL SUITE</h4>
                                           
        <h4>1 Bedroom Suite amenities:</h4>
		<ul class="uw">
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Free high-speed, wireless internet access</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Gown</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Individual climate control</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>King-sized bed or twin beds</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Mini bar</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Open-plan bathroom with bath</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Safe</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Satellite television</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Separate shower</li>
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Slippers</li>
             <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Tea and coffee provisions</li>
		</ul>
               <br />


                                <div class="row">
                    <div class="col-md-6">
                        <p style="font-family:Constantia; color:gray; font-weight:300; margin-bottom:-20px">SINGLE ROOM</p>
                        
                    <a data-toggle="modal" data-target="#myModal" style="cursor:pointer"> <h1 style=" font-weight:700; color:maroon">&#8358;&nbsp;<asp:Label runat="server" id="prs6" style="color:maroon; font-family:'Browallia New'; font-size:50px; font-weight:700;"></asp:Label></h1>
                     <h3 style=" font-weight:700; margin-top:-20px; color:maroon">US&nbsp;&euro;&nbsp;<asp:Label runat="server" id="conts6" style="color:maroon; font-family:'Browallia New'; font-size:30px; font-weight:700;"></asp:Label></h3></a>
                    </div>
                    <div class="col-md-6">
                         <p style="font-family:Constantia; color:gray; font-weight:300;margin-bottom:-20px">DOUBLE ROOM</p>
                        <a data-toggle="modal" data-target="#myModal" style="cursor:pointer"><h1 style=" font-weight:700; color:maroon">&#8358;&nbsp;<asp:Label runat="server" id="prd6" style="color:maroon; font-family:'Browallia New'; font-size:50px; font-weight:700;"></asp:Label></h1>
                             <h3 style=" font-weight:700; margin-top:-20px; color:maroon">US&nbsp;&euro;&nbsp;<asp:Label runat="server" id="contd6" style="color:maroon; font-family:'Browallia New'; font-size:30px; font-weight:700;"></asp:Label></h3></a>
                            
                    </div>
                </div>
                <hr />--%>


            </div>
            <div id="menu3" class="tab-pane fade">
               
               <blockquote style="background-color:gray; border-radius:8px; border-color:maroon; border-left-width:15px;" >
		<p style="font-size:larger; font-weight:700; font-family:'Californian FB'; color:darkturquoise;">Living Spring Hotel Specials</p>
		
		</blockquote>
                <p style="font-size:medium; font-weight:600; font-family:Cambria; color:Sienna;">There are currently no specials for the Living Spring Hotel Specials</p>
            </div>

            <div id="menu4" class="tab-pane fade">
               
               <blockquote style="background-color:gray; border-radius:8px; border-color:maroon; border-left-width:15px;" >
		<p style="font-size:x-large; font-weight:700; font-family:Harrington; color:darkturquoise;">Guest Reviews</p>
		
		</blockquote>
               <h4 style="text-shadow:inherit; "><i>Share your personal review with us of your stay at this property.</i></h4>
                <hr />

               
                            <asp:UpdatePanel runat="server">
                    <ContentTemplate>
        
                 <div class="form-group">
    <asp:Label runat="server" ForeColor="Maroon" CssClass="col-md-3 control-label"><strong>Name</strong></asp:Label>
    <div class="col-md-9">
        <asp:TextBox runat="server" placeholder="Full Name" CssClass="form-control" ID="txtname"></asp:TextBox>

      <br />
    </div>
    </div>
 <div class="form-group">
    <asp:Label runat="server" ForeColor="Maroon" CssClass="col-md-3 control-label"><strong>Email</strong></asp:Label>
    <div class="col-md-9">
        <asp:TextBox runat="server" placeholder="Email Address" CssClass="form-control" ID="txtemail"></asp:TextBox>

       <br />
    </div>
    </div>

 <div class="form-group">
    <asp:Label runat="server" ForeColor="Maroon" CssClass="col-md-3 control-label"><strong>Contact Number</strong></asp:Label>
    <div class="col-md-9">
        <asp:TextBox runat="server" placeholder="Contact Number" CssClass="form-control" ID="txtnum"></asp:TextBox>

       <br />
    </div>
    </div>
                        </ContentTemplate></asp:UpdatePanel>

<%--                                <asp:UpdatePanel runat="server">
                    <ContentTemplate>--%>

 <div class="form-group">
    <asp:Label runat="server" ForeColor="Maroon" CssClass="col-md-3 control-label"><strong>Arrival Date</strong></asp:Label>
    <div class="col-md-9">
        <asp:TextBox runat="server" placeholder="Date of Stay / Arrival Date" CssClass="form-control" ID="txtdate"></asp:TextBox>

      <br />
    </div>
    </div>
<%--</ContentTemplate></asp:UpdatePanel>--%>

                                <asp:UpdatePanel runat="server">
                    <ContentTemplate>

 <div class="form-group">
    <asp:Label runat="server" ForeColor="Maroon" CssClass="col-md-3 control-label"><strong>Rating</strong></asp:Label>
    <div class="col-md-9">
        <asp:DropDownList runat="server" Width="40%" placeholder="Select Rating"  CssClass="form-control" ID="cmbrating">
            <asp:ListItem Enabled="true" Text="Select Rating" Value="-1"></asp:ListItem>
            <asp:ListItem Text="Bad" Value="Bad"></asp:ListItem>
            <asp:ListItem Text="Average" Value="Average"></asp:ListItem>
            <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
            <asp:ListItem Text="Very Good" Value="Very Good"></asp:ListItem>
            <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
            
        </asp:DropDownList>
     <br />
    </div>
    </div>

 <div class="form-group">
    <asp:Label runat="server" ForeColor="Maroon" CssClass="col-md-3 control-label"><strong>Your review</strong></asp:Label>
    <div class="col-md-9">
        <asp:TextBox runat="server" Width="40%" TextMode="MultiLine" placeholder="enter your review(minimum 200 characters)" CssClass="form-control" ID="txtreview"></asp:TextBox>
         <br />
        </div>
    </div>

  <div class="form-group">
                <div class="col-md-offset-3 col-md-9">
                     <asp:Label ID="lblsuccess" runat="server" CssClass="text-success"></asp:Label>
                  
<asp:Button ID="Button1" runat="server" Text="Submit review" CssClass="btn btn-warning" OnClick="Button1_Click" />
                  
                    </div>
      </div>
   
                        </ContentTemplate>
                </asp:UpdatePanel>
              
            </div>
           
             
             <div id="menu5" class="tab-pane fade">
                <h4>Star Rating</h4>
                 <p style="color:DarkSlateGrey">5 Star</p>
               <h4>Hotel Group(s)</h4>
            <ul class="uw">
            <li><span style="color:maroon"> &#9670;&nbsp;&nbsp;</span>Asmovic Luxury Int'l</li>
            
            </ul>
            </div>


            <br />
            <br />
          <h4 style="color:black">Need Help&#10067;</h4>
                <p style="color:DarkSlateGray ;">We would be more than happy to help you. Our team are at your service 24/7.</p>
                <h4 style=" font-weight:400; color:darkred"><span style="color:darkred"> &#9742;&nbsp;&#43;</span>2348131924727</h4>
                <h4 style=" font-weight:400; color:darkred"><a  style="color:darkred; text-decoration:none;" href="www.asmovic4ril@yahoo.com"><span  style="color:darkred" class="glyphicon-envelope"></span>&nbsp;Email for assistance</a></h4>
           
        </div>
         
    </div>

                   <div style="padding:20px; background-color:white; margin:15px; border-radius:5px;">
                    <h4 style="color:black">Why Book with us&#10067;</h4>
                      
      <%--<span class="glyphicon glyphicon-heart">dss</span>--%>
                  
<p style="color:grey; font-weight:500; font-stretch:expanded;"><span class="glyphicon glyphicon-phone"></span>Owner run with years of travel experience.</p><hr style="margin-top:-27px;" />
<p style="color:grey; font-weight:500; font-stretch:expanded;"><span class="glyphicon glyphicon-time"></span>Contactable 24 hours a day/7 days a week.</p><hr style="margin-top:-27px;" />
<p style="color:grey; font-weight:500; font-stretch:expanded;"><span class="glyphicon glyphicon-thumbs-up"></span>Authentic reviews from actual customers.</p><hr style="margin-top:-27px;" />
<p style="color:grey; font-weight:500; font-stretch:expanded;"><span class="glyphicon glyphicon-plane"></span>Trusted by the travel industry.</p><hr style="margin-top:-27px;" />
<%--<span class="glyphicon glyphicon-tower"></span>
<span class="glyphicon glyphicon-envelope"></span>
<span class="glyphicon glyphicon-ok-circle"></span>--%>
                </div>


    <div class="w3-container w3-teal">
<h1>Summer 2018</h1>
</div>

<div class="w3-row-padding w3-margin-top">

<div class="w3-third">
<div class="w3-card-2">
<img src="images/img_5terre.png" class="w3-hover-opacity w3-round-xlarge" style="width:100%">
<div class="w3-container">
<h5>5 Terre</h5>
</div>
</div>
</div>

<div class="w3-third">
<div class="w3-card-2">
<img src="images/img_monterosso.png" class="w3-hover-opacity w3-round-xlarge" style="width:100%">
<div class="w3-container">
<h5>Monterosso</h5>
</div>
</div>
</div>

<div class="w3-third">
<div class="w3-card-2">
<img src="images/img_vernazza.png" class="w3-hover-opacity w3-round-xlarge" style="width:100%">
<div class="w3-container">
<h5>Vernazza</h5>
</div>
</div>
</div>

</div>
<div class="w3-row-padding w3-margin-top">

<div class="w3-third">
<div class="w3-card-2">
<img src="images/img_manarola.png" class="w3-hover-opacity w3-round-xlarge" style="width:100%">
<div class="w3-container">
<h5>Manarola</h5>
</div>
</div>
</div>

<div class="w3-third">
<div class="w3-card-2">
<img src="images/img_corniglia.png" class="w3-hover-opacity w3-round-xlarge" style="width:100%">
<div class="w3-container">
<h5>Corniglia</h5>
</div>
</div>
</div>

<div class="w3-third">
<div class="w3-card-2">
<img src="images/img_riomaggiore.png" class="w3-hover-opacity w3-round-xlarge" style="width:100%">
<div class="w3-container">
<h5>Riomaggiore</h5>
</div>
</div>
</div>

</div>


    <div style="padding:20px; background-color:#708090; margin:15px; border-radius:5px;">
<h3 class="ftm">Mailing List</h3>
        <hr class="hrm"/>   
        <p style="color:white; font-weight:400; font-size:17px; font-family:'Monotype Corsiva';">Sign up for our mailing list to get latest updates and offers.</p>

        <asp:UpdatePanel runat="server">
            <ContentTemplate>
        <asp:TextBox runat="server" placeholder="your email" ID="txtnewsletter" CssClass="form-control"></asp:TextBox>
                        
<asp:Button ID="newsbutn" runat="server"  Text="Submit" CssClass="btn btn-success" OnClick="newsbutn_Click"/>
          <asp:Label ID="lblem" runat="server" ForeColor="White" CssClass="text-danger"></asp:Label>
      </ContentTemplate>
        </asp:UpdatePanel>

<h3 class="ftm">Useful Links</h3>
        <hr class="hrm" /> 
        <a runat="server" href="~/Contact" style="text-decoration:none"><p style="color:white; font-weight:400; font-size:17px; font-family:'Monotype Corsiva';">&#9658;&nbsp;Contact Us</p></a>
         <a runat="server" href="~/About" style="text-decoration:none"><p style="color:white; font-weight:400; font-size:17px; font-family:'Monotype Corsiva';">&#9658;&nbsp;About the Team</p></a>
         <p style="color:white; font-weight:400; font-size:17px; font-family:'Monotype Corsiva';">&#9658;&nbsp;Accreditations</p>

<h3 class="ftm">Legal</h3>
        <hr class="hrm"/> 
         <p style="color:white; font-weight:400; font-size:17px; font-family:'Monotype Corsiva';">&#9658;&nbsp;Terms & Conditions</p>
         <p style="color:white; font-weight:400; font-size:17px; font-family:'Monotype Corsiva';">&#9658;&nbsp;Legal Notices</p>
         <p style="color:white; font-weight:400; font-size:17px; font-family:'Monotype Corsiva';">&#9658;&nbsp;Privacy Policy</p>
         <p style="color:white; font-weight:400; font-size:17px; font-family:'Monotype Corsiva';">&#9658;&nbsp;Sitemap</p>

<h3 class="ftm">Follow Us</h3>
        <hr class="hrm"/> 
   <span><a target="_blank" data-toggle="tooltip" title="facebook" data-placement="top" href="http://www.facebook.com"><img src="images/fb.png" style="background-color:white; border-radius:12px;"/></a></span>
   <span><a target="_blank" data-toggle="tooltip" title="twitter" data-placement="top" href="http://www.twitter.com"><img src="images/tw.png" style="background-color:white; border-radius:12px;"/></a></span>
   <span><a target="_blank" data-toggle="tooltip" title="gmail" data-placement="top" href="http://www.gmail.com"><img src="images/gplus.png" style="background-color:white; border-radius:12px;"/></a></span>
   <span><a target="_blank" data-toggle="tooltip" title="pinterest" data-placement="top" href="http://www.pinterest.com"><img src="images/pin.png" style="background-color:white; border-radius:12px;"/></a></span>
   <span><a target="_blank" data-toggle="tooltip" title="Youtube" data-placement="right" href="http://www.youtube.com"><img src="images/YTNN.jpg" style="background-color:white; border-radius:7px;"/></a></span>

 
       
         </div>


            <style runat="server">
         .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
  
      
      height:550px;
	  }
        .uw li{
            color:gray;
               }
        .uw {
            list-style-type:none;
            margin-top:7px;
            margin-left:-22px;
        }

         p,li{
             
             color:white;
             font-weight:600;
             font-family:'Comic Sans MS';
             
         }
         h4{
             color:darkred;
         }
         
         h4,h3{
             
              font-weight:600;
         }
        #tnav {
             text-decoration:none;
             display:block;
             background-color:darkred;
             color:white;
             border-radius:4px;
             border-width:5px;
             border-color:white;
         }
        .hg:hover{
            text-decoration:none;

        }
             
      .para{
          color:gray
      }
      .fact{
          color:darkblue;
      }
        .glyphicon{
            
            color:darkred;
            font-size:15px;
            margin-right:-85px;
        }
        #home{
               
    background:url(images/holiday2.jpg);
    
    background-repeat: no-repeat;
    background-size:cover;
    animation:ease-in;
     }
   .ftm{
        color:#FFD700;
        font-weight:400;
        font-family:'Times New Roman';
   }  
   .hrm{
       margin-top:-8px;
     color:aliceblue;
   border-style:dotted;
   border-width:thin;
       }
   
   
        </style>

    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>

                     <script src="../Scripts/jquery-ui-1.12.1.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("[id$=txtcid]").datepicker(
            {
                dateFormat: 'dd/mm/yy'
            });
        $("[id$=txtcod]").datepicker(
    {
        dateFormat: 'dd/mm/yy'
    });

        $("[id$=txtcid2]").datepicker(
     {
         dateFormat: 'dd/mm/yy'
     });
        $("[id$=txtcod2]").datepicker(
    {
        dateFormat: 'dd/mm/yy'
    });

        $("[id$=txtcid3]").datepicker(
     {
         dateFormat: 'dd/mm/yy'
     });
        $("[id$=txtcod3]").datepicker(
    {
        dateFormat: 'dd/mm/yy'
    });

        $("[id$=txtcid4]").datepicker(
     {
         dateFormat: 'dd/mm/yy'
     });
        $("[id$=txtcod4]").datepicker(
    {
        dateFormat: 'dd/mm/yy'
    });

        $("[id$=txtcid5]").datepicker(
     {
         dateFormat: 'dd/mm/yy'
     });
        $("[id$=txtcod5]").datepicker(
    {
        dateFormat: 'dd/mm/yy'
    });

        $("[id$=txtcid6]").datepicker(
{
    dateFormat: 'dd/mm/yy'
});
        $("[id$=txtcod6]").datepicker(
    {
        dateFormat: 'dd/mm/yy'
    });

        $("[id$=txtdate]").datepicker(
{
    dateFormat: 'dd/mm/yy'
});



    });
</script>

</asp:Content>
