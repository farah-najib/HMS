<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Successful_new_emp.aspx.cs" Inherits="Successful_new_emp" %>

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
        <h1>Uploaded Employee Successfully</h1>
       
      </div>
      
    </div>
    <div id="site_content">
      <div id="sidebar_container">


          <br />
          <br />
          <br />
          <asp:ImageButton ID="Add_new" runat="server" Width="101px" Height="68px" ImageUrl="~/Img/usericon.jpg" OnClick="Add_new_Click" /> 
           <br />
          <br />
          <br /> 



          <asp:ImageButton ID="Save" runat="server" Width="101px" Height="68px" ImageUrl="~/Img/check0.png" OnClick="Save_Click" Visible="False" />
           <br />
          <br />
          <br />
          <asp:ImageButton ID="back" runat="server" ImageUrl="~/Img/g1.png" Width="101px" Height="68px" OnClick="back_Click" />
  
      </div>


 <div id="content">
        <!-- insert the page content here -->
     

         <p>
        <asp:Label ID="Label2" runat="server" Text="employee ID : " CssClass="sss"></asp:Label>
        <asp:TextBox ID="IDee" runat="server" CssClass="jjj" Enabled="False" ></asp:TextBox>
       
        </p>
     
            <p>
        <asp:Label ID="Label1" runat="server" Text="employee Name : " CssClass="sss"></asp:Label>
        <asp:TextBox ID="Nameee" runat="server" CssClass="jjj" Enabled="False" ></asp:TextBox>
       </p>
     
  <asp:Label ID="s" runat="server" Text=" User Has been added successfully" Visible="False" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000"></asp:Label>
     <p>

         <asp:Label ID="Label3" runat="server" Text="User Name :" CssClass="sss" Visible="False"></asp:Label>
         <asp:TextBox ID="UN" runat="server" Visible="False" CssClass="jjj"></asp:TextBox>
        </p>
     <p>
         <asp:Label ID="Label4" runat="server" Text="PassWord :" CssClass="sss" Visible="False"></asp:Label>
         <asp:TextBox ID="PW" runat="server" Visible="False" CssClass="jjj"></asp:TextBox>
          </p>
     <p>
         <asp:Label ID="Label5" runat="server" Text="Role :" CssClass="sss" Visible="False"></asp:Label>
         <asp:DropDownList ID="R" runat="server" Visible="False" CssClass="jjj">
                  <asp:ListItem>Doctor</asp:ListItem>
                  <asp:ListItem>Lab Assistant</asp:ListItem>
                  <asp:ListItem>Management</asp:ListItem>
              </asp:DropDownList>
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
