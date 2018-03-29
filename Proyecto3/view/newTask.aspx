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
        <asp:Label runat="server"  ID="dangerAlert" class="alert alert-danger" Visible="false" Width="100%">
          <strong>Complete los campos correpondientes</strong>
        </asp:Label><br /><br />
        <asp:Label runat="server" ID="successAlert" class="alert alert-success" Visible="false" Width="100%">
          <strong>Colaborador ingresado con éxito</strong>
        </asp:Label>
        <div id="divForm" >
            <div class="form-control" style="float: left; width: 50%;">
                <label for="name">Nombre</label>                
                <asp:TextBox type="text" runat="server" class="form-control" id="name"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Ingrese el nombre del proyecto" ForeColor="Red"></asp:RequiredFieldValidator>
                
                <label for="sel1">Actividad:</label><br />
                <asp:DropDownList runat="server" class="form-control" ID="activitySelect">
                    <asp:ListItem >Seleccione la actividad</asp:ListItem>
                    <asp:ListItem >Tarea productiva</asp:ListItem>
                    <asp:ListItem >Tarea improductiva</asp:ListItem>
                    <asp:ListItem >Tarea colaborativa</asp:ListItem>                   
                </asp:DropDownList>
                <br /><br /><br /><br /><br /><br /><br />
            </div>
            <div class="form-control" style="float: right; width: 50%;">                
                <div class="form-group">
                    <label for="description">Descripción:</label>
                    <asp:textbox runat="server" TextMode="multiline" class="form-control" Rows="5" id="description"></asp:textbox>
                </div>
                <br /><br /><br />
                <asp:Button runat="server" Text="Guardar" cssClass="btnSave" ID="Button1" OnClick="saveNewTask"/>
                <br /><br /><br />
            </div>
        </div>               
    </div> 
</asp:Content>
