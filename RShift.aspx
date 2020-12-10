<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RShift.aspx.cs" Inherits="RShift" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 122px;
        }
        .auto-style2 {
            width: 141px;
        }
    </style>
    <link href="css/default.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="register">
        <h2>Shift Room</h2>
      <br />
        <br />
        <fieldset class="row1">
        <legend> </legend>
        <p>
        <asp:Label ID="Label7" runat="server" Text="Patient ID :" CssClass="sss"></asp:Label>
        <asp:TextBox ID="Pid" runat="server" Enabled="False"></asp:TextBox>
        </p>

            <p>
                
                <asp:Label ID="s" runat="server" Text="Change Room been successfully" Visible="False" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000"></asp:Label>
            </p>
                   
              
                 
                  <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Img/emblem-ok-icone-9839-128.png" Visible="False" ImageAlign="Middle" OnClick="ImageButton1_Click" />
            <p>
        <asp:Label ID="Label8" runat="server" Text="Patient Name :" CssClass="sss"></asp:Label>
        <asp:TextBox ID="Pname" runat="server" Enabled="False"></asp:TextBox>
           </p>   
            </fieldset>
             <div>

        <br />
        <br />
       
        <br />
        <fieldset class="row2">
        <legend> From</legend>
             <p>
        <asp:Label ID="Label4" runat="server" Text="ROOM TYPE:" CssClass="sss"></asp:Label> 
         <asp:TextBox ID="TypeRoom" runat="server" Enabled="False"></asp:TextBox>
    </p>


            <p>
                <asp:Label ID="Label1" runat="server" Text="Floor:" CssClass="sss"></asp:Label> 
                <asp:TextBox ID="FloorOfRoom" runat="server" Enabled="False"></asp:TextBox>

            </p>
            <p>
                <asp:Label ID="Label6" runat="server" Text="ROOM NO. :" CssClass="sss"></asp:Label>
                 <asp:TextBox ID="number" runat="server" Enabled="False"></asp:TextBox>

            </p>

            </fieldset>
   
          
            
               
            
               <fieldset class="row3">
        <legend> To</legend> 
            <p>
                <asp:Label ID="Label5" runat="server" Text="ROOM TYPE:" CssClass="sss"></asp:Label> 
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="LinqDataSource1" DataTextField="Room_Type" DataValueField="Room_Type"  AppendDataBoundItems="True">
                    <asp:ListItem>Select Type</asp:ListItem>
                </asp:DropDownList>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" GroupBy="Room_Type" Select="new (key as Room_Type, it as Rooms)" TableName="Rooms">
                </asp:LinqDataSource>
          </p>
            
                
            
                
            <p>
                <asp:Label ID="Label2" runat="server" Text="Floor:" CssClass="sss"></asp:Label>
            
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="LinqDataSource2" DataTextField="Floor" DataValueField="Floor"  AppendDataBoundItems="True">
                    <asp:ListItem Value="0">Select Floor</asp:ListItem>
                </asp:DropDownList>
                <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" GroupBy="Floor" Select="new (key as Floor, it as Rooms)" TableName="Rooms">
                </asp:LinqDataSource>
         
            </p>
                
      
               
            <p>
                <asp:Label ID="Label3" runat="server" Text="ROOM NO. :" CssClass="sss"></asp:Label>
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="LinqDataSource3" DataTextField="Room_No_" DataValueField="Room_No_">
                </asp:DropDownList>
                <asp:LinqDataSource ID="LinqDataSource3" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" Select="new (Room_No_)" TableName="Rooms" Where="Room_Type == @Room_Type &amp;&amp; Floor == @Floor &amp;&amp; Room_Status == @Room_Status">
                    <WhereParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Room_Type" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="Floor" PropertyName="SelectedValue" Type="Byte" />
                        <asp:Parameter DefaultValue="NoOccupy" Name="Room_Status" Type="String" />
                    </WhereParameters>
                </asp:LinqDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="DropDownList3">*</asp:RequiredFieldValidator>
                </p>
         </fieldset>
                 <br />
                 <br />
                 <br />

                 <br />
                 <br />
                 <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Shift" CssClass="button" Width="80px"/>

                 </div>
    </form>
        
</body>
</html>
