<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Shearch_Patient.aspx.cs" Inherits="Shearch_Patient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title> Search Patient Page </title>

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
        <h1>Search Patient</h1>
       
      </div>
            <div id="menubar">
        <ul id="menu">
          <!-- put class="current" in the li tag for the selected page - to highlight which page you're on -->
          <li>
              <asp:LinkButton ID="Vendor" runat="server" OnClick="Vendor_Click" >Add Order Lab</asp:LinkButton> </li>
          <li>
              <asp:LinkButton ID="LinkButton2" runat="server" >Add Order Pharmacy </asp:LinkButton>
          </li>
         
          
          
        </ul>
      </div>
    </div>
    <div id="site_content">
      <div id="sidebar_container">
          <asp:ImageButton ID="ImageButton3" runat="server" Height="95px" Width="103px" ImageUrl="~/Img/Text-Edit-icon.png" OnClick="ImageButton3_Click" />
          <br />
           <br />
           <br />
          <asp:ImageButton ID="ImageButton2" runat="server" Height="95px" ImageUrl="~/Img/login-door-symbol.jpg" OnClick="ImageButton2_Click1" Width="103px"/> 
        <br />
          <br />
          <br />
          <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Img/Search-Search-icon.png" Height="95px" Width="103px" OnClick="ImageButton4_Click" />
  <br />
          <br />
          <br />
          <asp:ImageButton ID="ImageButton1" runat="server" Height="103px" ImageUrl="~/Img/g1.png" Width="106px" OnClick="ImageButton1_Click" />
      </div>


 <div id="content">
        <!-- insert the page content here -->
     
     
            <p>
        <asp:Label ID="Label1" runat="server" Text="Patient  Name : " CssClass="sss"></asp:Label>
        <asp:TextBox ID="Name" runat="server" CssClass="jjj" AutoCompleteType="Disabled"></asp:TextBox>
                </p>
     <p>
         <asp:Label ID="Label4" runat="server" Text="Father Name :"  CssClass="sss"></asp:Label>
        <asp:TextBox ID="FatherName" runat="server" CssClass="jjj" AutoCompleteType="Disabled"></asp:TextBox>
         </p>
     <p>
         <asp:Label ID="Label5" runat="server" Text="SurName :"  CssClass="sss"></asp:Label>
        <asp:TextBox ID="LastName" runat="server" CssClass="jjj" AutoCompleteType="Disabled"></asp:TextBox>
        </p>
        <p>
          <asp:Label ID="Label2" runat="server" Text="Mother Name & Title : "  CssClass="sss"></asp:Label>
        <asp:TextBox ID="Mother" runat="server" CssClass="jjj" AutoCompleteType="Disabled"></asp:TextBox>
        </p>

           



       
        
    
            <asp:GridView ID="GridView1" HeaderStyle-BackColor="GreenYellow" HeaderStyle-ForeColor="White"
        runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="OnSelectedIndexChanged" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="119px" Width="606px">
                <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ButtonType="Image" SelectImageUrl="~/Img/UpgradeReport_Success.png" ShowSelectButton="True" />
            <asp:BoundField DataField="id" HeaderText="Patient ID"  >
<ItemStyle Width="150px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="n" HeaderText="Patient Name " >
<ItemStyle Width="150px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="m" HeaderText="Patient Mother Name & Title"  >
<ItemStyle Width="150px"></ItemStyle>
            </asp:BoundField>
        </Columns>

                <FooterStyle BackColor="#CCCC99" />

<HeaderStyle BackColor="#6B696B" ForeColor="White" Font-Bold="True"></HeaderStyle>

         
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />

         
    </asp:GridView>

     <br />
     <br />
     <br />
     <br />
    
            <asp:Label ID="Label3" runat="server" Text="There is no data related to research" Visible="False" Font-Bold="True" Font-Size="Large" ForeColor="#990000"></asp:Label>
      </div>
    </div>
    <div id="footer">
      <p>
          <asp:Label ID="u" runat="server" Text="User Name :"></asp:Label>
          <asp:Label ID="uuuuuser" runat="server" Text=""></asp:Label>
      </p>
    </div>
  </div>
      
            
        
        
        
    </form>
</body>
</html>
