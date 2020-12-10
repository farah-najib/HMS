<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteProduct.aspx.cs" Inherits="_Default" %>

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
        <h1><asp:Label ID="Label1" runat="server" Text="Delete Betch ......... "></asp:Label></h1>
       </div>
                    <div id="menubar">
        <ul id="menu">
          <!-- put class="current" in the li tag for the selected page - to highlight which page you're on -->
          <li>
              <asp:LinkButton ID="Vendor" runat="server" OnClick="Vendor_Click" >UPDate</asp:LinkButton> </li>
          <li>
              <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">OrderAdmin </asp:LinkButton>
          </li>
          <li>
              <asp:LinkButton ID="LinkButton1" runat="server">Item Store</asp:LinkButton>  

          </li>
          
          
        </ul>
      </div>
      </div>
      
  
    <div id="site_content">
      <div id="sidebar_container">
         
          
          <asp:ImageButton ID="enter" runat="server" Width="101px" Height="68px" ImageUrl="~/Img/images999.jpg" OnClick="enter_Click" />
          

          <br />
          <br />
          <br />
          
          <asp:ImageButton ID="ImageButton1" runat="server" Width="101px" Height="68px" ImageUrl="~/Img/edit_delete.png" OnClick="ImageButton1_Click1" /> 
           <asp:ImageButton ID="ImageButton2" runat="server" Width="101px" Height="68px" ImageUrl="~/Img/Text-Edit-icon.png" Visible="False" OnClick="ImageButton2_Click" />
          
          <br />
          <br />
          <br />
          
          <asp:ImageButton ID="back" runat="server"  ImageUrl="~/Img/g1.png" Width="101px" Height="68px" OnClick="back_Click"/>
              
          </div>
        

 <div id="content">

        <p>
       <asp:Label ID="Product_ID" runat="server" Text="Enter Product Code :" CssClass="sss"></asp:Label>
       <asp:TextBox ID="P_ID_Text" runat="server" Height="18px" Width="115px" CssClass="jjj" AutoCompleteType="Disabled" OnTextChanged="P_ID_Text_TextChanged"></asp:TextBox>
            </p>
       <p>
           <br />
           <br />
       <asp:GridView ID="GridView1" runat="server" CellPadding="4" Font-Size="Larger" ForeColor="#333333" GridLines="None" Height="110px" Width="384px">
           <AlternatingRowStyle BackColor="White" />
           <EditRowStyle BackColor="#2461BF" />
           <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="#ABDA0F" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
           <RowStyle BackColor="#EFF3FB" />
           <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
           <SortedAscendingCellStyle BackColor="#F5F7FB" />
           <SortedAscendingHeaderStyle BackColor="#6D95E1" />
           <SortedDescendingCellStyle BackColor="#E9EBEF" />
           <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
           </p>     
                 
                    
                  
           <asp:Label ID="massage" runat="server" Font-Size="XX-Large" ForeColor="#CC0000" Text="The Betch Is Deleted" Visible="False"></asp:Label>
      <asp:Label ID="Sherch" runat="server" Font-Size="XX-Large" ForeColor="#CC0000" Text="There is no product owns this code" Visible="False"></asp:Label>
                 
                    
                  
           </div>
    </div>
    <div id="footer">
      <p></p>
    </div>
  </div>
    </form>
</body>
</html>
