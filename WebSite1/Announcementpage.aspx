<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Announcementpage.aspx.cs" Inherits="Announcementpage" %>

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
   
        .auto-style5 {
            width: 32%;
            height: 354px;
        }
        .auto-style6 {
            width: 129px;
        }
   
        .auto-style7 {
            width: 100%;
            height: 145px;
        }
        .auto-style8 {
            height: 45px;
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


        

        <asp:Panel ID="Panel1" HorizontalAlign="Center" CssClass="ne" runat="server" Height="1486px">
            <br />
           
            
            
            <table class="auto-style5" >
                <tr>
                    <td class="auto-style6">Comment</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="145px" TextMode="MultiLine" Width="302px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button9"  runat="server" BackColor="Red" Text="Submit" OnClick="Submit" Height="33px" Width="100px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
            </table>
            <br/>
           
            
            <br />
            <br />
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="id" DataSourceID="SqlDataSource1" ForeColor="#333333" Width="492px">
                <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <ItemTemplate>
                    <table class="auto-style7">
                        <tr>
                            <td class="auto-style8">PostedBy
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                &nbsp;Date
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("dateofcomment") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Comment :
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("comment") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
            <br />
            
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"  SelectCommand="SELECT * FROM [com] ORDER BY [dateofcomment] DESC" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"></asp:SqlDataSource>
            
        </asp:Panel>

        

        

        

</form>
</body>
</html>