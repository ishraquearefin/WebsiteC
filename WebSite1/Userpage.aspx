<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Userpage.aspx.cs" Inherits="Userpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        *{
            margin:0px;
            padding:0px;
        }
         table {
             border-collapse: collapse;
             border-spacing: 0;
             width: 100%;
             border: 1px solid #ddd;
             }

       th, td {
         text-align: left;
         padding: 8px;
        }

        tr:nth-child(even){background-color: #f2f2f2}
        

        body {
         background: skyblue;
        }
        #head {
          width:100%;
          height:80px;
          background:#333;
        
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
        h2 {
          text-align:center;
        }
        .new {
         height:80px;
         text-align:center;
         color:red;
         font-family:cursive;
         font-size: 50px;
          
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
 
        <div id="head">
             
           <div id="logo">
               <a href="Homepage.aspx">
               <img src="Image/log4.png" style="height: 80px; width: 381px" />
               </a>
               
           </div>
             
            <div id="nav">
             <asp:Button ID="Button6" CssClass="nav1" runat="server" Text="Home" OnClick="Button6_Click" />
             <asp:Button ID="Button5" CssClass="nav1" runat="server" Text="Announcement" OnClick="Button5_Click" />
             <asp:Button ID="Button4"  CssClass="nav1" runat="server" Text="Content" OnClick="Button4_Click" />
             <asp:Button ID="Button3"  CssClass="nav1" runat="server" Text="Message" OnClick="Button3_Click" />
             <asp:Button ID="Button2"  CssClass="nav1" runat="server" Text="User" OnClick="Button2_Click" />
             <asp:Button ID="Button1"  CssClass="nav1" runat="server" OnClick="Button1_Click" Text="Logout" />
             </div>
            </div>
            
            <br />


        

        <asp:Panel ID="Panel1" runat="server">
            
            
        </asp:Panel>

        <div class="new"><asp:Label ID="Label1" runat="server" Text="You are not allowed to enter here"></asp:Label></div>

        

        

</form>
</body>
</html>

