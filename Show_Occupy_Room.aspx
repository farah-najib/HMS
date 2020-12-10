<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Show_Occupy_Room.aspx.cs" Inherits="Show_Occupy_Room" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="css/style/style.css" rel="stylesheet" />
     <script type="text/javascript">
         var oldgridcolor;
         function SetMouseOver(element) {
             oldgridcolor = element.style.backgroundColor;
             element.style.backgroundColor = '#ffeb95';
             element.style.cursor = 'pointer';
             element.style.textDecoration = 'underline';
         }
         function SetMouseOut(element) {
             element.style.backgroundColor = oldgridcolor;
             element.style.textDecoration = 'none';

         }
  
    </script>



    
</head>
<body>
    <form id="form1" runat="server">


               <div id="main">
    <div id="header">
      <div id="logo">
          <br />
          <br />
          <br />
        <h1>Show Occupy Room</h1>
       
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="current" in the li tag for the selected page - to highlight which page you're on -->
          <li>
              <asp:LinkButton ID="gotohome" runat="server" OnClick="gotohome_Click">Home</asp:LinkButton> </li>
          <li>
              <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">UnOccupy Room</asp:LinkButton>
          </li>
          <li>
              <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Index</asp:LinkButton>  

          </li>
          
          
        </ul>
      </div>
    </div>
    <div id="site_content">
      <div id="sidebar_container">
             
          <asp:ImageButton ID="Shiftbutton" runat="server" ImageUrl="~/Img/imagesex.jpg" Height="63px" Width="59px" OnClick="Shiftbutton_Click" ToolTip="Shift Room"  />
          <asp:ImageButton ID="Log_Out" runat="server" ImageUrl="~/Img/Logout.png" OnClick="Log_Out_Click" Height="63px" Width="59px" ToolTip="Log out from Room" />
  <br />
          <br />
          <br />


          <asp:ImageButton ID="Order_PH" runat="server" ImageUrl="~/Img/OrderFormIcon.jpg" OnClick="Order_PH_Click" Height="63px" Width="59px" ToolTip=" Add Order Pharmacy"  />
          <asp:ImageButton ID="Lab_order" runat="server" ImageUrl="~/Img/default_picture.png" Height="63px" Width="59px" OnClick="Lab_order_Click" ToolTip="Add Order Lab " />
            <br />
          <br />
          <br />
        
          
          <asp:ImageButton ID="BMI_Button" runat="server" Height="63px" Width="59px" ImageUrl="~/Img/efd006a5-48f6-4a7f-81cc-01cb7c1cb612.png" OnClick="BMI_Button_Click" ToolTip="BMI Calculator" />
             <asp:ImageButton ID="Abl" runat="server" Height="63px" Width="59px" ImageUrl="~/Img/imagesabl.jpg" OnClick="Abl_Click" ToolTip="ABL Calculator"  />   
         <br />
          <br />
          <br />
          
         
      </div>


 <div id="content">
        <!-- insert the page content here -->
     

     <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LinqDataSource1" DataTextField="Floor" DataValueField="Floor" Height="44px"
             Width="200px" OnSelectedIndexChanged="Page_Load" AutoPostBack="True" AppendDataBoundItems="True"  CssClass="jjj">
            <asp:ListItem Selected="True" Text="Select Floor" Value="0">Select Floor</asp:ListItem>
        </asp:DropDownList>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" GroupBy="Floor" Select="new (key as Floor, it as Rooms)" TableName="Rooms">
        </asp:LinqDataSource>
    
        <br />
        <br />
     <br />
     <br />
    
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="OnSelectedIndexChanged" AutoGenerateColumns="False" BackColor="#cccccc" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="159px" Width="548px">
            <Columns>
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/Img/UpgradeReport_Success.png" ShowSelectButton="True" />
                <asp:BoundField DataField="no_room" HeaderText="Room NO." ItemStyle-Width="150" >
<ItemStyle Width="150px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="patient_id" HeaderText="Patient ID " ItemStyle-Width="150" >
<ItemStyle Width="150px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="patient_name" HeaderText="Patient Name " ItemStyle-Width="150" >
<ItemStyle Width="150px"></ItemStyle>
            </asp:BoundField>
            </Columns>
            
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="#abda0f" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
            
        </asp:GridView>
        
        <br />
        <br />
       
      
   <p>
              <asp:Label ID="err" runat="server" Text="You do not have permission to access page" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000" Visible="False"></asp:Label>  </p>

      <p>
              <asp:Label ID="masseage" runat="server" Text="Please select Patient " Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000" Visible="False"></asp:Label>  </p>
    
      </div>
    </div>
    <div id="footer">
      <p></p>
    </div>
  </div>









































    <div>
    
        
    
    </div>
    </form>
</body>
</html>

