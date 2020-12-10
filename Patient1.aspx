<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Patient1.aspx.cs" Inherits="Pa" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <title>Add New Patient </title>

    <!-- cal-->
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
   <script type="text/javascript" src="js/jquery-ui-1.8.19.custom.min.js"></script>
    <link href="css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
 
<script type="text/javascript">
    $(function () {
        $("#txtDate").datepicker();
    });
</script>

    <link href="css/default.css" rel="stylesheet" />
    <script type="text/javascript">
        $(function () {
            $("#DateId").datepicker();
        });
</script>
   <!-- end cal-->

    
</head>
<body>
<div id="main">

    <form id="form1" runat="server" class="register"> 


        <h1>Add New Patient</h1>
            
                
            <fieldset class="row1">
                <legend>Background Information 
                </legend>
                  
      <p>
       
          
         
          <asp:Label ID="Label3" runat="server" Text="Name :" CssClass="sss"></asp:Label>
          <asp:TextBox ID="NameP" runat="server" Width="158px" ControlToValidate="NameP"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="NameP"
            ErrorMessage="Name is Required">*</asp:RequiredFieldValidator>
          </p>
                <p>
   
         
          <asp:Label ID="Label4" runat="server" Text="Father Name:" CssClass="sss"></asp:Label>
                    <asp:TextBox ID="Father1" runat="server" Width="158px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Father1">*</asp:RequiredFieldValidator>
          

             
      </p>
               
         
          <p>
              <asp:Label ID="Label5" runat="server" Text="SarName:" CssClass="sss"></asp:Label>
                    <asp:TextBox ID="SarN" runat="server" Width="158px"></asp:TextBox>  
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="SarN">*</asp:RequiredFieldValidator>
              </p>
                <p>
              <asp:Label ID="Label6" runat="server" Text="Mother Name & Title:" CssClass="sss"></asp:Label>
                    <asp:TextBox ID="Mother" runat="server" Width="158px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Mother">*</asp:RequiredFieldValidator>
              </p>


                

                <p>
                    <asp:Label ID="Label7" runat="server" Text="Place Of Birth :" CssClass="sss"></asp:Label>
                    <asp:TextBox ID="PBirth" runat="server" Width="158px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="PBirth">*</asp:RequiredFieldValidator>
                    </p>
                <p>
                                        <asp:Label ID="Label8" runat="server" Text="Date Of Birth" CssClass="sss"></asp:Label>
                    <asp:TextBox ID="txtDate" runat="server" Width="158px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtDate">*</asp:RequiredFieldValidator>
                </p>
                    
                   

              
               
               

           
             <p>
                 <asp:Label ID="Label10" runat="server" Text="Address:" CssClass="sss"></asp:Label>
                 <asp:TextBox ID="Address" runat="server" Width="158px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Address">*</asp:RequiredFieldValidator>
                 </p>
                <p>
                 <asp:Label ID="Label11" runat="server" Text="Phone:" CssClass="sss"></asp:Label>
    <asp:TextBox ID="Phone" runat="server" Width="158px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Phone">*</asp:RequiredFieldValidator>
                
             </p>


     <p>
                    <asp:Label ID="Label9" runat="server" Text="Gender :" CssClass="sss"></asp:Label>
                                   
                
                   <asp:RadioButton ID="M" runat="server"  GroupName="Gender" />
         <asp:Label ID="Label19" runat="server" Text="Male" CssClass="gender" ></asp:Label>

                    <asp:RadioButton ID="F" runat="server" GroupName="Gender"   />
         <asp:Label ID="Label20" runat="server" Text="Female" CssClass="gender" ></asp:Label>

                </p>
            <p>

<asp:Label ID="Label18" runat="server" Text="Blood Group :" CssClass="sss"></asp:Label>

 <asp:DropDownList ID="blood_g" runat="server" Height="37px" Width="132px" CssClass="auto-style2">
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
            </p>
     
           
                
                  
             

            </fieldset>
            <fieldset class="row1">
                <legend>Information sub-
                </legend>
                  <p>
                 <asp:Label ID="Label12" runat="server" Text="Mobile Phone:" CssClass="sss"></asp:Label>
    <asp:TextBox ID="MoPhone" runat="server" Width="158px"></asp:TextBox>

    </p>
             
<p>
                 <asp:Label ID="Label13" runat="server" Text="Marital status:" CssClass="sss"></asp:Label>
    <asp:DropDownList ID="Status" runat="server" Height="16px" Width="107px" AutoPostBack="True">
                     <asp:ListItem>Single</asp:ListItem>
                     <asp:ListItem>Married</asp:ListItem>
                 </asp:DropDownList>


    </p>



                <p>
                 <asp:Label ID="Label14" runat="server" Text="Secretariat :" CssClass="sss"></asp:Label>
           
            
                 <asp:TextBox ID="Sec" runat="server" Width="158px"></asp:TextBox>
                 </p>




                 <p>
                 <asp:Label ID="Label15" runat="server" Text="Constraint :" CssClass="sss"></asp:Label>

            
                <asp:TextBox ID="Con" runat="server" Width="158px"></asp:TextBox>
                
                </p>
                          <p>
<asp:Label ID="Label16" runat="server" Text="Date Of  Grant Id Card :"  CssClass="sss"></asp:Label>
                <asp:TextBox ID="DateId" runat="server" Width="158px"></asp:TextBox>

      
                </p>
            <p>
<asp:Label ID="Label17" runat="server" Text="Notional No. :" CssClass="sss"></asp:Label>

<asp:TextBox ID="Notional" runat="server" Width="158px"></asp:TextBox>

            </p>       
                        
                  
               
            </fieldset>
            <br />

        <br />
        <br />
        <br />
        <br />
        <br />


            <br />

        <br />
        <br />
        <br />
        <br />
        <br />

            <br />

        <br />
        <br />
        <br />
        <br />

         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add_Patient" Width="326px" CssClass="button" Height="48px" />
        
        








     










        <br />

            <br />

        








     










        <br />
        <br />
        <br />
        <br />
        <br />

        








     










        </form>

    
         
        




               
          </div><!--close form_settings-->
 
    
        

<!--close form_settings-->
	

    



   
    
</body>
</html>
