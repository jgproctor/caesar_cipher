<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApp1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    body{

        background-color: lightcoral;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <h1>Encryption and Decryption Using Caesar Cipher</h1>
        <p>
            This application will encrypt and decrypt text through a Caesar Cipher. More info about the Caesar Cipher can be found at this address: <a href="https://www.programmingalgorithms.com/algorithm/caesar-cipher">Caesar Cipher</a></p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Plain Text:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Key:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="Encrypt" runat="server" OnCheckedChanged="Encrypt_CheckedChanged" GroupName="Algorithm" Text="Encrypt" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p style="margin-left: 560px">
            <asp:Button ID="Button1" runat="server" Text="Generate" OnClick="Button1_Click" />
        </p>
        <asp:Label ID="Label3" runat="server" Text="Encrypted Text:"></asp:Label>
    &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="Decrypt" runat="server" OnCheckedChanged="Decrypt_CheckedChanged" Checked="True" GroupName="Algorithm" Text="Decrypt" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server"></asp:Label>
        <br />
        <br />
        Decrypted Text:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </form>
    </body>
</html>
