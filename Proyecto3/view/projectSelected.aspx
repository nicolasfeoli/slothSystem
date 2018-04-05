<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorPrincipal.Master" AutoEventWireup="true" CodeBehind="projectSelected.aspx.cs" Inherits="Proyecto3.view.projectSelected" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="breadcrumbs">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">    
                <li class="breadcrumb-item"><a href="/view/administrator.aspx">Principal</a></li>                
                <li class="breadcrumb-item active" aria-current="page">Vista del projecto</li>
            </ol>
        </nav>
    </div>
    <div id="ContentDiv1">                   
        <asp:Label ID="projectName" runat="server" ></asp:Label><br /><br />
        <div id="divProjectsView">             
            <asp:Label ID="projectStatus" runat="server" style="width:50%;  float:left"></asp:Label>
            <asp:Label ID="projectLocation" runat="server" style="width:50%;  float:right"></asp:Label>            
        </div>
    </div>
</asp:Content>
