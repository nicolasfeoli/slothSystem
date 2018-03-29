<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Proyecto3.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Sloth System</title>
        <link href="css/administrator.css" rel="stylesheet" type="text/css"/>    
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Krona+One"/>  
        <link href="Content/bootstrap.css" rel="stylesheet" />                      
        <link rel="shortcut icon" href="images/logo.ico" />
    </head>
    <body>        
        <form id="form1" runat="server">
            <asp:Label runat="server"  ID="dangerAlert" class="alert alert-danger" Visible="false" Width="100%">
                <strong><asp:Label runat="server" ID="alertDangerMessage"></asp:Label></strong>
            </asp:Label><br /><br />
            <asp:Label runat="server" ID="successAlert" class="alert alert-success" Visible="false" Width="100%">
                <strong><asp:Label runat="server" ID="alertSuccessMessage"></asp:Label></strong>
            </asp:Label>
            <div id="headerTittle">
                <br />
                <asp:Label ID="LabelTittleLoggin" runat="server" Text="SLOTH SYSTEM"></asp:Label> 
                <asp:Image ID="imageLogo" runat="server" src="images/logo.png"/>
                <br />
            </div>            
            <div class="form-group">
                <label for="usr">Nombre usuario</label>                
                <asp:TextBox type="text" runat="server" class="form-control" id="usr"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="usr" ErrorMessage="Ingrese el nombre de usuario" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <br /><br />
            <div class="form-group">
                <label for="pwd">Contraseña</label>
                <asp:TextBox type="password" runat="server" class="form-control" id="pwd"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pwd" ErrorMessage="Ingrese su contraseña" ForeColor="Red"></asp:RequiredFieldValidator>                                
            </div> 
            <br />
            <div id="buttonLoggin">                
                <asp:Button runat="server" Text="Iniciar sessión" cssClass="btnSave" ID="Button1" OnClick="Button_Loggin"/>
            </div>                       
        </form>
    </body>
</html>
