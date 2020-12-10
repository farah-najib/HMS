<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lab_show_order.aspx.cs" Inherits="lab_show_order" %>

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
        <h1>Show Order Lab</h1>
       </div>
              <div id="menubar">
        <ul id="menu">
          <!-- put class="current" in the li tag for the selected page - to highlight which page you're on -->
          <li>
              <asp:LinkButton ID="Vendor" runat="server" OnClick="Vendor_Click" >Add Lab Order</asp:LinkButton> </li>
          <li>
              <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Show Occupy Room</asp:LinkButton>
          </li>
      
          
          
        </ul>
      </div>
      </div>
      
  
    <div id="site_content">
      <div id="sidebar_container">
            <br />
            <br />
          <br />
          <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Img/images999.jpg" Width="101px" Height="68px" OnClick="ImageButton1_Click" />      
                  
           <br />
          <br />
            <br />
         
          <asp:ImageButton ID="ImageButton2" runat="server" Width="101px" Height="68px" ImageUrl="~/Img/edit_delete.png" OnClick="ImageButton2_Click" /> 
          

            <br />
          <br />
            <br />
          
          <asp:ImageButton ID="ImageButton3" runat="server" Width="101px" Height="68px" ImageUrl="~/Img/readyorder.jpg" OnClick="ImageButton3_Click" /> 
           <br />
            <br />
          <br /> 
          <asp:ImageButton ID="ImageButton4" runat="server" Width="101px" Height="68px" ImageUrl="~/Img/g1.png" OnClick="ImageButton4_Click" />
          </div>
        

 <div id="content">
     <br />
     <br />
     <br />
   
        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px" OnSelectionChanged="Calendar1_SelectionChanged">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#abda0f" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
    
 
     
         
    
     
     
         <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#FFCC66" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AutoGenerateColumns="False" Font-Size="Medium" Height="97px" Width="627px">
             <Columns>
                 <asp:CommandField ButtonType="Image" SelectImageUrl="~/Img/UpgradeReport_Success.png" ShowSelectButton="True" ItemStyle-BackColor="#FFCC66" >
<ItemStyle BackColor="#FFCC66"></ItemStyle>
                 </asp:CommandField>
                 <asp:BoundField DataField="no_Order" HeaderText="Order No." />
                 <asp:BoundField DataField="patient_name" HeaderText="Patient Name" />
                 <asp:BoundField DataField="test_name" HeaderText="Test" />
                 <asp:BoundField DataField="test_date" HeaderText="Test Date" />
                 <asp:BoundField DataField="stat" HeaderText="Order Status" />
             </Columns>
             <FooterStyle BackColor="#CCCCCC" />
             <HeaderStyle BackColor="#abda0f" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
             <RowStyle BackColor="#FFFFCC" />
             <SelectedRowStyle BackColor="#CCCCFF" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F1F1F1" />
             <SortedAscendingHeaderStyle BackColor="#abda0f" />
             <SortedDescendingCellStyle BackColor="#CAC9C9" />
             <SortedDescendingHeaderStyle BackColor="#383838" />
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
