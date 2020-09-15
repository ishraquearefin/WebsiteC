<%@ Page Language="C#" AutoEventWireup="true" CodeFile="doreply.aspx.cs" Inherits="doreply" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        *{
            margin:0px;
            padding:0px;
        }
         

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
   
        .auto-style1 {
            height: 643px;
        }
        .auto-style2 {
            width: 57%;
            height: 348px;
        }
        .auto-style4 {
            height: 46px;
        }
        .auto-style5 {
            height: 46px;
            width: 285px;
        }
        .auto-style6 {
            width: 285px;
        }
        .auto-style7 {
            height: 91px;
            width: 285px;
        }
        .auto-style8 {
            height: 91px;
        }
        .auto-style9 {
            width: 285px;
            height: 24px;
        }
        .auto-style10 {
            height: 24px;
        }
        .auto-style11 {
            height: 65px;
            width: 285px;
        }
        .auto-style12 {
            height: 65px;
        }
        .auto-style13 {
            width: 285px;
            height: 27px;
        }
        .auto-style14 {
            height: 27px;
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
        
   
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
 
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


        

        <asp:Panel ID="Panel1" runat="server" Height="620px">
            <br />
            <table class="auto-style2">
                <tr>
                    <td class="auto-style5">Student Id</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Recieved Date &amp; Time</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Student Name</td>
                    <td class="auto-style10">
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Message</td>
                    <td class="auto-style12">
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Status</td>
                    <td class="auto-style14">
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Reply</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox1" runat="server" Height="78px" TextMode="MultiLine" Width="281px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button14" runat="server" Height="33px" OnClick="Button14_Click" Text="Send" Width="93px" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:Label ID="Label6" runat="server"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Messagereplypage.aspx">View All message</asp:HyperLink>
        </asp:Panel>

        

</form>
</body>
</html>

