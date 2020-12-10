<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ord_Lab.aspx.cs" Inherits="Ord_Lab" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
     <!-- cal-->
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
   <script type="text/javascript" src="js/jquery-ui-1.8.19.custom.min.js"></script>
    <link href="css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
 
    <script type="text/javascript">
        $(function () {
            $("#t_d").datepicker();
        });
</script>

   
    <script type="text/javascript">
        $(function () {
            $("#DateId").datepicker();
        });
</script>
   <!-- end cal-->
    <link href="css/style/style.css" rel="stylesheet" />
<style>
    */*Set's border, padding and margin to 0 for all values*/
{
    padding: 0;
    margin: 0;
    border: 0;
}

.pdp {
        font-size: 8pt;
        clear: both;
        margin: 0;
        padding: 4px;
    }


fieldset.row2
{
    border-top:1px solid #F1F1F1;
    border-right:1px solid #F1F1F1;
    height:220px;
    padding:5px;
    float:left;
   
}

fieldset.row3
{
    border-top:1px solid #F1F1F1;
    padding:5px;
    float:left;
    margin-bottom:15px;
    width:200px;
}
fieldset.row4
{
    border-top:1px solid #F1F1F1;
    padding:5px;
    float:left;
    margin-bottom:30px;
    width:200px;
}
.nss{
    width:140px;
    float: left;
    text-align: left;
    margin-right: 6px;
    margin-top:2px;
}
legend
{
    color: #abda0f;
    padding:2px;
    margin-left: 14px;
    font-weight:bold;
    font-size: 14px;
    font-weight:100;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="main">
    <div id="headerlab">

          <div id="logo2">
        <div id="logo_text">
            <br />
          
        </div>
      </div>




      
    </div>
      
  
    <div id="site_content">
      <div id="sidebar_container">
            <br />
            <br />
          
          <br />
          <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" ImageUrl="~/Img/add_button_new_edit_car_plus_green_equal.png" Width="101px" Height="68px" />
          <br />
          <br />
          <br />
          <asp:ImageButton ID="Refersh" runat="server" ImageUrl="~/Img/refresh_icon.jpg" Width="101px" Height="68px" OnClick="Refersh_Click" />
            <asp:ImageButton ID="ImageButton2" runat="server" Width="101px" Height="68px" ImageUrl="~/Img/Text-Edit-icon.png" Visible="False" OnClick="ImageButton2_Click"/>
          <br />
          <br />
          <br />
          <asp:ImageButton ID="backto" runat="server" ImageUrl="~/Img/g1.png" Width="101px" Height="68px" OnClick="backto_Click" />
        </div>
        

 <div id="content">
    
        <p>
        <asp:Label ID="IDP" runat="server" Text="Patient ID :" CssClass="sss"></asp:Label>
        <asp:TextBox ID="ID" runat="server" AutoCompleteType="Disabled" CssClass="jjj" Enabled="False"></asp:TextBox>
            <asp:ImageButton ID="ImageButton3" runat="server" Height="22px" ImageUrl="~/Img/Magnifying_Glass-128.png" OnClick="ImageButton3_Click" Width="22px" Enabled="False" />
          </p>
     <p>

        <asp:Label ID="Namep" runat="server" Text="Patient Name :" CssClass="sss"></asp:Label>
        <asp:TextBox ID="Nam" runat="server" AutoCompleteType="Disabled" CssClass="jjj" Enabled="False"></asp:TextBox>
            </p>
            <asp:Label ID="massege" runat="server" Text="   Order Has been added successfully" Visible="False" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000"></asp:Label>        
        <p>
        <asp:Label ID="Date" runat="server" Text="Test Date :" CssClass="sss"></asp:Label>
        <asp:TextBox ID="t_d" runat="server" AutoCompleteType="Disabled" CssClass="jjj"></asp:TextBox>
            </p>
        <fieldset class="row2">
                <legend>
                    <asp:Label ID="Haematology" runat="server" Text="Haematology"></asp:Label>
                </legend>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="LinqDataSource1" DataTextField="Test_Name1" DataValueField="Test_Name1" AutoPostBack="True"></asp:CheckBoxList>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" Select="new (Test_Name1)" TableName="Test_Names" Where="ID_Test_Catego == @ID_Test_Catego">
                    <WhereParameters>
                        <asp:Parameter DefaultValue="2" Name="ID_Test_Catego" Type="Byte" />
                    </WhereParameters>
                </asp:LinqDataSource>
            </fieldset>
          
          <fieldset class="row3">
                <legend>
                    <asp:Label ID="Urine" runat="server" Text="Urine"></asp:Label>
                </legend>
        <asp:CheckBoxList ID="CheckBoxUrine" runat="server" AutoPostBack="True" DataSourceID="LinqDataSource2" DataTextField="Test_Name1" DataValueField="Test_Name1"></asp:CheckBoxList>
                
                        
                <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" GroupBy="Test_Name1" Select="new (key as Test_Name1, it as Test_Names)" TableName="Test_Names" Where="ID_Test_Catego == @ID_Test_Catego">
                    <WhereParameters>
                        <asp:Parameter DefaultValue="6" Name="ID_Test_Catego" Type="Byte" />
                    </WhereParameters>
                </asp:LinqDataSource>
                
                    </fieldset>    
           
            <fieldset class="row4">
                <legend>
                    <asp:Label ID="Chemistry" runat="server" Text="Chemistry"></asp:Label>
                </legend>
        <asp:CheckBoxList ID="CheckBoxChemistry" runat="server" AutoPostBack="True" DataSourceID="LinqDataSource3" DataTextField="Test_Name1" DataValueField="Test_Name1"></asp:CheckBoxList>
                <asp:LinqDataSource ID="LinqDataSource3" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" Select="new (Test_Name1)" TableName="Test_Names" Where="ID_Test_Catego == @ID_Test_Catego">
                    <WhereParameters>
                        <asp:Parameter DefaultValue="1" Name="ID_Test_Catego" Type="Byte" />
                    </WhereParameters>
                </asp:LinqDataSource>
               </fieldset>
         </p>     
     
     <br />
     <br /> <br /> <br /> <br /> <br /> 
      
   
      <p style="background-color: #DFFCC2; border: thick dotted #FF6600; height: 134px; width: 581px;" class="pdp">
        <asp:Label ID="Not" runat="server" Text="Note :" CssClass="nss" Font-Size="X-Large" ForeColor="#CC0000"></asp:Label>
        <asp:TextBox ID="Detail" runat="server" AutoCompleteType="Disabled" TextMode="MultiLine" Height="127px" Width="388px" CssClass="jjj" BackColor="#F3F3E9" ></asp:TextBox>
          </p>  
            
        <br />
     <br />

          </div>

    </div>
    <div id="footer">
      <p></p>
    </div>
  </div>
    </form>
</body>
</html>
