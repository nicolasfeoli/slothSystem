﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorPrincipal.Master" AutoEventWireup="true" CodeBehind="project.aspx.cs" Inherits="Proyecto3.view.project" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="breadcrumbs">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/view/administrator.aspx">Principal</a></li>
                <li class="breadcrumb-item active" aria-current="page">Proyectos</li>
            </ol>
        </nav>
    </div>    
    <div id="ContentDiv1">
        <a href="/view/newProject.aspx" id="linkNew">Nuevo Proyecto</a>
    </div>  
</asp:Content>
