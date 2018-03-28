<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorPrincipal.Master" AutoEventWireup="true" CodeBehind="asignAnalyst.aspx.cs" Inherits="Proyecto3.view.asignAnalyst" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="breadcrumbs">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">    
                <li class="breadcrumb-item"><a href="/view/administrator.aspx">Principal</a></li>
                <li class="breadcrumb-item"><a href="/view/analystView.aspx">Analistas</a></li>
                <li class="breadcrumb-item active" aria-current="page">Asignar analista</li>
            </ol>
        </nav>
    </div>
    <div id="ContentDiv1">
        <div id="divForm" style="width:100%;">
            <div class="form-control" style="float: left; width: 50%;">                
                <div>
                    <div style="width:60%; float: left; margin: auto 20%;">
                        <label for="projects" style="float:left;">Proyectos</label>                                
                        <label for="analysts" style="float:right;">Analistas</label>                
                    </div>
                    <div style="width:20%; float: right">                        
                        <asp:Button runat="server" Text="Eliminar" cssClass="btnAdd" ID="btnLess"/>
                        <asp:Button runat="server" Text="Añadir" cssClass="btnRemove" ID="btnPlus"/>                       
                    </div>
                </div>
                <br />                
                <div>   
                    <div style="width: 50%; float:left">
                        <label for="initialDate">Analistas del proyecto</label>                
                    </div>
                    <div style="width: 50%; float:right">
                        <br /><br /><br />
                        <asp:Button runat="server" Text="Asignar" cssClass="btnSave" ID="Button1" OnClick="asignAnalystToProject"/>
                        <br /><br /><br />
                    </div>
                </div>               
            </div>
        </div>               
    </div> 
</asp:Content>
