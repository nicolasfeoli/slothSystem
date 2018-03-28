<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorPrincipal.Master" AutoEventWireup="true" CodeBehind="workingHours.aspx.cs" Inherits="Proyecto3.view.workingHours" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="breadcrumbs">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">    
                <li class="breadcrumb-item"><a href="/view/administrator.aspx">Principal</a></li>                
                <li class="breadcrumb-item active" aria-current="page">Horarios de trabajo</li>
            </ol>
        </nav>
    </div>
    <div id="ContentDiv1">
        <div id="divForm" style="width:100%;">            
            <div class="form-control" style="float: left; width: 100%;">                                                                                    
                    <div style="width:30%;">
                        <label for="projects" style="float:left;">Hora</label>    
                        <br />
                        <div style="width:40%; float: left;">
                            <asp:TextBox runat="server" type="number" class="form-control" min="0" max="24"/>                        
                        </div>
                        <div style="width:40%; float: right;">
                            <asp:TextBox runat="server" type="number" class="form-control" min="0" max="60"/>
                        </div>
                    </div>
                    <br /><br />
                    <div class="form-group" style="width:30%;">
                        <label for="description" style="float:left;">Descripción:</label>
                        <textarea class="form-control" rows="5" id="description"></textarea>
                    </div>

                    <asp:Button runat="server" Text="Guardar" style="float: left;" cssClass="btnSave" ID="Button1" OnClick="saveWorkinHour"/>
                    <br /><br /><br />                                     
                </div>                         
            </div>
        </div>                   
</asp:Content>
