<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorPrincipal.Master" AutoEventWireup="true" CodeBehind="newAnalyst.aspx.cs" Inherits="Proyecto3.view.newAnalyst" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="breadcrumbs">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">    
                <li class="breadcrumb-item"><a href="/view/administrator.aspx">Principal</a></li>
                <li class="breadcrumb-item"><a href="/view/analystView.aspx">Analistas</a></li>
                <li class="breadcrumb-item active" aria-current="page">Nuevo analista</li>
            </ol>
        </nav>
    </div>
    <div id="ContentDiv1">
        <asp:Label runat="server"  ID="dangerAlert" class="alert alert-danger" Visible="false" Width="100%">
            <strong><asp:Label runat="server" ID="alertDangerMessage"></asp:Label></strong>
        </asp:Label><br /><br />
        <asp:Label runat="server" ID="successAlert" class="alert alert-success" Visible="false" Width="100%">
            <strong><asp:Label runat="server" ID="alertSuccessMessage"></asp:Label></strong>
        </asp:Label>
        <div id="divForm" >            
            <div class="form-control" style="float: left; width: 50%;">                
                <label for="name">Nombre</label>                
                <asp:TextBox type="text" runat="server" class="form-control" id="name"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Ingrese el nombre del proyecto" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <label for="userId">Identificación</label>                
                <asp:TextBox type="text" runat="server" class="form-control" id="userId"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="userId" ErrorMessage="Ingrese su número de identificación" ForeColor="Red"></asp:RequiredFieldValidator>
                <label for="userName">Nombre de usuario</label>                
                <asp:TextBox type="text" runat="server" class="form-control" id="userName"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="userName" ErrorMessage="Ingrese el nombre de usuario" ForeColor="Red"></asp:RequiredFieldValidator>                                
                <br />
                <asp:CheckBox id="isAnalystCheckBox" Text="Es administrador" Checked="False" runat="server"/>    
            </div>
            <div class="form-control" style="float: right; width: 50%;">
               <label for="userEmail">Email</label>                
                <asp:TextBox type="text" runat="server" class="form-control" id="userEmail"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="userEmail" ErrorMessage="Ingrese su correo electrónico" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <label for="userPassword">Contraseña</label>                
                <asp:TextBox type="password" runat="server" class="form-control" id="userPassword"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="userPassword" ErrorMessage="Ingrese su contraseña" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <label for="userPasswordConfirmation">Confirme su contraseña</label>                
                <asp:TextBox type="password" runat="server" class="form-control" id="userPasswordConfirmation"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="userPasswordConfirmation" ErrorMessage="Vuelva a ingresar su contraseña" ForeColor="Red"></asp:RequiredFieldValidator>                
                <br />
                <asp:Button runat="server" Text="Guardar" cssClass="btnSave" ID="Button1" OnClick="saveNewAnalyst"/>               
            </div>                        
        </div>    
        <br /><br />        
    </div> 
</asp:Content>
