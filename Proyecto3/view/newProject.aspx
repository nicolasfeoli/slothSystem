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
        <div class="form-group">
            <label for="name">Nombre</label>                
            <asp:TextBox type="text" runat="server" class="form-control" id="name" Width="15%"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Ingrese el nombre del proyecto" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label for="sel1">Select list:</label>
            <select class="form-control" id="sel1">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
            </select>
        </div>
        <div class="form-group">
            <label for="place">Lugar de realización</label>                
            <asp:TextBox type="text" runat="server" class="form-control" id="place" Width="15%"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="place" ErrorMessage="Ingrese el lugar de realización" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label for="initialDate">Fecha de inicio</label>                
            <asp:TextBox type="text" runat="server" class="form-control" id="TextBox1" Width="15%"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="name" ErrorMessage="Ingrese el nombre del proyecto" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label for="description">Descripción:</label>
            <textarea class="form-control" rows="5" id="description"></textarea>
        </div>                
    </div>  
</asp:Content>
