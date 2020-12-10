<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPh.aspx.cs" Inherits="AdminPh" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
        <title>Pharmacy Admin</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="description" content="Slide Down Box Menu with jQuery and CSS3" />
        <meta name="keywords" content="jquery, css3, sliding, box, menu, cube, navigation, portfolio, thumbnails"/>
		<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
       
        <link href="css/style/style.css" rel="stylesheet" />
           <script type="text/javascript">
               var oldgridcolor;
               function SetMouseOver(element) {
                   oldgridcolor = element.style.backgroundColor;
                   element.style.backgroundColor = '#ffeb95';
                   element.style.cursor = 'pointer';
                   element.style.textDecoration = 'underline';
               }
               function SetMouseOut(element) {
                   element.style.backgroundColor = oldgridcolor;
                   element.style.textDecoration = 'none';

               }

    </script>
        <style>
			
			span.reference{
				position:fixed;
				left:10px;
				bottom:10px;
				font-size:12px;
			}
			span.reference a{
				color:#aaa;
				text-transform:uppercase;
				text-decoration:none;
				text-shadow:1px 1px 1px #000;
				margin-right:30px;
			}
			span.reference a:hover{
				color:#ddd;
			}
			ul.sdt_menu{
				margin-top:150px;
			}
			h1.title{
				text-indent:-9000px;
				background:transparent url(title.png) no-repeat top left;
				width:633px;
				height:69px;
			}
		</style>
    </head>

    <body>
		    <form id="form1" runat="server">
        <div id="main">
    <div id="header2">

          <div id="logo2">
        <div id="logo_text">
            <br />
          
        </div>
      </div>




      
    </div>
    <div id="site_content">
      
            <div id="sidebar_container">
            
          
          <asp:ImageButton ID="ImageButton2" runat="server" Height="103px" ImageUrl="~/Img/g1.png" Width="106px" OnClick="ImageButton2_Click" />
          
       
    
                
     <br />
     <br />
      <br />
                <asp:ImageButton ID="ImageButton3" runat="server" Height="103px" ImageUrl="~/Img/refresh_icon.jpg" Width="106px" OnClick="ImageButton3_Click" />  
<br />
     <br />
      <br />
<asp:ImageButton ID="ImageButton1" runat="server"  OnClick="ImageButton1_Click1" Height="103px" ImageUrl="~/Img/return-icon.png" Width="106px" Visible="false" />
               
    


  
    
     </div>
                
 <div id="content">
			<br />
     <asp:Label ID="Label2" runat="server" Text="  "></asp:Label>
     <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
     <br />
     <br />
     <br />
     
     	<ul id="sdt_menu" class="sdt_menu">
				<li>
                    <asp:LinkButton ID="LinkButton1" runat="server">               
						<img src="Img/prescri.jpg" />
						<span class="sdt_active"></span>
						<span class="sdt_wrap">
							<span class="sdt_link">Product Adminstration</span>
							
						</span>
                    </asp:LinkButton>

                    <div class="sdt_box">
                        <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click" >Add New Product</asp:LinkButton>	
                        <asp:LinkButton ID="LinkButton9" runat="server" OnClick="LinkButton9_Click">Add New Category</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton10" runat="server" OnClick="LinkButton10_Click" >Add New Vendor</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">UpDate Product</asp:LinkButton>
					</div>
				</li>

             <li>
                    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">
						<img src="Img/admin_icon.jpg" />
						<span class="sdt_active"></span>
						<span class="sdt_wrap">
							<span class="sdt_link">Order Adminstration</span>
							<span class="sdt_descr"></span>
						</span>
                    </asp:LinkButton>
				</li>
				<li>
                    <asp:LinkButton ID="LinkButton2" runat="server">
						<img src="Img/pharmacist_icon.jpg" />
						<span class="sdt_active"></span>
						<span class="sdt_wrap">
							<span class="sdt_link">Betch Adminstration</span>
							<span class="sdt_descr"></span>
						</span>
                    </asp:LinkButton>
					<div class="sdt_box">
                        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Add New Betch</asp:LinkButton>	
                        <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Delete Betch</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Add Product To Stores</asp:LinkButton>
					</div>
				</li>
				
				

			
			</ul>

      <br />
     <br />
     <br />

       <br />
         <br />
     <br />
     <br />

       <br />
     <asp:Label ID="Label1" runat="server" Text="Item Need To Compensate In Stores  :" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000" Visible="False"></asp:Label>
        <br />
     <br />

       <br />

     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDataBound="gvrecords_RowDataBound" OnSelectedIndexChanged="OnSelectedIndexChanged" Height="185px" Width="618px">
         <Columns>
             <asp:CommandField ButtonType="Image" SelectImageUrl="~/Img/UpgradeReport_Success.png" ShowSelectButton="True" />
             <asp:BoundField DataField="Store_ID" HeaderText="Store ID " />
             <asp:BoundField DataField="Product_Code" HeaderText="Product Code" />
             <asp:BoundField DataField="Product_Name" HeaderText="Product Name" />
             <asp:BoundField DataField="Quantity" HeaderText=" Quantity" />
         </Columns>
                </asp:GridView>
                
                </div>
        </div>
            
		</div>
      </form>

        <!-- The JavaScript -->
        <script src="js/JavaScript2.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script type="text/javascript">
            $(function () {
                /**
				* for each menu element, on mouseenter, 
				* we enlarge the image, and show both sdt_active span and 
				* sdt_wrap span. If the element has a sub menu (sdt_box),
				* then we slide it - if the element is the last one in the menu
				* we slide it to the left, otherwise to the right
				*/
                $('#sdt_menu > li').bind('mouseenter', function () {
                    var $elem = $(this);
                    $elem.find('img')
						 .stop(true)
						 .animate({
						     'width': '170px',
						     'height': '170px',
						     'left': '0px'
						 }, 400, 'easeOutBack')
						 .andSelf()
						 .find('.sdt_wrap')
					     .stop(true)
						 .animate({ 'top': '140px' }, 500, 'easeOutBack')
						 .andSelf()
						 .find('.sdt_active')
					     .stop(true)
						 .animate({ 'height': '170px' }, 300, function () {
						     var $sub_menu = $elem.find('.sdt_box');
						     if ($sub_menu.length) {
						         var left = '170px';
						         if ($elem.parent().children().length == $elem.index() + 1)
						             left = '-170px';
						         $sub_menu.show().animate({ 'left': left }, 200);
						     }
						 });
                }).bind('mouseleave', function () {
                    var $elem = $(this);
                    var $sub_menu = $elem.find('.sdt_box');
                    if ($sub_menu.length)
                        $sub_menu.hide().css('left', '0px');

                    $elem.find('.sdt_active')
						 .stop(true)
						 .animate({ 'height': '0px' }, 300)
						 .andSelf().find('img')
						 .stop(true)
						 .animate({
						     'width': '0px',
						     'height': '0px',
						     'left': '85px'
						 }, 400)
						 .andSelf()
						 .find('.sdt_wrap')
						 .stop(true)
						 .animate({ 'top': '25px' }, 500);
                });
            });
        </script>
    </body>
</html>