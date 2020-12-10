<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html> 
<html>

<head>
  <title>Home Page </title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />

    <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
  
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
    <style>
        .sir
{  float: right;
   width: 222px;
    background: #fc4f17;
    border: 2px solid #fc4f17 ;
  margin-top: 20px;
  margin-bottom: 10px;
            height: 400px;
        }
        .paperclip
{ float: right;
  position: relative; 
  z-index: 0;
  vertical-align: middle; 
  margin: -27px 0 -60px -30px;
            top: -9px;
            left: -168px;
            right: 168px;
            height: 84px;
        }
       
    </style>


    <link href="Img/style.css" rel="stylesheet" />
  <!-- modernizr enables HTML5 elements and feature detects -->
    <script src="js/modernizr-1.5.min.js"></script>



     
</head>

<body>
    <form id="form1" runat="server">



  <div id="main">
    
	<header>
	  
	  <div id="welcome">
	    <h2>HOSPITAL&nbsp; <asp:Label ID="Label1" runat="server" Text="MANAGMENT SYSTEM"></asp:Label> </h2>
	  </div><!--close welcome-->
        <br />
        <br />			  	
		 <nav>
	    <div id="menubar">
          <ul id="nav">
            <li>
                <asp:LinkButton ID="LinkButton9" runat="server" Font-Size="Medium" OnClick="LinkButton9_Click"> Add New Employee </asp:LinkButton></li>
            <li></li>
            <li><asp:LinkButton ID="LinkButton11" runat="server" Font-Size="Medium" OnClick="LinkButton3_Click">Pharmacy Admin</asp:LinkButton></li>
            <li>
                <asp:LinkButton ID="LinkButton6" runat="server" Font-Size="Medium" OnClick="LinkButton6_Click">Show Order Lab</asp:LinkButton></li>
            <li>
                <asp:LinkButton ID="LinkButton10" runat="server" Font-Size="Medium" OnClick="LinkButton10_Click">Log Out </asp:LinkButton>

            </li>
          </ul>
        </div><!--close menubar-->	
      </nav>
	</header>    
	
	<div id="site_content">		

      <div class="slideshow">
	    <ul class="slideshow">
          <li class="show">
              <img width="680" height="300" src="Img/Hospital-stuff.jpg" />  </li>
          <li>
              <img width="680" height="300" src="Img/h1.jpg" />
              </li>
        </ul> 
	  </div><!--close slideshow-->	
	
	  <div class="sidebar_container">       
          
		<div class="sidebar">
          <div class="sidebar_item">
              
           
                
              <div id ="cssmenu">
                  <ul>
<li class="active"> <h3><asp:Label ID="Label4" runat="server" Text="Admission Hospital" Font-Size="Large"></asp:Label></h3></li>
               <li ><asp:LinkButton ID="LinkButton1" runat="server" CssClass="la" Font-Size="Medium" OnClick="LinkButton1_Click1">Log In Hospital</asp:LinkButton></li>
                 <li><asp:LinkButton ID="LinkButton2" runat="server" CssClass="la" Font-Size="Medium" OnClick="LinkButton2_Click">Show Occupy Room</asp:LinkButton></li>
<li><asp:LinkButton ID="unocc" runat="server" CssClass="la" Font-Size="Medium" OnClick="unocc_Click"> UnOccupy Room</asp:LinkButton></li>
               
                  
                     <li> <br /> <br /></li>




                       <li>
                          <h3>
                              <asp:Label ID="Label7" runat="server" Text="Medical Equations" Font-Size="Large"></asp:Label>
                          </h3>
                      </li>
                      <li>
                          <asp:LinkButton ID="LinkButton7" runat="server" CssClass="la" Font-Size="Medium" OnClick="LinkButton7_Click">BMI</asp:LinkButton>
                      </li>
                      <li class="last">
                          <asp:LinkButton ID="LinkButton8" runat="server" CssClass="la" Font-Size="Medium" OnClick="LinkButton8_Click">ABL</asp:LinkButton>
                      </li>
		

                      <li>
                          <h3>
                              <asp:Label ID="Label5" runat="server" Text="Pharmacy" Font-Size="Large"></asp:Label>
                          </h3>
                      </li>
                      <li>
                          <asp:LinkButton ID="LinkButton3" runat="server" CssClass="la" Font-Size="Medium">Add new Betch</asp:LinkButton>
                      </li>
                      <li>
                          <asp:LinkButton ID="LinkButton4" runat="server" CssClass="la" Font-Size="Medium" OnClick="LinkButton4_Click">Add new Order</asp:LinkButton>
                      </li>
                       <li> <br /> <br /></li>
                      <li>
                          <h3>
                              <asp:Label ID="Label6" runat="server" Text="Report Lab History" Font-Size="Large"></asp:Label>
                          </h3>
                      </li>
                      <li>
                          <asp:LinkButton ID="LinkButton5" runat="server" CssClass="la" Font-Size="Medium" OnClick="LinkButton5_Click">Hematology Repot</asp:LinkButton>
                      </li>
                      <li>
                          <asp:LinkButton ID="LinkButton12" runat="server" CssClass="la" Font-Size="Medium" OnClick="LinkButton12_Click">Blood Group Repot</asp:LinkButton> 
                      </li>
                      <li>
                          <asp:LinkButton ID="LinkButton13" runat="server" CssClass="la" Font-Size="Medium" OnClick="LinkButton13_Click">Biochemistry Repot</asp:LinkButton> 
                      </li>
                     
                      </ul>
           
       
	   </div>
              </div>
            </div>
          </div>
        
         
	  <div id="content">
        
        <div class="content_item">
            &nbsp;<div class="sir">       
          
	
            <img src="css/style/paperclip.png" / class="paperclip">
                 <br/>
            <br />
            <br />
            <br />

                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>

                  </div>
            <br />
            <br />
		  <h1><asp:Label ID="Label2" runat="server" Text="Welcome       "></asp:Label>
          <asp:Label ID="Label3" runat="server" Text=""></asp:Label></h1> 


            <br/>
            <br />
            <br />
            <br />

          <p>
              <asp:Label ID="err" runat="server" Text="You do not have permission to access this page" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000" Visible="False"></asp:Label>  </p>   				  
		  
		  
		   <p> </p>
		  </div><!--close content_imagetext-->		  		  
		
		</div><!--close content_item-->
      </div><!--close content-->   
	
	</div><!--close site_content-->  	
  
    
  
  </div><!--close main-->
  
  <!-- javascript at the bottom for fast page loading -->
    <script src="js/jquery.min.js"></script>
    <script src="js/image_slide.js"></script>
        </form>
  
</body>
</html>
