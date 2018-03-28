<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorPrincipal.Master" AutoEventWireup="true" CodeBehind="administrator.aspx.cs" Inherits="Proyecto3.view.administrator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>  
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="breadcrumbs">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">                
                <li class="breadcrumb-item active" aria-current="page">Principal</li>
            </ol>
        </nav>
    </div>
    <div id="ContentDiv1">
        <asp:GridView ID="ProyectoView" runat="server"  HorizontalAlign="Center" CssClass="table table-striped table-bordered table-hover">
        <rowstyle Height="50px" />
        <alternatingrowstyle  Height="50px"/>
        </asp:GridView>
        <br /><br /><br /><br />
        <asp:Button ID="openProyect" cssClass= "buttonOpen" runat="server" Text="Abrir Proyecto"/>
        
    </div>  
</asp:Content>