<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorPrincipal.Master" AutoEventWireup="true" CodeBehind="asignAnalyst.aspx.cs" Inherits="Proyecto3.view.asignAnalyst" %>
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
        <div id="divForm" >
            <div class="form-control" style="float: left; width: 50%;">
                <label for="name">Nombre</label>                
                <asp:TextBox type="text" runat="server" class="form-control" id="name"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Ingrese el nombre del proyecto" ForeColor="Red"></asp:RequiredFieldValidator>
                <label for="projectPlace">Lugar de realización</label>                
                <asp:TextBox type="text" runat="server" class="form-control" id="projectPlace"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="projectPlace" ErrorMessage="Ingrese el lugar de realización" ForeColor="Red"></asp:RequiredFieldValidator>
                
                <label for="initialDate">Fecha de inicio</label>                
                <asp:TextBox type="date" runat="server" class="form-control" id="initialDate"/>                                    
                <br />
                <label for="initialDate">Operaciones</label>                
                <br />
                <div>
                    <div style="width:80%; float: left">
                        <br /><br /><br /><br />
                    </div>
                    <div style="width:20%; float: right">
                        <asp:Button runat="server" Text="+" cssClass="btnPlus" ID="btnPlus"/>                       
                        <asp:Button runat="server" Text="-" cssClass="btnLess" ID="btnLess"/>
                    </div>
                </div>
                <br />
                <a href="/view/newOperation.aspx" id="newOperationLink">Nueva operación</a>
            </div>
            <div class="form-control" style="float: right; width: 50%;">
                <label for="sel1">Estado:</label><br />
                <select class="form-control" id="sel1">
                    <option>Seleccione el estado</option>
                    <option>Concluido</option>
                    <option>En proceso</option>
                    <option>Sin fecha de inicio</option>                   
                </select>
                <br />
                <div class="form-group">
                    <label for="description">Descripción:</label>
                    <textarea class="form-control" rows="5" id="description"></textarea>
                </div>
                <br /><br /><br />
                <asp:Button runat="server" Text="Guardar" cssClass="btnSave" ID="Button1" OnClick="asignAnalystToProject"/>
                <br /><br /><br />
            </div>
        </div>               
    </div> 
</asp:Content>
