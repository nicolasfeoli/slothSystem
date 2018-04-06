<%@ Page Title="" Language="C#" MasterPageFile="~/AnalystPrincipal.Master" AutoEventWireup="true" CodeBehind="ProjectSelectedByAnalyst.aspx.cs" Inherits="Proyecto3.view.ProjectSelectedByAnalyst" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="breadcrumbs">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">    
                <li class="breadcrumb-item"><a href="/view/analyst.aspx">Principal</a></li>                
                <li class="breadcrumb-item active" aria-current="page">Vista del projecto</li>
            </ol>
        </nav>
    </div>
    <div id="ContentDiv1">                   
        <asp:Label ID="projectName" runat="server" text="Nombre:" cssClass="labelProjectName"></asp:Label><br /><br />
        <div id="divProjectsView">             
            <asp:Label ID="projectStatus" runat="server" text="Estado:" style="width:50%;  float:left"></asp:Label>
            <asp:Label ID="projectLocation" runat="server" text="Ubicación:" value="" style="width:50%;  float:right"></asp:Label>            
        </div><br /><br />
        <div style="width:80%; display: inline-block;" class="form-control">
            <label for="searchDate" id="label" style="width: 25%; float: left">Fecha  </label>                
            <asp:TextBox type="date" runat="server" class="form-control" id="searchDate" style="width:25%;"/>            
            <asp:SqlDataSource ID="OperationsSQLConsult" runat="server" ConnectionString="<%$ ConnectionStrings:SLOTH_SYSTEM_DB_TURRIALBA %>" SelectCommand="SELECT [idOPERATION], [name] FROM [OPERATION]"></asp:SqlDataSource>
            <br />
            <label for="searchDate" id="label" style="width: 25%; float: left">Operaciones</label>           
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="OperationsSQLConsult" style="width:25%;" 
                class="form-control" DataTextField="name" DataValueField="idOPERATION">
            </asp:DropDownList>            
        </div>
    </div>
</asp:Content>
