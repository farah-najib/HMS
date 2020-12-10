<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ABL.aspx.cs" Inherits="ABL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/style/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="main">
    <div id="headerABL">

          <div id="logo2">
        <div id="logo_text">
            <br />
          
        </div>
      </div>



   <div id="menubarddd">
        <ul id="menu">
          <!-- put class="current" in the li tag for the selected page - to highlight which page you're on -->
          <li>
              <asp:LinkButton ID="gotohome" runat="server" OnClick="gotohome_Click">Home</asp:LinkButton> </li>
          <li>
              <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">BMI Calculater</asp:LinkButton>
          </li>
          <li>
              <asp:LinkButton ID="LinkButton1" runat="server"> xxx </asp:LinkButton>  

          </li>
          
          
        </ul>
      </div>
      
    </div>
    <div id="site_content">
      
            <div id="sidebar_container">
                <br />
                
                <br />
                <br />
                <br />
                <br />
               <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" ImageUrl="~/Img/confirm.png" Height="95px" Width="103px" />
                <asp:ImageButton ID="ImageButton3" runat="server" Height="95px" Width="103px" ImageUrl="~/Img/check0.png" OnClick="ImageButton3_Click" Visible="False" />
                <asp:Calendar ID="Calendar1" runat="server" Visible="False" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="185px" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Width="185px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
                  <br />
                <br />
                <br />
                <br />
                 <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Img/large_edit-clear.png" Height="95px" Width="103px" OnClick="ImageButton2_Click" />

	</div>
                
 <div id="content">
    
     
       <h1>  <asp:Label ID="Label4" runat="server" Text="Allowable Blood Loss"></asp:Label></h1>
    


                  <p>
                
    <asp:Label ID="Label11" runat="server" Text="Paient ID :" CssClass="sss"></asp:Label>
               
                    <asp:TextBox ID="TextBox3" runat="server" Height="16px" Width="225px" Enabled="False" CssClass="jjj"></asp:TextBox>

       </p>        

            <p>
 <asp:Label ID="Label12" runat="server" Text="Patient Name :" CssClass="sss"></asp:Label>
               
                    <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="222px" Enabled="False" CssClass="jjj"></asp:TextBox>
                </p>
     
     
     
     
     
     
     
     
     
   
        <p>
        <asp:Label ID="Label1" runat="server" Text="weight    : " CssClass="sss"></asp:Label>
        <asp:TextBox ID="weight" runat="server" CssClass="jjj"></asp:TextBox>
            <asp:Label ID="Label9" runat="server" Text="kg" ForeColor="Maroon"></asp:Label>
            </p>
    
        <p>
        <asp:Label ID="Label2" runat="server" Text="current Hct   : " CssClass="sss" ></asp:Label>
        <asp:TextBox ID="hct" runat="server" CssClass="jjj"></asp:TextBox>
            <asp:Label ID="Label10" runat="server" Text="%" ForeColor="Maroon"></asp:Label>
        </p>
     <p>
        <asp:Label ID="LabelEBV" runat="server" Text="EBV :" CssClass="sss" Visible="False" ></asp:Label>
        <asp:TextBox ID="esitmated" runat="server" CssClass="jjj" BackColor="#99FF99" Visible="False"></asp:TextBox>
         <asp:Label ID="Label88" runat="server" Text="ml" ForeColor="Maroon" Visible="False"></asp:Label>
         </p>
        <p>
        <asp:Label ID="allowable" runat="server" Text="allowable blood loss : " CssClass="sss" Visible="False" ></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="jjj" BackColor="#99FF99" Visible="False"></asp:TextBox>
            <asp:Label ID="Label20" runat="server" Text="ml" ForeColor="Maroon" Visible="False"></asp:Label>
            </p>
        <p> <asp:Label ID="Labelerr" runat="server" Text=" Please enter the required values" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000" Visible="False"></asp:Label></p>
     </div>
        </div>
                   <div id="footer">
      <p></p>
    </div>
		</div>
    </form>
</body>
</html>
