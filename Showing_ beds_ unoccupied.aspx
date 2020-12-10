<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Showing_ beds_ unoccupied.aspx.cs" Inherits="Showing__beds__unoccupied" %>

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
        <h1>Showing beds unoccupied</h1>
       </div>
           <div id="menubar">
        <ul id="menu">
          <!-- put class="current" in the li tag for the selected page - to highlight which page you're on -->
          <li>
              <asp:LinkButton ID="gotohome" runat="server" OnClick="gotohome_Click" >Home</asp:LinkButton> </li>
          <li>
              <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" >Show Occupy Room</asp:LinkButton>
          </li>
          <li>
              <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Index</asp:LinkButton>  

          </li>
          
          
        </ul>
      </div>
      </div>
      
  
    <div id="site_content">
      <div id="sidebar_container">
            
          </div>
        

 <div id="content">
        <p>
                         <asp:Label ID="Label4" runat="server" Text="Type of stay :" CssClass="sss"></asp:Label>
                
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="LinqDataSource1" DataTextField="Room_Type" DataValueField="Room_Type" AppendDataBoundItems="True" AutoPostBack="True" CssClass="jjj">
                    </asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" GroupBy="Room_Type" Select="new (key as Room_Type, it as Rooms)" TableName="Rooms">
                    </asp:LinqDataSource>
                </p>
           
                   
               

                <p>
                    <asp:Label ID="Label5" runat="server" Text="No. nursing station :" CssClass="sss"></asp:Label>
                 
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LinqDataSource2" DataTextField="Floor" DataValueField="Floor" Height="16px" Width="172px" AutoPostBack="True" CssClass="jjj">
                    </asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" GroupBy="Floor" Select="new (key as Floor, it as Rooms)" TableName="Rooms">
                    </asp:LinqDataSource>
                </p>
             
                    
               
             
<asp:Label ID="Label6" runat="server" Text="No. Room :" CssClass="sss"></asp:Label>
                 
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource3" Height="16px" Width="325px" BackColor="#CCCCCC" BorderColor="#FFCC66" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                        <Columns>
                            <asp:BoundField DataField="Room_No_" HeaderText="Room_No_" ReadOnly="True" SortExpression="Room_No_" />
                            <asp:BoundField DataField="Bad_No_" HeaderText="Bad_No_" ReadOnly="True" SortExpression="Bad_No_" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="#abda0f" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="#FFFFCC" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                 </asp:GridView>
                    <asp:LinqDataSource ID="LinqDataSource3" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" GroupBy="Room_No_" Select="new (key as Room_No_, it as Rooms, Min(Bad_No_) as Bad_No_)" TableName="Rooms" Where="Room_Status == @Room_Status &amp;&amp; Floor == @Floor &amp;&amp; Room_Type == @Room_Type">
                        <WhereParameters>
                            <asp:Parameter DefaultValue="NoOccupy" Name="Room_Status" Type="String" />
                            <asp:ControlParameter ControlID="DropDownList1" Name="Floor" PropertyName="SelectedValue" Type="Byte" />
                            <asp:ControlParameter ControlID="DropDownList3" Name="Room_Type" PropertyName="SelectedValue" Type="String" />
                        </WhereParameters>
                    </asp:LinqDataSource>

             
           
                   
                    </div>
    </div>
    <div id="footer">
      <p></p>
    </div>
  </div>   

                    
    </form>
</body>
</html>
