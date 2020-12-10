<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CBC_Test.aspx.cs" Inherits="CBC_Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> CBC Test </title>





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
          <h1 class="gggu">  <asp:Label ID="Label5" runat="server" Text="CBC Test"></asp:Label></h1>
            
          
        </div>
              
              
      </div>




      
    </div>
    <div id="site_contentCBC">
                          <div id="sidebar_container">
                  <br />
            <br />
          <br />
                              
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Img/check0.png" Width="101px" Height="68px" OnClick="ImageButton1_Click" ToolTip="Confirm" />
                              
                <br />
            <br />
          <br />
                <asp:ImageButton ID="ImageButton5" runat="server" Width="101px" Height="68px" ImageUrl="~/Img/save-xxl.png" OnClick="ImageButton5_Click" ToolTip="Save" />
                     <asp:Calendar ID="Calendar1" runat="server" Width="167px" Visible="False" Height="206px" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>         
                   <br />
            <br />
          <br />
<asp:ImageButton ID="ImageButton4" runat="server" Width="101px" Height="68px" ImageUrl="~/Img/large_edit-clear.png" OnClick="ImageButton4_Click" ToolTip="Clear" />
                               <asp:ImageButton ID="ImageButton3" runat="server" Width="101px" Height="68px" ImageUrl="~/Img/refresh_icon.jpg" OnClick="ImageButton3_Click" Visible="False" ToolTip="Refresh"/>
                             
                    <br />
            <br />
          <br />
                
                <asp:ImageButton ID="print" runat="server" Width="101px" Height="68px" ImageUrl="~/Img/images.jpg" OnClick="print_Click" Enabled="False" ToolTip="Print" />
                   <br />
            <br />
          <br />
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Img/g1.png" Width="101px" Height="68px" OnClick="ImageButton2_Click" ToolTip="Back to Home" />

              
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

                 <tr>

                    <th scope="row">   <asp:Label ID="Label15" runat="server" Text="Patient age:"></asp:Label></th>
                
                
                <td>
                    <asp:TextBox ID="age77" runat="server" AutoCompleteType="Disabled" CssClass="jjj" Enabled="False"></asp:TextBox>
                 </td>
                  
        
            </tr>
                 </tbody>
             </table>
         <br />
         <br />
         <h1>
             <asp:Label ID="Label42" runat="server" Text="CBC Test" Visible="False"></asp:Label></h1>
        <br />
     <br />
     <br />
     <br />


     <table class="table1">
         <thead>
                    <tr>
                        
                        <th scope="col" abbr="Starter"></th>
                        <th scope="col" abbr="Medium">
                            <asp:Label ID="Label16" runat="server" Text="Result"></asp:Label></th>
                        <th scope="col" abbr="Business">
                            <asp:Label ID="Label2" runat="server" Text="Reference Range"></asp:Label></th>
                        



                        <th scope="col" abbr="Starter"></th>
                        <th scope="col" abbr="Medium">
                            <asp:Label ID="Label17" runat="server" Text="Result"></asp:Label></th>
                        <th scope="col" abbr="Business">
                            <asp:Label ID="Label18" runat="server" Text="Reference Range"></asp:Label></th>
                        
                    </tr>
                </thead>
               
         <tbody>

              <tr>
                  
                    <th scope="row">  <asp:Label ID="Label6" runat="server" Text="WBS :"></asp:Label></th>
                  
                   <td>
                       <asp:TextBox ID="TextWBS" runat="server" AutoCompleteType="Disabled" CssClass="jjj" Height="25px" Width="62px" OnTextChanged="TextWBS_TextChanged"></asp:TextBox>
                       <asp:Label ID="Lowhieghwbc" runat="server"></asp:Label>
                  </td>
                
                <td><asp:Label ID="NormalWBS" runat="server" Text=""></asp:Label> </td>
                <th scope="row">  <asp:Label ID="Label19" runat="server" Text="RCB:"></asp:Label></th>
        
                <td ><asp:TextBox ID="TextRCB" runat="server" AutoCompleteType="Disabled" CssClass="jjj" Height="25px" Width="62px" OnTextChanged="TextRCB_TextChanged"></asp:TextBox>
                    <asp:Label ID="LHRcb" runat="server"></asp:Label>
                </td>
                  
        
                <td><asp:Label ID="NormalRCB" runat="server" Text=""></asp:Label> </td>

        
            </tr>


              <tr>
                 
                    <th scope="row" colspan="3">  <asp:Label ID="Label7" runat="server" Text="Differential Leukocyte :"></asp:Label></th>
                  
                
               

                 <th scope="row"> <asp:Label ID="Label20" runat="server" Text="HGB :"></asp:Label></th>
                <td class="auto-style7">
                    <asp:TextBox ID="TextHemo" runat="server" AutoCompleteType="Disabled" CssClass="jjj" Height="25px" Width="62px"></asp:TextBox>
                    <asp:Label ID="Label29" runat="server" Text=""></asp:Label>
                  </td>

        
                <td class="auto-style7">
                    <asp:Label ID="NormalHemo" runat="server" Text=""></asp:Label>
                  </td>

        
            </tr>

             <tr>
                  
                    <th scope="row">  <asp:Label ID="Label8" runat="server" Text="Neutro :"></asp:Label></th>
                  
                 <td> <asp:TextBox ID="TextNeutro" runat="server" AutoCompleteType="Disabled" CssClass="jjj" Height="25px" Width="62px" OnTextChanged="TextNeutro_TextChanged"></asp:TextBox>
                     <asp:Label ID="Label30" runat="server" Text=""></asp:Label>
                 </td>
               <td><asp:Label ID="NormalNeutro" runat="server" Text=""></asp:Label></td>

        
                

                <th scope="row"> <asp:Label ID="Label21" runat="server" Text="HCT :"></asp:Label></th>
                <td><asp:TextBox ID="TextHema" runat="server" AutoCompleteType="Disabled" CssClass="jjj" Height="25px" Width="62px" OnTextChanged="TextHema_TextChanged"></asp:TextBox>
                    <asp:Label ID="Label31" runat="server" Text=""></asp:Label>
                </td>
                <td><asp:Label ID="NormalHema" runat="server" Text=""></asp:Label> </td>

        
            </tr>
             <tr>
                  
                      <th scope="row"><asp:Label ID="Label9" runat="server" Text="Lympho :"></asp:Label>
                  </th>
                 <td class="auto-style12">
                     <asp:TextBox ID="TextLympho" runat="server" AutoCompleteType="Disabled" CssClass="jjj" Height="25px" Width="62px"></asp:TextBox>
                     <asp:Label ID="Label32" runat="server" Text=""></asp:Label>
                  </td>
                <td>
                    <asp:Label ID="NormalLympho" runat="server" Text=""></asp:Label>
                  </td>

        
               

                 <th scope="row"><asp:Label ID="Label22" runat="server" Text="MCV :"></asp:Label></th>
                <td class="auto-style7">
                    <asp:TextBox ID="TextMCV" runat="server" AutoCompleteType="Disabled" CssClass="jjj" Height="25px" Width="62px"></asp:TextBox>
                    <asp:Label ID="Label33" runat="server" Text=""></asp:Label>
                  </td>

        
                <td>
                    <asp:Label ID="NormalMCV" runat="server" Text=""></asp:Label>
                  </td>

        
            </tr>
             <tr>
                  <th scope="row">
                      <asp:Label ID="Label10" runat="server" Text="Mono :"></asp:Label>
                  </th>
                 <td>
                     <asp:TextBox ID="TextMono" runat="server" AutoCompleteType="Disabled" CssClass="jjj" Height="25px" Width="62px"></asp:TextBox>
                     <asp:Label ID="Label34" runat="server" Text=""></asp:Label>
                  </td>
                <td>
                    <asp:Label ID="NormalMono" runat="server" Text=""></asp:Label>
                  </td>

        
              
               <th scope="row">  <asp:Label ID="Label23" runat="server" Text="MCH:"></asp:Label></th>
        
                <td>
                    <asp:TextBox ID="TextMCH" runat="server" AutoCompleteType="Disabled" CssClass="jjj" Height="25px" Width="62px"></asp:TextBox>
                    <asp:Label ID="Label35" runat="server" Text=""></asp:Label>
                  </td>

        
                <td>
                    <asp:Label ID="NormalMCH" runat="server" Text=""></asp:Label>
                  </td>

        
            </tr>
             <tr>
                  <th scope="row">
                      <asp:Label ID="Label11" runat="server" Text="Eosino :"></asp:Label>
                  </th>
                 <td>
                     <asp:TextBox ID="TextEosino" runat="server" AutoCompleteType="Disabled" CssClass="jjj" Height="25px" Width="62px"></asp:TextBox>
                     <asp:Label ID="Label36" runat="server" Text=""></asp:Label>
                  </td>
                <td>
                    <asp:Label ID="NormalEosino" runat="server" Text=""></asp:Label>
                  </td>
               <th scope="row">  <asp:Label ID="Label24" runat="server" Text="MCHC :"></asp:Label></th>
        
              

        
                <td>
                    <asp:TextBox ID="TextMCHC" runat="server" AutoCompleteType="Disabled" CssClass="jjj" Height="25px" Width="62px"></asp:TextBox>
                    <asp:Label ID="Label37" runat="server" Text=""></asp:Label>
                  </td>

        
                <td>
                    <asp:Label ID="NormalMCHC" runat="server" Text=""></asp:Label>
                  </td>

        
            </tr>
             <tr>
                  <th scope="row">
                      <asp:Label ID="Label12" runat="server" Text="Baso :"></asp:Label>
                  </th>
                 <td>
                     <asp:TextBox ID="TextBaso" runat="server" AutoCompleteType="Disabled" CssClass="jjj" Height="25px" Width="62px"></asp:TextBox>
                     <asp:Label ID="Label38" runat="server" Text=""></asp:Label>
                  </td>
                <td class="auto-style13">
                    <asp:Label ID="NormalBaso" runat="server" Text=""></asp:Label>
                  </td>

        
                
              <th scope="row">   <asp:Label ID="Label25" runat="server" Text="RDW:"></asp:Label></th>
        
                <td>
                    <asp:TextBox ID="TextRDW" runat="server" AutoCompleteType="Disabled" CssClass="jjj" Height="25px" Width="62px" OnTextChanged="TextRDW_TextChanged"></asp:TextBox>
                    <asp:Label ID="Lhrdw" runat="server"></asp:Label>
                  </td>

        
                <td>
                    <asp:Label ID="NormalRDW" runat="server" Text=""></asp:Label>
                  </td>

        
            </tr>
             <tr>
                  <th scope="row">
                      <asp:Label ID="Label13" runat="server" Text="Bands :"></asp:Label>
                  </th>
                 <td>
                     <asp:TextBox ID="TextBands" runat="server" AutoCompleteType="Disabled" CssClass="jjj" Height="25px" Width="62px"></asp:TextBox>
                     <asp:Label ID="Label40" runat="server" Text=""></asp:Label>
                  </td>
                <td>
                    <asp:Label ID="NormalBands" runat="server" Text=""></asp:Label>
                  </td>

        
               

               <th scope="row">  <asp:Label ID="Label26" runat="server" Text="PLTS :"></asp:Label></th>
                <td> <asp:TextBox ID="TextPlate" runat="server" AutoCompleteType="Disabled" CssClass="jjj" Height="25px" Width="62px" OnTextChanged="TextPlate_TextChanged"></asp:TextBox> 
                    <asp:Label ID="Lhplts" runat="server"></asp:Label>
                </td>

        
                <td> <asp:Label ID="NormalPlate" runat="server" Text=""></asp:Label></td>

        
            </tr>
             </tbody>
             </table>
     <br />
     <br />
        
    
   
    
        
        
   </div>

     </asp:Panel>

        </div>
        </div>
            
		
        
    
        
    </form>
    </body>
</html>
