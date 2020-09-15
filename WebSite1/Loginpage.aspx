<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Loginpage.aspx.cs" Inherits="Loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
          background:skyblue;
        
        }
        *{
            margin:0px;
            padding:0px;
        }

        .form {
         margin:70px 250px 250px 100px ;
         position:center;
         padding:50px 50px 50px 50px ;
      
         background:#fff;
         width: 200px;

        
        }
       
        .inpu {
        
         padding: 2px;
         width: 100%;
        }
        
        .inf {
          color : blue;
          
        
        }
        h2 {
          text-align: center;
        
        }
        
      .img-container {
        text-align: center;
      }
        
        
        
        
      
        
        
        .auto-style1 {
            margin: 70px 19px 250px 0px;
            position: absolute;
            padding: 50px 50px 50px 50px;
            background: #fff;
            width: 194px;
            left: 853px;
            top: 85px;
            height: 272px;
        }
        
        
        
        
      
        
        
        .auto-style2 {
            margin-left: 0px;
        }
        
        
        
        
      
        
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
      
           <div id="logo" class="auto-style2">
               
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
               
               <img src="Image/log4.png" class="img-container" /><br />
               
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             
               
           <div class="auto-style1">

        
        <h2> Login Page</h2>
        <br />
        <br />
        <asp:TextBox ID="usertxt" CssClass="inpu" placeholder="Username" runat="server"></asp:TextBox>
         <br />
         <br />

        <asp:TextBox ID="passtxt"  CssClass="inpu" placeholder="Password" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" CssClass="inpu" runat="server" Text="Login" width= "100%" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" CssClass="inf" runat="server" NavigateUrl="~/Registerpage.aspx">Don&#39;t Have an Account? Register Now</asp:HyperLink>
        <br />
        <br />


        
            
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />
               <asp:Panel ID="Panel2" runat="server" CssClass="auto-style2" Height="38px" Width="463px">
               </asp:Panel>
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


        
            
          </div>
       
               
           &nbsp;&nbsp;&nbsp;
       
               
           </div>

                 
       
    </form>
</body>
</html>
