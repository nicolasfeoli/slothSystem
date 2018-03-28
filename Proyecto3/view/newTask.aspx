<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorPrincipal.Master" AutoEventWireup="true" CodeBehind="newTask.aspx.cs" Inherits="Proyecto3.view.newTask" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="breadcrumbs">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">    
                <li class="breadcrumb-item"><a href="/view/administrator.aspx">Principal</a></li>
                <li class="breadcrumb-item"><a href="/view/tasks.aspx">Tareas</a></li>
                <li class="breadcrumb-item active" aria-current="page">Nueva tarea</li>
            </ol>
        </nav>
    </div>
    <div id="ContentDiv1">
        <div id="divForm" >
            <div class="form-control" style="float: left; width: 50%;">
                <label for="name">Nombre</label>                
                <asp:TextBox type="text" runat="server" class="form-control" id="name"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Ingrese el nombre del proyecto" ForeColor="Red"></asp:RequiredFieldValidator>
                
                <label for="initialDate">Colaboradores</label>                
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
                <a href="/view/newColaborator.aspx" id="newOperationLink">Nueva colaborador</a>
            </div>
            <div class="form-control" style="float: right; width: 50%;">
                <label for="sel1">Actividad:</label><br />
                <select class="form-control" id="sel1">
                    <option>Seleccione la actividad</option>
                    <option>Tarea productiva</option>
                    <option>Tarea improductiva</option>
                    <option>Tarea colaborativa</option>                   
                </select>
                <br />
                <div class="form-group">
                    <label for="description">Descripción:</label>
                    <textarea class="form-control" rows="5" id="description"></textarea>
                </div>
                <br /><br /><br />
                <asp:Button runat="server" Text="Guardar" cssClass="btnSave" ID="Button1" OnClick="saveNewTask"/>
                <br /><br /><br />
            </div>
        </div>               
    </div> 
</asp:Content>
