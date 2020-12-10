<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Log_Out_From_Room.aspx.cs" Inherits="Log_Out_From_Room" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Log Out From Room</title>
    <link href="css/default.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="register">
        <h2>Log Out From Room</h2>
    <div>
        <fieldset class="row1">
            <legend></legend>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Patient_ID :" CssClass="sss"></asp:Label>
            
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
        </p>
                <p>
                    <asp:Label ID="Label2" runat="server" Text="Patient Name :" CssClass="sss"></asp:Label>
           
                <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
              
                </p>
                   
             <p>
                
                <asp:Label ID="s" runat="server" Text="Log Out From Room been successfully" Visible="False" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000"></asp:Label>
            </p>
                   
              
                 
                  <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Img/emblem-ok-icone-9839-128.png" Visible="False" ImageAlign="Middle" OnClick="ImageButton1_Click" />
           
                
             
            <p>

                <asp:Label ID="Label3" runat="server" Text="Room NO. :" CssClass="sss"></asp:Label>
            
                <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
            </p>
                
               
               <p>
                          <asp:Label ID="Label4" runat="server" Text="Log Out Code  :" CssClass="sss"></asp:Label>               
         <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="19px" Width="116px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>CR</asp:ListItem>
                    <asp:ListItem>DT</asp:ListItem>
                    <asp:ListItem>UC</asp:ListItem>
                    <asp:ListItem>DM</asp:ListItem>
                </asp:DropDownList>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
               </p>
            
            
         
            <p>
                <asp:Label ID="Label5" runat="server" Text="Tempreture_Patient  :" CssClass="sss"></asp:Label>
          
                <asp:TextBox ID="TextBox4" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox4" Font-Bold="False">*</asp:RequiredFieldValidator>
            </p>
                
                
            <p>
                 <asp:Label ID="Label6" runat="server" Text="The patient's pulse :" CssClass="sss"></asp:Label>
            
                <asp:TextBox ID="TextBox5" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox5">*</asp:RequiredFieldValidator>
            </p>
               
                <p>
                    <asp:Label ID="Label7" runat="server" Text="Pressure patient :" CssClass="sss"></asp:Label>
            
                <asp:TextBox ID="TextBox6" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox6">*</asp:RequiredFieldValidator>
                </p>
            
                
               <p>

                    <asp:Label ID="Label8" runat="server" Text="Prescription :" CssClass="sss"></asp:Label>
            
                <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" BorderColor="#E1E1E1" BorderStyle="Solid" AutoCompleteType="Disabled"></asp:TextBox>
               </p>
            
               </fieldset>
           <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="LOG OUT" CssClass="button" />
    </div>
    </form>
</body>
</html>
