<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorPrincipal.Master" AutoEventWireup="true" CodeBehind="project.aspx.cs" Inherits="Proyecto3.view.project" %>
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
        <br /><br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="idPROJECT" DataSourceID="ProjectDataView"
            HorizontalAlign="Center" CssClass="table table-striped table-bordered table-hover">
            <Columns>                
                <asp:BoundField DataField="idPROJECT" Visible="false" HeaderText="Código" InsertVisible="False" ReadOnly="True" SortExpression="idPROJECT" />
                <asp:BoundField DataField="name" HeaderText="Nombre" SortExpression="name" />
                <asp:BoundField DataField="status" HeaderText="Estado" SortExpression="status" />
                <asp:BoundField DataField="location" HeaderText="Lugar de realización" SortExpression="location" />
                <asp:BoundField DataField="initialDate" HeaderText="Fecha inicial" SortExpression="initialDate" />
                <asp:BoundField DataField="description" HeaderText="Descripción" SortExpression="description" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Acciones"/>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="ProjectDataView" runat="server" ConnectionString="<%$ ConnectionStrings:SLOTH_SYSTEM_DBConnectionStringSQLServer %>" DeleteCommand="DELETE FROM [PROJECT] WHERE [idPROJECT] = @idPROJECT" InsertCommand="INSERT INTO [PROJECT] ([name], [status], [location], [initialDate], [description]) VALUES (@name, @status, @location, @initialDate, @description)" SelectCommand="SELECT * FROM [PROJECT]" UpdateCommand="UPDATE [PROJECT] SET [name] = @name, [status] = @status, [location] = @location, [initialDate] = @initialDate, [description] = @description WHERE [idPROJECT] = @idPROJECT">
            <DeleteParameters>
                <asp:Parameter Name="idPROJECT" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="location" Type="String" />
                <asp:Parameter DbType="Date" Name="initialDate" />
                <asp:Parameter Name="description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="location" Type="String" />
                <asp:Parameter DbType="Date" Name="initialDate" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="idPROJECT" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>  
</asp:Content>
