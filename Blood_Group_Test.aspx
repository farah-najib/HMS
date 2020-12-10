<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Blood_Group_Test.aspx.cs" Inherits="Blood_Group_Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
       
    </title>
     <link href="css/style/style.css" rel="stylesheet" />
        <link href="css/tablelabstyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
 
    <div id="mainCBC">
        
    <div id="headerCBC">

          <div id="logo2">
        <div id="logo_text">
            <br />
            <br />
             <br />
            <br />
             <br />
            <br />
             <br />
            <br />
          <h1 class="gggu">  <asp:Label ID="Label5" runat="server" Text="Blood Group"></asp:Label></h1>
            
          
        </div>
              
              
      </div>




      
    </div>
    <div id="site_contentCBC">
                          <div id="sidebar_container">
                  <br />
            <br />
          <br />

                              <asp:Calendar ID="Calendar1" runat="server" Width="167px" Visible="False" Height="206px" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>  
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Img/check0.png" Width="101px" Height="68px" OnClick="ImageButton1_Click"  />
                <br />
            <br />
          <br />
                <asp:ImageButton ID="ImageButton5" runat="server" Width="101px" Height="68px" ImageUrl="~/Img/save-xxl.png" OnClick="ImageButton5_Click"  />
                              <asp:ImageButton ID="ImageButton3" runat="server" Width="101px" Height="68px" ImageUrl="~/Img/refresh_icon.jpg" OnClick="ImageButton3_Click" Visible="False" />
                   <br />
            <br />
          <br />
<asp:ImageButton ID="ImageButton4" runat="server" Width="101px" Height="68px" ImageUrl="~/Img/large_edit-clear.png" />
                    <br />
            <br />
          <br />
                
                <asp:ImageButton ID="print" runat="server" Width="101px" Height="68px" ImageUrl="~/Img/images.jpg" OnClick="print_Click" />
                   <br />
            <br />
          <br />
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Img/g1.png" Width="101px" Height="68px" OnClick="ImageButton2_Click" />

              
	</div>

                
 <div id="contentcbc">
     <asp:Panel ID="Panel1" runat="server" Height="700px">
      <table class="table1">
          
             <tbody>

   
              
     <tr>
                      <th scope="row"><asp:Label ID="Label14" runat="server" Text="Patient ID :"></asp:Label></th>
                
         <td> <asp:TextBox ID="TextID" runat="server" AutoCompleteType="Disabled" CssClass="jjj"></asp:TextBox></td>
                
                  <th scope="row">  <asp:Label ID="Label1" runat="server" Text="Patient Name :"></asp:Label></th>
                
                
                <td> <asp:TextBox ID="TextName" runat="server" AutoCompleteType="Disabled" CssClass="jjj" Enabled="False"></asp:TextBox></td>
          
 
        
            </tr>


             <tr>
                
                   <th scope="row"> <asp:Label ID="Label3" runat="server" Text="Reqest Date &amp; Time :"></asp:Label></th>
               
                <td> <asp:TextBox ID="TextreD" runat="server" AutoCompleteType="Disabled" CssClass="jjj" Enabled="False"></asp:TextBox>   </td>

            
                
                 <th scope="row">   <asp:Label ID="Label4" runat="server" Text="Test Date &amp; Time :"></asp:Label></th>
                
                
                <td>
                    <asp:TextBox ID="TexttD" runat="server" AutoCompleteType="Disabled" CssClass="jjj" Enabled="False"></asp:TextBox>
                 </td>
                  
        
            </tr>
                 </tbody>
             </table>



                   <asp:Label ID="Label42" runat="server" Text="BLOOD GROUP TEST" Visible="False" Font-Size="X-Large"></asp:Label></h1>
        <br />
     <br />
     <br />
     <br />


     <table class="table1">
         <thead>
                    <tr>
                        
                        <th scope="col" abbr="Starter"></th>
                        <th scope="col" abbr="Medium">
                           
                        
                        



                    
                     
                        
                    </tr>
                </thead>
               
         <tbody>

              <tr>
                  
                   

                  <th scope="row">
                      <asp:Label ID="Label8" runat="server" Text="Blood Group:"></asp:Label>
                  </th>
                  <td>
                      
                       <asp:DropDownList ID="blood_g" runat="server" Height="64px" Width="123px" CssClass="jjj">
                     <asp:ListItem>A +</asp:ListItem>
                     <asp:ListItem>A -</asp:ListItem>
                     <asp:ListItem>B +</asp:ListItem>
                     <asp:ListItem>B -</asp:ListItem>
                     <asp:ListItem>O +</asp:ListItem>
                     <asp:ListItem>O -</asp:ListItem>
                     <asp:ListItem>AB +</asp:ListItem>
                     <asp:ListItem>AB -</asp:ListItem>
                     <asp:ListItem Selected="True">None</asp:ListItem>
                 </asp:DropDownList>

                      <asp:TextBox ID="TextBox1" runat="server" Visible="false"></asp:TextBox>
                  </td>
                  
            
            </tr>
             
             </tbody>
             </table>
         </div>

     </asp:Panel>

        </div>
        </div>
    </form>
</body>
</html>
