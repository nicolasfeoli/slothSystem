<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorPrincipal.Master" AutoEventWireup="true" CodeBehind="newProject.aspx.cs" Inherits="Proyecto3.view.newProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="breadcrumbs">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">    
                <li class="breadcrumb-item"><a href="/view/administrator.aspx">Principal</a></li>
                <li class="breadcrumb-item"><a href="/view/project.aspx">Proyectos</a></li>
                <li class="breadcrumb-item active" aria-current="page">Nuevo proyecto</li>
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
                <label for="projectLocation">Lugar de realización</label>                
                <asp:TextBox type="text" runat="server" class="form-control" id="projectLocation"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="projectLocation" ErrorMessage="Ingrese el lugar de realización" ForeColor="Red"></asp:RequiredFieldValidator>
                
                <label for="initialDate">Fecha de inicio</label>                
                <asp:TextBox type="date" runat="server" class="form-control" id="initialDate"/>   
                <br /><br /><br />                                                            
            </div>
            <div class="form-control" style="float: right; width: 50%;">
                <label for="sel1">Estado:</label><br />
                <asp:DropDownList runat="server" class="form-control" id="statusSelect">
                    <asp:ListItem>Seleccione el estado</asp:ListItem>
                    <asp:ListItem Value="Concluido">Concluido</asp:ListItem>
                    <asp:ListItem Value="En proceso">En proceso</asp:ListItem>
                    <asp:ListItem Value="Sin fecha inicio">Sin fecha inicio</asp:ListItem>                   
                </asp:DropDownList>
                <br />
                <div class="form-group">
                    <label for="description">Descripción:</label>
                    <asp:textbox runat="server" TextMode="multiline" class="form-control" Rows="7" Columns="7" id="description"></asp:textbox>
                </div>    
            </div>            
        </div>    
        <br /><br /><br />
        <asp:Button runat="server" Text="Guardar" cssClass="btnSave" ID="Button1" OnClick="saveNewProject"/>
        <br /><br /><br />           
    </div>  
</asp:Content>
