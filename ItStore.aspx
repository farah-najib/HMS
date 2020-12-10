<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ItStore.aspx.cs" Inherits="ItStore" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/default.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="register">
    <div>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Store_ID" CssClass="sss"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
    </p>

         <p>
        <asp:Label ID="Label2" runat="server" Text="Product Code " CssClass="sss"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
    </p>
        <p>
                  <asp:Label ID="Label5" runat="server" Text="Quantity can not be restored now" Visible="False" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000"></asp:Label>
            </p>
            <p>
                <asp:Label ID="s" runat="server" Text="Quantity restored been successfully" Visible="False" Font-Bold="True" Font-Size="X-Large" ForeColor="#006600"></asp:Label>
            </p>
                   
              
                 
                  <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Img/emblem-ok-icone-9839-128.png" OnClick="ImageButton1_Click" Visible="False" ImageAlign="Middle" />
         <p>
        <asp:Label ID="Label3" runat="server" Text="Product Name" CssClass="sss"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
    </p>
         <p>
        <asp:Label ID="Label4" runat="server" Text="Quantity" CssClass="sss"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Enabled="False"></asp:TextBox>
             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get Back" CssClass="button" />
    </p>
        
    </div>
      
    </form>
</body>
</html>
