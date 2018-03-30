<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorPrincipal.Master" AutoEventWireup="true" CodeBehind="collaborator.aspx.cs" Inherits="Proyecto3.view.collaborator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="breadcrumbs">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/view/administrator.aspx">Principal</a></li>
                <li class="breadcrumb-item active" aria-current="page">Colaboradores</li>
            </ol>
        </nav>
    </div>    
    <div id="ContentDiv1">
        <a href="/view/newCollaborator.aspx" id="linkNew">Nuevo colaborador</a>
        <br /><br />
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Codigo" DataSourceID="CollaboratorSelectDB"
            HorizontalAlign="Center" CssClass="table table-striped table-bordered table-hover">
            <Columns>                
                <asp:BoundField DataField="Codigo" Visible="false" HeaderText="Código" InsertVisible="False" ReadOnly="True" SortExpression="Codigo" />
                <asp:BoundField DataField="alias" HeaderText="Alias" SortExpression="alias" />
                <asp:BoundField DataField="position" HeaderText="Puesto" SortExpression="position" />
                <asp:BoundField DataField="description" HeaderText="Descripción del puesto" SortExpression="description" />
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" HeaderText="Acciones"/>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="CollaboratorSelectDB" runat="server" ConnectionString="<%$ ConnectionStrings:SLOTH_SYSTEM_DBConnectionStringSQLServer %>" DeleteCommand="DELETE FROM [COLLABORATOR] WHERE [idCOLLABORATOR] = @idCOLLABORATOR" InsertCommand="INSERT INTO [COLLABORATOR] ([alias], [position], [description]) VALUES (@alias, @position, @description)" SelectCommand="SELECT * FROM [COLLABORATOR]" UpdateCommand="UPDATE [COLLABORATOR] SET [alias] = @alias, [position] = @position, [description] = @description WHERE [idCOLLABORATOR] = @idCOLLABORATOR">
            <DeleteParameters>
                <asp:Parameter Name="idCOLLABORATOR" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="alias" Type="String" />
                <asp:Parameter Name="position" Type="String" />
                <asp:Parameter Name="description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="alias" Type="String" />
                <asp:Parameter Name="position" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="idCOLLABORATOR" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
         
    </div>   
</asp:Content>
