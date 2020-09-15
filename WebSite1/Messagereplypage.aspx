<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Messagereplypage.aspx.cs" Inherits="Messagereplypage" %>

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
            margin-top: 0px;
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


        

        <asp:Panel ID="Panel1" runat="server" Height="630px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="mId" DataSourceID="SqlDataSource1" ForeColor="#333333" Height="124px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="823px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="mId" HeaderText="Message Id" ReadOnly="True" SortExpression="mId">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="studentid" HeaderText="Student Id" SortExpression="studentid">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="registerdatetime" HeaderText="Date &amp; Time" SortExpression="registerdatetime">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="cname" HeaderText="Student Name" SortExpression="cname">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="compalintdetail" HeaderText="Message" SortExpression="compalintdetail">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Reply Option">
                        <ItemTemplate>
                            <asp:Button ID="Button13" runat="server" CommandArgument='<%# Eval("mId")%>' CssClass="auto-style1" Height="37px" OnClick="Button13_Click" Text="Reply" Width="138px" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="reply" HeaderText="Reply" SortExpression="reply">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [msg] ORDER BY [mId] DESC"></asp:SqlDataSource>
        </asp:Panel>

        

</form>
</body>
</html>