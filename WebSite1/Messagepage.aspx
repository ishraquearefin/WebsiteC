<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Messagepage.aspx.cs" Inherits="Messagepage" %>

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
            width: 52%;
            height: 234px;
        }
        .auto-style6 {
            width: 680px;
            height: 24px;
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
         table.center {
           margin-left:auto; 
            margin-right:auto;
          }
   
        .auto-style7 {
            width: 53%;
            height: 36px;
        }
        .auto-style8 {
            width: 196px;
        }
        .auto-style9 {
            width: 196px;
            height: 41px;
        }
        .auto-style10 {
            height: 41px;
        }
        .auto-style13 {
            width: 51%;
            height: 220px;
        }
        .auto-style14 {
            height: 175px;
        }
        .auto-style15 {
            width: 100%;
        }
        .auto-style16 {
            height: 66px;
        }
        .auto-style18 {
            height: 67px;
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
            
            <br />


        

        <asp:Panel ID="Panel1" runat="server" Height="1050px">
            <table class="auto-style1">
                 <tr>
                    <td class="auto-style6">Date &amp; Time</td>
                    <td class="auto-style6">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                     </td>
                </tr>
                <tr>

                    <td class="auto-style6">Type Your Message Here&nbsp;&nbsp; </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox1" runat="server" Height="114px" TextMode="MultiLine" Width="292px"></asp:TextBox>
                    </td>
                </tr>
               
   
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="Send" Height="34px" Width="70px" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Check Your Message Status"></asp:Label>
            <br />
            <br />
            <table class="auto-style7">
                <tr>
                    <td class="auto-style8">Your Id</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="44px" Width="156px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10">
                        <asp:Button ID="Button12" runat="server" Height="36px" Text="Check" Width="63px" OnClick="Button12_Click" />
                        <br />
                        <br />
                        <asp:Label ID="Label8" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
           
            <br />
            <table class="auto-style13">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Panel ID="Panel2" runat="server" Height="140px" Visible="False" Width="782px">
                            <table class="auto-style15">
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Label ID="Label6" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">
                                        <asp:Label ID="Label7" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
           
        </asp:Panel>
        

        

</form>
</body>
</html>
