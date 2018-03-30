<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorPrincipal.Master" AutoEventWireup="true" CodeBehind="analystView.aspx.cs" Inherits="Proyecto3.view.analystView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="breadcrumbs">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/view/administrator.aspx">Principal</a></li>
                <li class="breadcrumb-item active" aria-current="page">Analistas</li>
            </ol>
        </nav>
    </div>    
    <div id="ContentDiv1">
        <a href="/view/newAnalyst.aspx" id="linkNew">Nuevo analista</a>
        <a href="/view/asignAnalyst.aspx" id="linkNew" style="padding-left:3%">Asignar analista</a>
        <br /><br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="AnalystDataView"
            HorizontalAlign="Center" CssClass="table table-striped table-bordered table-hover">
            <Columns>                
                <asp:BoundField DataField="id" HeaderText="Código" Visible="false" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="Nombre" SortExpression="name" />
                <asp:BoundField DataField="identification" HeaderText="Identificación" SortExpression="identification" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:BoundField DataField="userName" HeaderText="Usuario" SortExpression="userName" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Acciones"/>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="AnalystDataView" runat="server" ConnectionString="<%$ ConnectionStrings:SLOTH_SYSTEM_DBConnectionStringSQLServer %>" DeleteCommand="DELETE FROM [USERTB] WHERE [id] = @id" InsertCommand="INSERT INTO [USERTB] ([name], [identification], [email], [userName]) VALUES (@name, @identification, @email, @userName)" SelectCommand="SELECT [id], [name], [identification], [email], [userName] FROM [USERTB] WHERE ([role] = @role)" UpdateCommand="UPDATE [USERTB] SET [name] = @name, [identification] = @identification, [email] = @email, [userName] = @userName WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="identification" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="userName" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="2" Name="role" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="identification" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="userName" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>   
</asp:Content>
