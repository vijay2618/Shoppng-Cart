<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphSpecificProducts" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div>
        <div style="font-weight: bold; margin-top: 20px">
            <asp:ValidationSummary ID="ValidationSummary1" HeaderText="Please fill the below details" ShowMessageBox="true" ShowSummary="false" runat="server" />
            <span style="font-size: x-large; color: #CD3A15">Sign Up</span>
            <br />
            <br />
            <table style="font-size: small">
                <tr>
                    <td height="30">User Name:
                    </td>
                    <td>
                        <asp:TextBox ID="txtUserName" Width="200" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Please enter Username" ControlToValidate="txtUserName" Text="*" Display="Dynamic" ForeColor="Red" runat="server" />
                        <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtUserName"
                            ID="RegularExpressionValidator3" ValidationExpression="^[\s\S]{8,20}$"
                            runat="server" ErrorMessage="Minimum 8 and Maximum 20 characters required.">
                        </asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td height="30">First Name:
                    </td>
                    <td>
                        <asp:TextBox ID="txtUserFirstName" Width="200" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                            ErrorMessage="Please enter first name" Text="*"
                            ForeColor="Red" ControlToValidate="txtUserFirstName" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td height="30">Last Name:
                    </td>
                    <td>
                        <asp:TextBox ID="txtUserLastName" Width="200" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Text="*" ForeColor="Red" Display="Dynamic"
                            ErrorMessage="Please provide last name" ControlToValidate="txtUserLastName" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td height="30">Email Id:
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmailId" Width="200" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ErrorMessage="Please enter email id" Text="*" ForeColor="Red" ControlToValidate="txtEmailId" runat="server" />
                        <asp:RegularExpressionValidator ID="revEmailId" ForeColor="Red" ControlToValidate="txtEmailId"
                            ValidationExpression="^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"
                            runat="server" ErrorMessage="Email Id is not in correct format">Invalid</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td height="40">Address:
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddress" Width="200" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td height="30">Password:
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" Width="200" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ErrorMessage="Please enter password" Text="*" ForeColor="Red" ControlToValidate="txtPassword" runat="server" />
                      
                    </td>
                </tr>

                <tr>
                    <td height="40">Confirm Password:
                    </td>
                    <td>
                        <asp:TextBox ID="txtConfirmPassword" Width="200" Text="" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ErrorMessage="Please enter confirm password" Display="Dynamic" Text="*" ForeColor="Red" ControlToValidate="txtConfirmPassword" runat="server" />
                        <asp:CompareValidator ID="cvConfirmPassword" runat="server" ControlToCompare="txtPassword"
                            ControlToValidate="txtConfirmPassword" Display="Dynamic" Operator="Equal" Type="String"
                            ErrorMessage="The Password and Confirm Password must be same" Text="Must be same as Password" />

                    </td>
                </tr>
                <tr>
                    <td height="30"></td>
                    <td>
                        <asp:Button ID="btnSignUp" Text="SignUp" runat="server" OnClick="btnSignUp_Click"
                            BackColor="#0077AD" ForeColor="White" Width="180" Height="30" Font-Bold="true"></asp:Button>
                    </td>
                </tr>
            </table>

        </div>

    </div>

</asp:Content>

