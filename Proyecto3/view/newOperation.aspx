<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorPrincipal.Master" AutoEventWireup="true" CodeBehind="newOperation.aspx.cs" Inherits="Proyecto3.view.newOperation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="breadcrumbs">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">    
                <li class="breadcrumb-item"><a href="/view/administrator.aspx">Principal</a></li>
                <li class="breadcrumb-item"><a href="/view/operation.aspx">Operaciones</a></li>
                <li class="breadcrumb-item active" aria-current="page">Nueva operación</li>
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
            <div class="form-control">
                <label for="name">Nombre</label>                
                <asp:TextBox type="text" runat="server" class="form-control" id="name"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Ingrese el nombre del proyecto" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <div class="form-group">
                    <label for="description">Descripción:</label>
                    <asp:textbox runat="server" TextMode="multiline" class="form-control" Rows="7" Columns="7" id="description"></asp:textbox>
                </div>
                <br /><br />
                <asp:Button runat="server" Text="Guardar" cssClass="btnSave" ID="Button1" OnClick="saveNewOperation"/>                                                                 
            </div>            
        </div>               
    </div> 
</asp:Content>
