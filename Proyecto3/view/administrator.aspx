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
    <style type="text/css">
         .hidden
         {
             display:none;
         }
    </style>
    <div id="ContentDiv1">             
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idPROJECT" DataSourceID="ProjectAdministratorView" 
            HorizontalAlign="Center" CssClass="table table-striped table-bordered table-hover" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="idPROJECT" HeaderText="Código" SortExpression="idPROJECT" HeaderStyle-CssClass="hidden">                   
                    <ItemStyle CssClass="hidden"/>
                </asp:BoundField>                
                <asp:BoundField DataField="name" HeaderText="Nombre" SortExpression="name" />
                <asp:BoundField DataField="status" HeaderText="Estado" SortExpression="status" />                
                <asp:BoundField DataField="location" HeaderText="Ubicación" SortExpression="location" HeaderStyle-CssClass="hidden">
                    <ItemStyle CssClass="hidden"/>
                </asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="ProjectAdministratorView" runat="server" ConnectionString="<%$ ConnectionStrings:SLOTH_SYSTEM_DB_TURRIALBA %>" SelectCommand="SELECT [name], [status], [idPROJECT], [location] FROM [PROJECT]"></asp:SqlDataSource>                        
    </div>  
</asp:Content>