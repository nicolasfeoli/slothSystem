<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorPrincipal.Master" AutoEventWireup="true" CodeBehind="newCollaborator.aspx.cs" Inherits="Proyecto3.view.newCollaborator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="breadcrumbs">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">    
                <li class="breadcrumb-item"><a href="/view/administrator.aspx">Principal</a></li>
                <li class="breadcrumb-item"><a href="/view/collaborator.aspx">Collaboradores</a></li>
                <li class="breadcrumb-item active" aria-current="page">Nuevo colaborador</li>
            </ol>
        </nav>
    </div>
    <div id="ContentDiv1">
        <div id="divForm" >
            <div class="form-control" style="float: left; width: 50%;">
                <label for="alias">Alias</label>                
                <asp:TextBox type="text" runat="server" class="form-control" id="alias"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="alias" ErrorMessage="Ingrese alias del colaborador" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <div class="form-group">
                    <label for="description">Descripción:</label>
                    <textarea class="form-control" rows="5" id="description"></textarea>
                </div>
            </div>
            <div class="form-control" style="float: right; width: 50%;">
                <label for="position">Puesto</label>                
                <asp:TextBox type="text" runat="server" class="form-control" id="position"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="position" ErrorMessage="Ingrese el puesto" ForeColor="Red"></asp:RequiredFieldValidator>
                
                <br /><br /><br /><br />
                <asp:Button runat="server" Text="Guardar" cssClass="btnSave" ID="Button1" OnClick="saveCollaborator"/>
                <br /><br /><br /><br /><br />
            </div>
        </div>               
    </div>  
</asp:Content>
