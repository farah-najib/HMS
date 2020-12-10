<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employ1.aspx.cs" Inherits="Employ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet2.css" rel="stylesheet" />
    <link href="css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.19.custom.min.js"></script>
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

    <script type="text/javascript">
        $(function () {
            $("#Join_Date").datepicker();
        });
</script>




</head>
<body>
    <div id="main">
    <form id="form1" runat="server" class="register">
        <h1>Add New Employee</h1>
     <fieldset class="row1">
                <legend>Background Information 
                </legend>
     
                 <p>
                     <asp:Label ID="Label2" runat="server" Text="Name" CssClass="sss"></asp:Label>
                    <asp:TextBox ID="Name" runat="server" Width="158px" AutoCompleteType="Disabled"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Name">*</asp:RequiredFieldValidator>
                     </p>
         <p>
        <asp:Label ID="Label3" runat="server" Text="Father Name:" CssClass="sss"></asp:Label>
                
            
                    <asp:TextBox ID="Father" runat="server" Width="158px" AutoCompleteType="Disabled"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Father">*</asp:RequiredFieldValidator>
                 </p>
               <p>
                   <asp:Label ID="Label4" runat="server" Text="SarName:" CssClass="sss"></asp:Label>
                
                    <asp:TextBox ID="SarN" runat="server" Width="158px" AutoCompleteType="Disabled" ></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="SarN">*</asp:RequiredFieldValidator>
              </p>
         <p>
        <asp:Label ID="Label5" runat="server" Text="Mother Name & Title:" CssClass="sss"></asp:Label>

               
                    <asp:TextBox ID="Mother" runat="server" Width="158px" AutoCompleteType="Disabled"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Mother">*</asp:RequiredFieldValidator>
               </p>
             
               <p>
                   <asp:Label ID="Label6" runat="server" Text="Place Of Birth :" CssClass="sss"></asp:Label>
              
             <asp:TextBox ID="PBirth" runat="server" Width="158px" AutoCompleteType="Disabled"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="PBirth">*</asp:RequiredFieldValidator>  
                   </p>
         <p>
        <asp:Label ID="Label7" runat="server" Text="Date Of Birth :" CssClass="sss"></asp:Label>
               
                
                    <asp:TextBox ID="txtDate" runat="server" Width="158px" AutoCompleteType="Disabled"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtDate">*</asp:RequiredFieldValidator>
               </p> 
        
                <p>
                     <asp:Label ID="Label8" runat="server" Text="Gender :" CssClass="sss"></asp:Label>


               
               
                    <asp:RadioButton ID="M" runat="server" Text="" GroupName="Gender" />
                    <asp:Label ID="Label19" runat="server" Text="Male" CssClass="gender" ></asp:Label>
                    <asp:RadioButton ID="F" runat="server" Text="" GroupName="Gender" />
                    <asp:Label ID="Label20" runat="server" Text="Female" CssClass="gender" ></asp:Label>

                   
                </p>

       <p>
           <asp:Label ID="Label10" runat="server" Text="Phone:" CssClass="sss"></asp:Label>
                    <asp:TextBox ID="Phone" runat="server" Width="158px" AutoCompleteType="Disabled"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Phone">*</asp:RequiredFieldValidator>
           </p>
         <p>
               <asp:Label ID="Label11" runat="server" Text="Mobile Phone:" CssClass="sss"></asp:Label>
                <asp:TextBox ID="MoPhone" runat="server" Width="158px" AutoCompleteType="Disabled"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="MoPhone">*</asp:RequiredFieldValidator>
           </p>
         <p>
           <asp:Label ID="Label9" runat="server" Text="Address:" CssClass="sss"></asp:Label>
                    <asp:TextBox ID="Address" runat="server" Width="158px" AutoCompleteType="Disabled"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Address">*</asp:RequiredFieldValidator>
       </p>
              
         <p>
             <asp:Label ID="Label12" runat="server" Text="Marital status:" CssClass="sss"></asp:Label>

            
                 <asp:DropDownList ID="Status" runat="server" Height="40px" Width="111px" AutoPostBack="True">
                     <asp:ListItem></asp:ListItem>
                     <asp:ListItem>Single</asp:ListItem>
                     <asp:ListItem>Married</asp:ListItem>
                 </asp:DropDownList>
             </p>
         <p>
             <asp:Label ID="Label13" runat="server" Text="Secretariat :" CssClass="sss"></asp:Label>
                 <asp:TextBox ID="Sec" runat="server" Width="158px" AutoCompleteType="Disabled"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Sec">*</asp:RequiredFieldValidator>
         </p>
        <p>
<asp:Label ID="Label14" runat="server" Text="Constraint :" CssClass="sss"></asp:Label> 

         
                <asp:TextBox ID="Con" runat="server" Width="158px" AutoCompleteType="Disabled"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Con">*</asp:RequiredFieldValidator>
            </p>
         <p>
        <asp:Label ID="Label15" runat="server" Text="Date Grant Id Card :" CssClass="sss"></asp:Label>
           
                 <asp:TextBox ID="DateId" runat="server" Width="158px" AutoCompleteType="Disabled"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="DateId">*</asp:RequiredFieldValidator>
        </p>
        
            <p>
                <asp:Label ID="Label16" runat="server" Text=" Notional No. :" CssClass="sss"></asp:Label>
                 <asp:TextBox ID="Notional" runat="server" Width="158px" AutoCompleteType="Disabled"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Notional">*</asp:RequiredFieldValidator>
                 
            </p>
         <p>
        <asp:Label ID="Label1" runat="server" Text="Join Date :" CssClass="sss"></asp:Label>

                 <asp:TextBox ID="Join_Date" runat="server" style="margin-left: 0px" Width="155px" AutoCompleteType="Disabled"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Join_Date">*</asp:RequiredFieldValidator>
            </p>     
        

            <br />
         <br />
         <br />
         <br />


       
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD EMPLOYEE" CssClass="button"/>
              
     </fieldset>
    
    </form>
</body>
</html>
