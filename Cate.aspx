<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cate.aspx.cs" Inherits="Cate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/style/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
     <div id="main">
    <div id="header">
      <div id="logo">
          <br />
          <br />
          <br />
        <h1>Add New Category</h1>
       </div>
              <div id="menubar">
        <ul id="menu">
          <!-- put class="current" in the li tag for the selected page - to highlight which page you're on -->
          <li>
              <asp:LinkButton ID="gotohome" runat="server" OnClick="gotohome_Click">Add Vendor</asp:LinkButton> </li>
          <li>
              <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Add Product</asp:LinkButton>
          </li>
          <li>
              <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Betch</asp:LinkButton>  

          </li>
          
          
        </ul>
      </div>
      </div>
      
  
    <div id="site_content">
      <div id="sidebar_container">
            <br />
            <br />
          <br />
          <asp:ImageButton ID="Insert_category" runat="server" ImageUrl="~/Img/add_button_new_edit_car_plus_green_equal.png" Width="101px" Height="68px" OnClick="Insert_category_Click"/>
                  
           <br />
          <br />
            <br />
          <br />
           <asp:ImageButton ID="Cancel" runat="server" ImageUrl="~/Img/button_cancel.png" Width="101px" Height="68px" OnClick="Cancel_Click"/> 
          <asp:ImageButton ID="ImageButton2" runat="server" Width="101px" Height="68px" ImageUrl="~/Img/Text-Edit-icon.png" Visible="False" OnClick="ImageButton2_Click" /> 
          <br />
          <br />
            <br />
          <br />
          <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/Img/g1.png" Width="101px" Height="68px" OnClick="ImageButton1_Click"/>
          </div>
        

 <div id="content">
     <br />
     <br />
     <br />

     <br />
     <br />
    
    <p>
        <asp:Label ID="Label1" runat="server" Text="Category ID :" CssClass="sss"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="jjj"></asp:TextBox>
    </p>

          <p>
        <asp:Label ID="Label2" runat="server" Text="Category Name :" CssClass="sss"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="jjj"></asp:TextBox>
              </p>
     <p>
              
              <asp:Label ID="s" runat="server" Text="   Category Has been added successfully" Visible="False" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000"></asp:Label>
    </p>
     <p> <asp:Label ID="Labelerr" runat="server" Text=" Please enter the required values" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000" Visible="False"></asp:Label></p>
        
          </div>
    </div>
    <div id="footer">
      <p></p>
    </div>
  </div>
    </form>
</body>
</html>
