<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Betch_Pharmacy.aspx.cs" Inherits="Betch_Pharmacy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

    <link href="css/style/style.css" rel="stylesheet" />
    <link href="css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.19.custom.min.js"></script>
<script type="text/javascript">


    $(function () {
        $("#txtDate").datepicker();

        $("#endDate").datepicker();
    });
</script>
 
</head>
<body>
   
       
       <form id="form1" runat="server">
    <div id="main">
    <div id="header">
      <div id="logo">
          <br />
          <br />
          <br />
        <h1>Add New Batch </h1>
       </div>
                          <div id="menubar">
        <ul id="menu">
          <!-- put class="current" in the li tag for the selected page - to highlight which page you're on -->
          <li>
              <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Add Category</asp:LinkButton> </li>
          <li>
              <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Add Vendor</asp:LinkButton>
          </li>
          <li>
              <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Product</asp:LinkButton>  

          </li>
          
          
        </ul>
      </div>
      </div>
      
  
    <div id="site_content">
      <div id="sidebar_container">
          <br />
          <br />
          <br />
          <asp:ImageButton ID="Search" runat="server" OnClick="Search_Click" Width="101px" Height="68px" ImageUrl="~/Img/Search-Search-icon.png" />
            <br />
            <br />
          <br />
          <asp:ImageButton ID="Insert_Betch" runat="server" ImageUrl="~/Img/add_button_new_edit_car_plus_green_equal.png" Width="101px" Height="68px" OnClick="Insert_Betch_Click" Visible="False"  />
                  
           <br />
          <br />
            <br />
          <br />
           <asp:ImageButton ID="Cancel" runat="server" ImageUrl="~/Img/button_cancel.png" Width="101px" Height="68px" OnClick="Cancel_Click" Visible="False"   /> 
          <asp:ImageButton ID="ImageButton2" runat="server" Width="101px" Height="68px" ImageUrl="~/Img/Text-Edit-icon.png" Visible="False" OnClick="ImageButton2_Click" /> 
          <br />
          <br />
            <br />
          <br />
          <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/Img/g1.png" Width="101px" Height="68px" OnClick="ImageButton1_Click"/>
          </div>
        
        
 <div id="content">
         <p>
                    <asp:Label ID="Pro_ID" runat="server" Text="Product Code :" CssClass="sss"></asp:Label> 
       
           <asp:TextBox ID="ID_Text" runat="server" AutoPostBack="True" CssClass="jjj" AutoCompleteType="Disabled"></asp:TextBox>
           </p>
     <p>
             <asp:Label ID="Name_Pro" runat="server" Text="Product Name :" CssClass="sss" Visible="False"></asp:Label>
      <asp:TextBox ID="P_N_Text" runat="server" CssClass="jjj" AutoCompleteType="Disabled" Visible="False" Enabled="False"></asp:TextBox>
         <br />
         <asp:Label ID="s" runat="server" Text="   Betch Has been added successfully" Visible="False" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000"></asp:Label>
         <br />
         <asp:Label ID="Sherch" runat="server" Font-Size="XX-Large" ForeColor="#CC0000" Text="There is no product owns this code" Visible="False"></asp:Label> 
        </p>
     <p>
                    <asp:Label ID="Start_Date" runat="server" Text="Start Date :" CssClass="sss" Visible="False"></asp:Label> 
        
           <asp:TextBox ID="txtDate" runat="server" CssClass="jjj" AutoCompleteType="Disabled" Visible="False"></asp:TextBox>
         <br />
         
      </p>
     <p>
                    <asp:Label ID="End_Date" runat="server" Text="End Date :" CssClass="sss" Visible="False"></asp:Label> 
     
           <asp:TextBox ID="endDate" runat="server" CssClass="jjj" AutoCompleteType="Disabled" Visible="False"></asp:TextBox>
            </p>
     
     <p>
                    <asp:Label ID="Quntity" runat="server" Text="Quntity :" CssClass="sss" Visible="False"></asp:Label>

           <asp:TextBox ID="Qun_Text" runat="server" TextMode="Number" CssClass="jjj" AutoCompleteType="Disabled" Visible="False"></asp:TextBox>
      
                
               </p>
     <p>
                    <asp:Label ID="Note" runat="server" Text="Note :" CssClass="sss" Visible="False"></asp:Label>
        
           <asp:TextBox ID="Note_Text" runat="server" CssClass="jjj" AutoCompleteType="Disabled" Height="137px" TextMode="MultiLine" Width="177px" Visible="False"></asp:TextBox>
                </p>
     <p></p>
     <p></p>
                 <p>
                     <asp:Label ID="Labelerr" runat="server" Text=" Please enter the required values" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000" Visible="False"></asp:Label>
                 </p>  
              </div>
    </div>
          </div>
    <div id="footer">
      <p></p>
    </div>
  
    </form>
     







   
              
              
   





 
</body>
</html>