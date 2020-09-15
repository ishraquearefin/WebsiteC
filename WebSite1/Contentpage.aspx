<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contentpage.aspx.cs" Inherits="Contentpage" %>

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
            height: 841px;
        }
        .content {
          font-family:Arial;
        
        }
   
    </style>
</head>
<body style="height: 831px">
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


        

        <asp:Panel ID="Panel1" CssClass="content" runat="server">
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="Button10" runat="server" Text="Upload" OnClick="upload" />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField HeaderText="File">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("file") %>' CommandName="Download" Text='<%# Eval("file") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="size" HeaderText="Size in Bytes" />
                    <asp:BoundField DataField="type" HeaderText="File Type" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </asp:Panel>

        

</form>
</body>
</html>
