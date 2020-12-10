<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admission .aspx.cs" Inherits="Admission_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
   
   
   
    <title> Admission to Room</title>
    <link href="css/default.css" rel="stylesheet" />
       
    </head>
    <body>
        <div id="main">
        <form id="form1" runat="server" class="register">
            
            <h1>Admission to Room</h1>
            
                
            <fieldset class="row1">
                <legend></legend>
                <p>
                
    <asp:Label ID="Label3" runat="server" Text="Paient ID :" CssClass="sss"></asp:Label>
               
                    <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="225px" Enabled="False"></asp:TextBox>
</p>
               

            <p>
 <asp:Label ID="Label2" runat="server" Text="Patient Name :" CssClass="sss"></asp:Label>
               
                    <asp:TextBox ID="TextBox2" runat="server" Height="16px" Width="222px" Enabled="False"></asp:TextBox>
                </p><p>
                
                <asp:Label ID="s" runat="server" Text="Admission to Room Has been added successfully" Visible="False" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000"></asp:Label>
            </p>
                   
              
                 
                  <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Img/emblem-ok-icone-9839-128.png" OnClick="ImageButton1_Click" Visible="False" ImageAlign="Middle" />
              

                <p>


                     <asp:Label ID="Label4" runat="server" Text="Type of stay :" CssClass="sss"></asp:Label>
                
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="LinqDataSource1" DataTextField="Room_Type" DataValueField="Room_Type" AppendDataBoundItems="True" AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" GroupBy="Room_Type" Select="new (key as Room_Type, it as Rooms)" TableName="Rooms">
                    </asp:LinqDataSource>
                </p>
           
                   
               

                <p>
                    <asp:Label ID="Label5" runat="server" Text="No. nursing station :" CssClass="sss"></asp:Label>
                 
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LinqDataSource2" DataTextField="Floor" DataValueField="Floor" Height="16px" Width="172px" AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" GroupBy="Floor" Select="new (key as Floor, it as Rooms)" TableName="Rooms">
                    </asp:LinqDataSource>
                </p>
             
                    
               
             <p>
<asp:Label ID="Label6" runat="server" Text="No. Room :" CssClass="sss"></asp:Label>
                 
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="LinqDataSource3" DataTextField="Room_No_" DataValueField="Room_No_" Height="41px" Width="193px" AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSource3" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" GroupBy="Room_No_" Select="new (key as Room_No_, it as Rooms)" TableName="Rooms" Where="Room_Status == @Room_Status &amp;&amp; Floor == @Floor &amp;&amp; Room_Type == @Room_Type">
                        <WhereParameters>
                            <asp:Parameter DefaultValue="NoOccupy" Name="Room_Status" Type="String" />
                            <asp:ControlParameter ControlID="DropDownList1" Name="Floor" PropertyName="SelectedValue" Type="Byte" />
                            <asp:ControlParameter ControlID="DropDownList3" Name="Room_Type" PropertyName="SelectedValue" Type="String" />
                        </WhereParameters>
                    </asp:LinqDataSource>

             </p>
                    
                
                <br />
                <br />
                <br />
                <p>
               
               
             
                    <asp:Button ID="Button1" runat="server" Height="42px" Text="Admission Add" Width="207px" OnClick="Button1_Click1" CssClass="button" />
               
                    </p>

                </fieldset>
    </form>
            </div>
</body>
</html>
