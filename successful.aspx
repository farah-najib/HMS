<%@ Page Language="C#" AutoEventWireup="true" CodeFile="successful.aspx.cs" Inherits="successful" %>

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
        <h1>Uploaded Patient Successfully</h1>
       
      </div>
               <div id="menubar">
        <ul id="menu">
          <!-- put class="current" in the li tag for the selected page - to highlight which page you're on -->
          <li>
              <asp:LinkButton ID="Vendor" runat="server">Add Order Lab</asp:LinkButton> </li>
          <li>
              <asp:LinkButton ID="LinkButton2" runat="server" >Add Order Pharmacy </asp:LinkButton>
          </li>
         
          
          
        </ul>
      </div>
      
    </div>
    <div id="site_content">
      <div id="sidebar_container">
          
          <asp:ImageButton ID="ImageButton2" runat="server" Height="95px" ImageUrl="~/Img/login-door-symbol.jpg" Width="103px" OnClick="ImageButton2_Click"/> 
      
  
      </div>


 <div id="content">
        <!-- insert the page content here -->
     

         <p>
        <asp:Label ID="Label2" runat="server" Text="Patient ID : " CssClass="sss"></asp:Label>
        <asp:TextBox ID="IDpp" runat="server"  Enabled="False" CssClass="jjj"></asp:TextBox>
       
        </p>
     
            <p>
        <asp:Label ID="Label1" runat="server" Text="Patient Name : " CssClass="sss"></asp:Label>
        <asp:TextBox ID="Namepp" runat="server" Enabled="False" CssClass="jjj"></asp:TextBox>
       
        </p>
       

 
      </div>
    </div>
    <div id="footer">
      <p></p>
    </div>
  </div>
      
            
        
        
        
    </form>
</body>
</html>
