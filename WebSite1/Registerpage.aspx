<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registerpage.aspx.cs" Inherits="Registerpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <style>
        *{
            margin:0px;
            padding:0px;
        }
          #head {
          width:100%;
          height:80px;
          background:#333;
        
           }
          body {
         background: skyblue;
           }
        #nav {
         width:1747.3px; height:80px; border: 1px solid white;  
         float: right;
        }
        .nav1 {
         width: 291px;
         height:80px;
         font-family:cursive;
         font-size: 20px;
         float:left;
        }
        #logo {
         width: 60px;
         height:0px;
         float:left;

        
        }
        

       
     #form1 {
         position:relative;
        
        padding:0px 30px 30px 30px ;
         margin:0px auto;
         
         width: 200px;
         
         width: 200px;
     
     }
     .btn {
      height:30px;
      width:80px;
      
     }
     
    
     .auto-style1 {
         left: 5px;
         top: -2px;
         width: 283px;
     }
     
    
  </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
        
         <div id="head">
             
           <div id="logo">
               
               <img src="Image/log4.png" style="height: 80px; width: 381px" />
             
               
           </div>
             
 
            </div>
        </br>
         </br>
         </br>
        </br>
         </br>
         </br>
        

        <asp:Label ID="Label1" runat="server" Text="Register Here"></asp:Label>
        <br />
        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Text="UserName"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;<br />
&nbsp;
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
&nbsp;
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid Email Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Phone No"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid Phone Number" ForeColor="Red" ValidationExpression="\+?(88)?0?1[3456789][0-9]{8}\b"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Role"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="131px">
                <asp:ListItem>Teacher</asp:ListItem>
                <asp:ListItem>Student</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" CssClass="btn" runat="server" OnClick="Button1_Click" Text="Regsiter" />
            <br />
        </div>
           
    </form>
</body>
</html>
