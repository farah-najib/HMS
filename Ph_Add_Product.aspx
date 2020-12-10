<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ph_Add_Product.aspx.cs" Inherits="Ph_Add_Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add New Product</title>
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
        <h1>Add New Product</h1>
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
              <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Betch</asp:LinkButton>  

          </li>
          
          
        </ul>
      </div>
      </div>
      
  
    <div id="site_content">
      <div id="sidebar_container">
            <br />
            <br />
          <br />
          <asp:ImageButton ID="Insert_Product" runat="server" ImageUrl="~/Img/add_button_new_edit_car_plus_green_equal.png" OnClick="Insert_Product_Click" Width="101px" Height="68px" />
                  
           <br />
          <br />
            <br />
          <br />
           <asp:ImageButton ID="Cancel" runat="server" ImageUrl="~/Img/button_cancel.png" Width="101px" Height="68px" OnClick="Cancel_Click" /> 
          <asp:ImageButton ID="ImageButton2" runat="server" Width="101px" Height="68px" ImageUrl="~/Img/Text-Edit-icon.png" Visible="False" OnClick="ImageButton2_Click" /> 
          <br />
          <br />
            <br />
          <br />
          <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" ImageUrl="~/Img/g1.png" Width="101px" Height="68px"/>

          </div>
        

 <div id="content">
    <p>
                 <asp:Label ID="Product_Name" runat="server" Text="Product Name :" CssClass="sss"></asp:Label>
        <asp:TextBox ID="P_N_Text" runat="server" AutoCompleteType="Disabled" CssClass="jjj"></asp:TextBox>
             </p>   
       <p>
           <asp:Label ID="Category" runat="server" Text="Category Code :" CssClass="sss"></asp:Label>
          <asp:DropDownList ID="DropDownCategory" runat="server" DataSourceID="LinqDataSource3" DataTextField="Cate_Name" DataValueField="Cate_Name" AutoPostBack="True" CssClass="jjj" AppendDataBoundItems="True">
              <asp:ListItem Selected="True">Select Category</asp:ListItem>
           </asp:DropDownList>
              <asp:LinqDataSource ID="LinqDataSource3" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" Select="new (Cate_Name)" TableName="Product_Categories">
              </asp:LinqDataSource>
          
           </p>
          <p>
              <asp:Label ID="s" runat="server" Text="   Product Has been added successfully" Visible="False" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000"></asp:Label>
    
     
                       <asp:Label ID="Vendor" runat="server" Text=" choose Vendor : " CssClass="sss"></asp:Label> 
                   <asp:DropDownList ID="DropDownVendor" runat="server" DataSourceID="LinqDataSource2" DataTextField="Vendor_Name" DataValueField="Vendor_Name" AutoPostBack="True" CssClass="jjj" AppendDataBoundItems="True">
                       <asp:ListItem Selected="True">Select Vendor</asp:ListItem>
                       </asp:DropDownList> 
                       <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" Select="new (Vendor_Name)" TableName="Pharmacy_Vendors">
                       </asp:LinqDataSource>

       
             </p>

     <p>
                           <asp:Label ID="Label1" runat="server" Text="Product FORM :" CssClass="sss"></asp:Label>
                    
                       <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LinqDataSource1" DataTextField="F_Name" DataValueField="F_Name" AutoPostBack="True" CssClass="jjj" AppendDataBoundItems="True">
                           <asp:ListItem Selected="True" Text="Select Form">Select Form</asp:ListItem>
                       </asp:DropDownList>
           

                       <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" GroupBy="F_Name" Select="new (key as F_Name, it as form_drugs)" TableName="form_drugs">
                       </asp:LinqDataSource>
         </p>
       <p>
     <asp:Label ID="Unit_Cost" runat="server" Text="Unit Cost($) : " CssClass="sss"></asp:Label>
        <asp:TextBox ID="Text_Unit_Cost" runat="server" AutoCompleteType="Disabled" CssClass="jjj"></asp:TextBox> 
        </p>
                            
        
           <asp:Label ID="Description" runat="server" Text="Product Description :" CssClass="sss"></asp:Label>
     
       <asp:TextBox ID="Text_Description" runat="server" Rows="10" TextMode="MultiLine" AutoCompleteType="Disabled" CssClass="jjj" ></asp:TextBox> 
        
     <p>
                     <asp:Label ID="Labelerr" runat="server" Text=" Please enter the required values" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000" Visible="False"></asp:Label>
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
