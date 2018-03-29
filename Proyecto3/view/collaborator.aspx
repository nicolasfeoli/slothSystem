<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorPrincipal.Master" AutoEventWireup="true" CodeBehind="collaborator.aspx.cs" Inherits="Proyecto3.view.collaborator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="breadcrumbs">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/view/administrator.aspx">Principal</a></li>
                <li class="breadcrumb-item active" aria-current="page">Colaboradores</li>
            </ol>
        </nav>
    </div>    
    <div id="ContentDiv1">
        <a href="/view/newCollaborator.aspx" id="linkNew">Nuevo colaborador</a>
        <br /><br /><br />
        <div>
            <div style="width:80%; float: left">
                <asp:GridView ID="CollaboratorsView" runat="server"  HorizontalAlign="Center" 
                    CssClass="table table-striped table-bordered table-hover" DataKeyNames="idCOLLABORATOR">
                    
                </asp:GridView>
            </div>
            <div style="width:20%; float: right">
                <br /><br />
                <asp:Button runat="server" Text="Modificar" cssClass="btnAdd" ID="btnLess"/>
                <asp:Button runat="server" Text="Eliminar" cssClass="btnRemove" ID="btnPlus"/>                                                       
            </div>
        </div>        
    </div>   
</asp:Content>
