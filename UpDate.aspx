<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpDate.aspx.cs" Inherits="UpDate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
        <h1>Product Adminstration</h1>
       </div>

                  <div id="menubar">
        <ul id="menu">
          <!-- put class="current" in the li tag for the selected page - to highlight which page you're on -->
          <li>
              <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Delete</asp:LinkButton> </li>
          <li>
              <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">OrderAdmin </asp:LinkButton>
          </li>
          <li>
              <asp:LinkButton ID="LinkButton3" runat="server">Item Store</asp:LinkButton>  

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
          <asp:ImageButton ID="up_date" runat="server" OnClick="up_date_Click" Width="101px" Height="68px" ImageUrl="~/Img/indexupda.jpg" Visible="False" />
          <br />
          <br />
          <br />
          <asp:ImageButton ID="Cancel" runat="server" ImageUrl="~/Img/button_cancel.png" Width="101px" Height="68px" OnClick="Cancel_Click" Visible="False" />  
          <asp:ImageButton ID="ImageButton2" runat="server" Width="101px" Height="68px" ImageUrl="~/Img/Text-Edit-icon.png" Visible="False" OnClick="ImageButton2_Click" />
           <br />
          <br />
          <br />
          <asp:ImageButton ID="ImageButton1" runat="server" Width="101px" Height="68px" ImageUrl="~/Img/g1.png" />
          </div>
        

 <div id="content">
                        <p>                 
                    <asp:Label ID="Pro_ID" runat="server" Text="Product Code :" CssClass="sss"></asp:Label> 
        
           <asp:TextBox ID="ID_Text" runat="server" AutoCompleteType="Disabled" CssClass="jjj" OnTextChanged="ID_Text_TextChanged"></asp:TextBox>
             </p>            
                     
     <p>
          
                        <asp:Label ID="Product_CHEK" runat="server" Text="Chack UpDate :" CssClass="sss" Visible="False"></asp:Label>

                   
       
           <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" EnableTheming="True" Height="2px" Width="500px" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" Visible="False">
               <asp:ListItem>Product Name</asp:ListItem>
               <asp:ListItem>Unit cost</asp:ListItem>
               <asp:ListItem>Category Of Product</asp:ListItem>
               <asp:ListItem>Vendor Of Product</asp:ListItem>
               <asp:ListItem>Description</asp:ListItem>
           </asp:CheckBoxList>
                 
           
              </p> 



              
               <br/>
     <asp:Label ID="s" runat="server" Text="   Product Has been UpDate successfully" Visible="False" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000"></asp:Label>
     <br />
     <asp:Label ID="Sherch" runat="server" Font-Size="XX-Large" ForeColor="#CC0000" Text="There is no product owns this code" Visible="False"></asp:Label>
                        <asp:GridView ID="GridView1" runat="server" Height="114px" Width="235px">
                        </asp:GridView>
               <br />
               <br />
                
              


                
     
    <p>
                    <asp:Label ID="Label1" runat="server" Text="Product Name " CssClass="sss" Visible="False"></asp:Label>
                
                    <asp:TextBox ID="Name_Product_1" runat="server" AutoCompleteType="Disabled" CssClass="jjj" Visible="False"></asp:TextBox>
                     </p>
     
     <p>
             <asp:Label ID="Category" runat="server" Text="choose Category Code :" Visible="False"></asp:Label>
         <asp:DropDownList ID="DropDownCategory" runat="server" CssClass="styled-select" DataSourceID="LinqDataSource1" DataTextField="Cate_Name" DataValueField="Cate_Name" Visible="False">
             <asp:ListItem>Select Category</asp:ListItem>
             </asp:DropDownList>
              <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" Select="new (Cate_Name)" TableName="Product_Categories">
              </asp:LinqDataSource>
       </p>
     <p>
<asp:Label ID="Vendor" runat="server" Text=" choose Vendor : " Visible="False" CssClass="sss"></asp:Label> 
                   <asp:DropDownList ID="DropDownVendor" runat="server" CssClass="styled-select" Visible="False" DataSourceID="LinqDataSource2" DataTextField="Vendor_Name" DataValueField="Vendor_Name">
                       <asp:ListItem>Select Vendor</asp:ListItem>
         </asp:DropDownList> 
                       <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" GroupBy="Vendor_Name" Select="new (key as Vendor_Name, it as Pharmacy_Vendors)" TableName="Pharmacy_Vendors">
                       </asp:LinqDataSource>
         </p>
       
   <p>  <asp:Label ID="Unit_Cost" runat="server" Text="Unit Cost($) : " Visible="False" CssClass="sss"></asp:Label>
        <asp:TextBox ID="Text_Unit_Cost" runat="server" Visible="False" AutoCompleteType="Disabled" CssClass="jjj"></asp:TextBox> 
       </p>
     
           <asp:Label ID="Description" runat="server" Text="Product Description :" Visible="False" CssClass="sss"></asp:Label>
       <asp:TextBox ID="Text_Description" runat="server" Rows="10" TextMode="MultiLine" Visible="False" AutoCompleteType="Disabled" CssClass="jjj" ></asp:TextBox>
       
          
             
               </div>
    </div>
    <div id="footer">
      <p></p>
    </div>
  </div>
    
    </form>
      

</body>
</html>
