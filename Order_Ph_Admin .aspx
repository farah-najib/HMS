<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Order_Ph_Admin .aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/style/style.css" rel="stylesheet" />
</head>
<body>
    <!-- <asp:ButtonField ButtonType="Button" Text="Button" />-->
    <form id="form1" runat="server">
    <div id="main">
    <div id="header">
      <div id="logo">
          <br />
          <br />
          <br />
        <h1>Order Admistration</h1>
       
      </div>

               <div id="menubar">
        <ul id="menu">
          <!-- put class="current" in the li tag for the selected page - to highlight which page you're on -->
          <li>
              <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Delete</asp:LinkButton> </li>
          <li>
              <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" >UpDate</asp:LinkButton>
          </li>
          <li>
              <asp:LinkButton ID="LinkButton3" runat="server">Item Store</asp:LinkButton>  

          </li>
          
          
        </ul>
      </div>
      
    </div>
    <div id="site_content">
      <div id="sidebar_container">

          <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" Height="83px" ImageUrl="~/Img/Search-Search-icon.png" Width="95px"/>

        <br />
        <br />
        <asp:ImageButton ID="ImageButton2" runat="server" OnClick="ImageButton2_Click" Height="83px" ImageUrl="~/Img/add_button_new_edit_car_plus_green_equal.png" Width="95px" />


        <br />
        <br />
        <asp:ImageButton ID="ImageButton3" runat="server" OnClick="ImageButton3_Click" Height="95px" ImageUrl="~/Img/g1.png" Width="106px" />
           </div>


 <div id="content">


   <p>
       <asp:Label ID="id" runat="server" Text="Patient ID : " CssClass="sss"></asp:Label>   
       <asp:TextBox ID="IDP" runat="server" AutoCompleteType="Disabled" CssClass="jjj"></asp:TextBox>
   </p>


          <p>
       <asp:Label ID="N" runat="server" Text="Patient Name : " CssClass="sss"></asp:Label>   
       <asp:TextBox ID="Np" runat="server" AutoCompleteType="Disabled" CssClass="jjj" Enabled="False"></asp:TextBox>
   </p>
        <p>
 <asp:Label ID="Label1" runat="server" Text="Store ID : "></asp:Label>  
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="LinqDataSource2" DataTextField="Store_ID" DataValueField="Store_ID" Height="48px" Width="184px" CssClass="jjj" AppendDataBoundItems="True">
            <asp:ListItem>Choose Store</asp:ListItem>
            </asp:DropDownList>

         <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" Select="new (Store_ID)" TableName="Department_Stores">
        </asp:LinqDataSource>
            


            </p>
     <br />
     <br />
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Order_ID"


          Width="617px" ShowFooter="True" OnRowDeleting="GridView1_RowDeleting" Height="51px">

        <Columns>
          
    
            <asp:CommandField ButtonType="Image" DeleteImageUrl="~/Img/UpgradeReport_Error.png" ShowDeleteButton="True"/>
          
    
        <asp:TemplateField HeaderText="Product Code">

            <ItemTemplate>

                <asp:Label ID="PC" runat="server" Text='<%# Eval("Product_ID") %>'></asp:Label>

            </ItemTemplate>

            <EditItemTemplate>

                <asp:TextBox ID="txt_Pro" runat="server" Text='<%# Eval("Product_ID") %>'></asp:TextBox>

            </EditItemTemplate>

            <FooterTemplate>

                <asp:TextBox ID="txt_ID_ins" runat="server"></asp:TextBox>

            </FooterTemplate>

        </asp:TemplateField>

             <asp:TemplateField HeaderText="Product Name ">

            <ItemTemplate>

               <asp:Label ID="pro_name" runat="server" Text='<%# Eval("Product__Name") %>'></asp:Label>

            </ItemTemplate>

            <EditItemTemplate>

                <asp:TextBox ID="txt_Name_Pro" runat="server" Text='<%# Eval("Product__Name") %>'></asp:TextBox>

            </EditItemTemplate>

           

        </asp:TemplateField>
            
           

        <asp:TemplateField HeaderText="Quantity">

            <ItemTemplate>

                <asp:Label ID="np" runat="server" Text='<%# Eval("Qunantity") %>'></asp:Label>

            </ItemTemplate>

            <EditItemTemplate>

                <asp:TextBox ID="txt_Name" runat="server" Text='<%# Eval("Qunantity") %>'></asp:TextBox>

            </EditItemTemplate>

            <FooterTemplate>

                <asp:TextBox ID="txt_Quantity_insert" runat="server" TextMode="Number"></asp:TextBox>

            </FooterTemplate>

        </asp:TemplateField>



           











             <asp:TemplateField HeaderText="Order Date">

            <ItemTemplate>

                <asp:Label ID="Date" runat="server" Text='<%# Eval("Order_Date") %>'></asp:Label>

            </ItemTemplate>

            <EditItemTemplate>

                <asp:TextBox ID="txt_Date" runat="server" Text='<%# Eval("Order_Date") %>'></asp:TextBox>

            </EditItemTemplate>

            

        </asp:TemplateField>





            <asp:TemplateField HeaderText="Was the demand by">

            <ItemTemplate>

                <asp:Label ID="emplo" runat="server" Text='<%# Eval("E_NAME") %>'></asp:Label>

            </ItemTemplate>

            <EditItemTemplate>

                <asp:TextBox ID="emplo_txt" runat="server" Text='<%# Eval("E_NAME") %>'></asp:TextBox>

            </EditItemTemplate>

            

        </asp:TemplateField>
           

        </Columns>

 

    </asp:GridView>
        


            </div>
    </div>
    <div id="footer">
      <p></p>
    </div>
  </div>
    </form>
</body>
</html>
