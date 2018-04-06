<%@ Page Title="" Language="C#" MasterPageFile="~/AnalystPrincipal.Master" Async="true" AutoEventWireup="true" CodeBehind="newSample.aspx.cs" Inherits="Proyecto3.view.newSample" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="breadcrumbs">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">    
                <li class="breadcrumb-item"><a href="/view/analyst.aspx">Principal</a></li>    
                <li class="breadcrumb-item"><a href="/view/sampleHours.aspx">Horas de muestreo</a></li>    
                <li class="breadcrumb-item active" aria-current="page">Vista del projecto</li>
            </ol>
        </nav>
    </div>
    <div id="ContentDiv1">
        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" AutoPostBack="true" Width="30%" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">            
            <asp:ListItem Value="San José, Costa Rica">San José</asp:ListItem>
            <asp:ListItem Value="Alajuela, Costa Rica">Alajuela</asp:ListItem>
            <asp:ListItem Value="Cartago, Costa Rica">Cartago</asp:ListItem>
            <asp:ListItem Value="Heredia, Costa Rica">Heredia</asp:ListItem>
            <asp:ListItem Value="Puntarenas, Costa Rica">Puntarenas</asp:ListItem>
            <asp:ListItem Value="Guanacaste, Costa Rica">Guanacaste</asp:ListItem>
            <asp:ListItem Value="Limón, Costa Rica">Limón</asp:ListItem>
        </asp:DropDownList>
        <div id="divProjectsView">             
            <asp:Label ID="projectName" runat="server" text="Nombre:" style="width:50%;  float:left"></asp:Label>
            <asp:Label ID="sampleHour" runat="server" text="Hora:" style="width:50%;  float:right"></asp:Label>                        
        </div><br /><br />        
        <div id="divProjectsView">             
            <asp:Label ID="projectStatus" runat="server" text="Estado:" style="width:50%;  float:left"></asp:Label>
            <asp:Label ID="projectLocation" runat="server" text="Ubicación:" style="width:50%;  float:right"></asp:Label>            
        </div><br /><br />
        <div id="divProjectsView">             
            <asp:Label ID="humidityLabel" runat="server" text="Humedad:" style="width:33%;  float:left"></asp:Label>        
            <asp:Label ID="currentTime" runat="server" text="Hora del servidor:" style="width:33%;  float:right"></asp:Label>            
            <asp:Label ID="temperatureLabel" runat="server" text="Temperatura:" style="width:33%;  float:right"></asp:Label>
        </div><br /><br />
        <div >

        </div>
    </div>
</asp:Content>
