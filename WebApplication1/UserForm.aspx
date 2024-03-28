<%@ Page Title="Home" Language="C#" AutoEventWireup="true" CodeBehind="UserForm.aspx.cs" Inherits="WebApplication1.UserForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type = "text/javascript" >

        function EnableDisable() {
            alert('Checkbox checked');
                // Handler for main checkbox change event
                $('#<%= mainCheckBox.ClientID %>').change(function () {
                    var isChecked = $(this).is(':checked');
                    $('.childCheckBox').prop('disabled', !isChecked);
                    //  child.disabled = !isChecked;
                });
        });
    </script>
    <style>
</style>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">  
                <tr>  
                    <td class="auto-style3">  
                        <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label></td>  
                    <td>  
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2"></asp:TextBox></td>  
                </tr>  
                <tr>  
                    <td class="auto-style3">  
                        <asp:Label ID="Label2" runat="server" Text="Upload a File"></asp:Label></td>  
                    <td>  
                        <asp:FileUpload ID="FileUpload1" runat="server" /></td>  
                </tr>  
                <tr>
                    <td>
                        <asp:Button ID="filebtn" Text="Upload" runat="server" onclick="filebtn_Click"/>
                    </td>
                    <td>
                        <asp:Label ID="statusLabel" Text="Upload Status:" runat="server" />
                    </td>
                </tr>
            </table> 
        </div>
        <hr />
        <div>
            <asp:Label Text="User Name" runat="server" />
            <asp:TextBox ID="UName" runat="server"/>
            <br />
            <asp:Button ID="btn" Text="Click" runat="server" Onclick="btn_Click"/>
        </div>
            <asp:TextBox ID="txt1" runat="server" />

        
        <br />
        <br />

        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
        <asp:Label ID="date" runat="server" />

        <br />
        <br />

        <asp:LinkButton ID="lnkbtn" Text="Click Me" runat="server" OnClick="Unnamed_Click" />
        <br />
        <asp:Label ID="lbl2" Text="" runat="server" />
        <br />
        <asp:DropDownList DataTextField="Select City" ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem ID="li" Text="" />
            <asp:ListItem>Mangalore</asp:ListItem>
            <asp:ListItem>Bangalore</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Button ID="btn3" Text="Okay" runat="server" OnClick="btn3_Click"/>
        <br />
        <asp:Label ID="lbl3" Text="" runat="server" />
        <hr />
        <div>
            <asp:Label Text="Name :" id="lbl4" runat="server" />
            <asp:TextBox runat="server" ID="txt3" Text="Your Name"/>
            <br />
            <asp:RequiredFieldValidator ErrorMessage="Name is Required" ControlToValidate="txt3" runat="server" />
        </div>
        <br />
        <asp:CheckBox Text="text" ID="check1" runat="server" OnCheckedChanged="Page_Load" Checked="true" AutoPostBack="true"/>
        <asp:CheckBoxList ID="checkl1" RepeatDirection="Horizontal" runat="server" Enabled="true">
                                                                                       <asp:ListItem Value="VISA" Text="Visa" Selected="True" />
                                                                                       <asp:ListItem Value="MC" Text="Master Card" Selected="True" />
                                                                                       <asp:ListItem Value="DISC" Text="Discover" Selected="True" />
                                                                                       <asp:ListItem Value="AMEX" Text="AMEX" Selected="True" />
                                                                                       <asp:ListItem Value="OTHER" Text="Other" Selected="True" />
                                                                                   </asp:CheckBoxList>
        <br />
        <table cellspacing="0px" cellpadding="0px">
            <tr>
                <td>
        <asp:CheckBox ID="mainCheckBox" runat="server" Text="Check" OnCheckedChanged ="javascript:EnableDisable();"/></td>
                <td>:</td>
       <td> <asp:CheckBoxList ID="childCheckBox" runat="server" RepeatDirection="Horizontal" >
            <asp:ListItem ID="checkBox1" runat="server" CssClass="childCheckbox" Selected="True"/>
            <asp:ListItem ID="checkBox2" runat="server" CssClass="childCheckbox" Selected="True"/>
            <asp:ListItem ID="checkBox3" runat="server" CssClass="childCheckbox" Selected="True"/>
        </asp:CheckBoxList>
       </td>

        </tr>
            </table>
        </form>
</body>
</html>
