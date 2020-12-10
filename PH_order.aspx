<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PH_order.aspx.cs" Inherits="PH_order" %>

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
        <h1>Add Order :</h1>
       
      </div>
      
    </div>
    <div id="site_content">
      <div id="sidebar_container">

          <asp:ImageButton ID="ImageButton1" runat="server" Height="75px" ImageUrl="~/Img/shopping_cart_add.png"  Width="76px" OnClick="ImageButton1_Click" />
          <br />
          <br />
          <br />
          <asp:ImageButton ID="ImageButton2" runat="server" OnClick="ImageButton2_Click" />
          <br />

          </div>


        <div id="content">
            <table>
                <tr>
           <td> <asp:Label ID="Label3" runat="server" Text="Patient ID :" CssClass="sss"></asp:Label></td>
                
       <td>  <asp:TextBox ID="P" runat="server" Height="16px" Width="153px" CssClass="jjj" Enabled="False"></asp:TextBox></td>
                
               <td>  <asp:Label ID="Label1" runat="server" Text="Patient Name :" CssClass="sss"></asp:Label></td>
                
                
               <td> <asp:TextBox ID="Nameppp" runat="server" Height="16px" Width="153px" CssClass="jjj" Enabled="False"></asp:TextBox></td>
                    </tr>
          </table>
            <p>
    <asp:Label ID="Label2" runat="server" Text="Store ID :" CssClass="sss"></asp:Label>
           
               <asp:DropDownList ID="store_ID" runat="server" Height="16px" Width="154px" AutoPostBack="True" DataSourceID="LinqDataSource1" DataTextField="Store_ID" DataValueField="Store_ID" AppendDataBoundItems="True">
                    <asp:ListItem>Select Store</asp:ListItem>
                </asp:DropDownList>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" Select="new (Store_ID)" TableName="Department_Stores">
                </asp:LinqDataSource>
              </p>

        
                
    
     
      
  

       <p>
                  <asp:Label ID="Label4" runat="server" Text="Medical Code :" CssClass="sss"></asp:Label>
                
                    <asp:TextBox ID="P_ID" runat="server" AutoPostBack="True" CssClass="jjj" AutoCompleteType="Disabled"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="23px" ImageUrl="~/Img/Magnifying_Glass-128.png" OnClick="ImageButton3_Click" Width="23px" />
          </p>
            <p>
                    <asp:Label ID="Label5" runat="server" Text="Medical Name :" CssClass="sss"></asp:Label>
               
                    <asp:TextBox ID="P_Name" runat="server" CssClass="jjj" Enabled="False"></asp:TextBox>
                </p>
           
        <p>
           
                    <asp:Label ID="Label7" runat="server" Text="The drug is not available in this store is currently" Visible="False" Font-Bold="True" Font-Size="Medium" ForeColor="#CC0000"></asp:Label>
             </p>

        <p>
                    <asp:Label ID="Label6" runat="server" Text="Quntity :" CssClass="sss"></asp:Label>
               
                    <asp:TextBox ID="Quntity" runat="server" TextMode="Number" CssClass="jjj" AutoCompleteType="Disabled"></asp:TextBox>
            </p>
        <p>
            <asp:Label ID="Label8" runat="server" Text="Required quantity is not allowed." Visible="False" Font-Bold="True" Font-Size="Medium" ForeColor="#CC0000"></asp:Label>
            </p>
                    
         
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="227px" Width="436px" OnRowDeleted="GridView1_RowDeleted">
            <Columns>


                <asp:CommandField ShowDeleteButton="True" />


                <asp:BoundField DataField="Product code" HeaderText="Product code" />
           <asp:BoundField DataField="Product quantity" HeaderText="Product quantity" />
           
           
           
            </Columns>
        </asp:GridView>
        <br />

            </div>
          </div>
    </div>
    <div id="footer">
      <p></p>
    </div>
  

    </form>
</body>
</html>
