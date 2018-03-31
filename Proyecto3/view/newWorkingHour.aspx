<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorPrincipal.Master" AutoEventWireup="true" CodeBehind="newWorkingHour.aspx.cs" Inherits="Proyecto3.view.newWorkingHour" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="breadcrumbs">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/view/administrator.aspx">Principal</a></li>
                <li class="breadcrumb-item"><a href="/view/workingHours.aspx">Horarios de trabajo</a></li>
                <li class="breadcrumb-item active" aria-current="page">Nuevo horario de descanso</li>
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
        <div id="divForm" style="width:100%;">            
            <div class="form-control" style="float: left; width: 30%;">                                                                                    
                <div style="width:30%;">
                    <label for="projects" style="float:left;">Hora</label>    
                    <br /><br />
                    <div style="width:auto%; float: left;">
                        <asp:TextBox runat="server" TextMode="Time" class="form-control" min="0" max="24" id="hour"/>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="hour" ErrorMessage="Ingrese los minutos" ForeColor="Red"></asp:RequiredFieldValidator>                      
                    </div>                        
                    <br /><br /><br />
                    <label for="projects" style="float:left;">Duración</label>    
                    <br /><br />
                    <div style="width:auto; float: left;">
                        <asp:TextBox runat="server" type="number" class="form-control" min="0" max="60" id="duration"/>   
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="duration" ErrorMessage="Ingrese los minutos" ForeColor="Red"></asp:RequiredFieldValidator>                                           
                    </div>
                </div><br />      
                <div class="form-group" style="width:auto;">
                    <br />
                    <label for="description" style="float:left;">Descripción:</label>
                    <asp:textbox runat="server" TextMode="multiline" class="form-control" Rows="5" Columns="7" id="description"></asp:textbox>
                </div> 
                <asp:Button runat="server" Text="Guardar" style="float: left;" cssClass="btnSave" ID="Button1" OnClick="saveWorkinHour"/>
                <br /><br />
            </div>
        </div>
    </div>    
</asp:Content>
