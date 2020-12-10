<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add_Store_Item.aspx.cs" Inherits="Add_Store_Item" %>

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
        <h1>Add New Product The Stores </h1>
       </div>
                          <div id="menubar">
        <ul id="menu">
          <!-- put class="current" in the li tag for the selected page - to highlight which page you're on -->
          <li>
              <asp:LinkButton ID="LinkButton1" runat="server">Add Category</asp:LinkButton> </li>
          <li>
              <asp:LinkButton ID="LinkButton2" runat="server">Add Vendor</asp:LinkButton>
          </li>
          <li>
              <asp:LinkButton ID="LinkButton3" runat="server">Product</asp:LinkButton>  

          </li>
          
          
        </ul>
      </div>
      </div>
      
  
    <div id="site_content">
      <div id="sidebar_container">
          <br />
          <br />
          <br />
          <asp:ImageButton ID="Search" runat="server" Width="101px" Height="68px" ImageUrl="~/Img/Search-Search-icon.png" OnClick="Search_Click" />
            <br />
            <br />
          <br />
          <asp:ImageButton ID="Insert_Betch" runat="server" ImageUrl="~/Img/add_button_new_edit_car_plus_green_equal.png" Width="101px" Height="68px" Visible="False" OnClick="Insert_Betch_Click"  />
                  
           <br />
          <br />
            <br />
          <br />
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
      <asp:TextBox ID="P_N_Text" runat="server" CssClass="jjj" AutoCompleteType="Disabled" Visible="False"></asp:TextBox>
        
        </p>
 <p>
     <asp:Label ID="Label1" runat="server" Text="Store ID :" CssClass="sss" Visible="false"></asp:Label>
     <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="LinqDataSource2" DataTextField="Store_ID" DataValueField="Store_ID" Height="48px" Width="184px" CssClass="jjj" AppendDataBoundItems="True" Visible="false">
            <asp:ListItem>Choose Store</asp:ListItem>
            </asp:DropDownList>

         <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" Select="new (Store_ID)" TableName="Department_Stores">
        </asp:LinqDataSource>
 </p>
          <p>
              <asp:Label ID="Label3" runat="server" Text="    Store Product Add Successful " Visible="False" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000"></asp:Label>
    </p
     
     <p>
                    <asp:Label ID="Quntity" runat="server" Text="Quntity :" CssClass="sss" Visible="False"></asp:Label>

           <asp:TextBox ID="Qun_Text" runat="server" TextMode="Number" CssClass="jjj" AutoCompleteType="Disabled" Visible="False"></asp:TextBox>

         
                
               </p>
          <p>
              <asp:Label ID="s" runat="server" Text="    Main store can not provide now " Visible="False" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000"></asp:Label>
    </p>
              <p>
              <asp:Label ID="Label2" runat="server" Text="   Store Can not Add This Item Now " Visible="False" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000"></asp:Label>
    </p>
              </div>
    </div>
          </div>
         </form>
</body>
</html>
