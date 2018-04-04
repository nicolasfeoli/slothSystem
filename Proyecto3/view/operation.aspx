<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorPrincipal.Master" AutoEventWireup="true" CodeBehind="operation.aspx.cs" Inherits="Proyecto3.view.operation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="breadcrumbs">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/view/administrator.aspx">Principal</a></li>
                <li class="breadcrumb-item active" aria-current="page">Operaciones</li>
            </ol>
        </nav>
    </div>    
    <div id="ContentDiv1">
        <a href="/view/newOperation.aspx" id="linkNew">Nueva operación</a>
        <br /><br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="idOPERATION" DataSourceID="OperationDataView"
            HorizontalAlign="Center" CssClass="table table-striped table-bordered table-hover">
            <Columns>                
                <asp:BoundField DataField="idOPERATION" Visible="false" HeaderText="Código" InsertVisible="False" ReadOnly="True" SortExpression="idOPERATION" />
                <asp:BoundField DataField="name" HeaderText="Nombre" SortExpression="name" />
                <asp:BoundField DataField="description" HeaderText="Descripción" SortExpression="description" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Acciones"/>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="OperationDataView" runat="server" ConnectionString="<%$ ConnectionStrings:SLOTH_SYSTEM_DB_TURRIALBA %>" DeleteCommand="DELETE FROM [OPERATION] WHERE [idOPERATION] = @idOPERATION" InsertCommand="INSERT INTO [OPERATION] ([name], [description]) VALUES (@name, @description)" SelectCommand="SELECT * FROM [OPERATION]" UpdateCommand="UPDATE [OPERATION] SET [name] = @name, [description] = @description WHERE [idOPERATION] = @idOPERATION">
            <DeleteParameters>
                <asp:Parameter Name="idOPERATION" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="idOPERATION" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>  
</asp:Content>
