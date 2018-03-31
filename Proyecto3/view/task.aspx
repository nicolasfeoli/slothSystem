<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorPrincipal.Master" AutoEventWireup="true" CodeBehind="task.aspx.cs" Inherits="Proyecto3.view.task" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="breadcrumbs">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/view/administrator.aspx">Principal</a></li>
                <li class="breadcrumb-item active" aria-current="page">Tareas</li>
            </ol>
        </nav>
    </div>    
    <div id="ContentDiv1">
        <a href="/view/newTask.aspx" id="linkNew">Nueva tarea</a>
        <br /><br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="idTASK" DataSourceID="TaskDataView"
            HorizontalAlign="Center" CssClass="table table-striped table-bordered table-hover">
            <Columns>                
                <asp:BoundField DataField="idTASK" Visible="false" HeaderText="Código" InsertVisible="False" ReadOnly="True" SortExpression="idTASK" />
                <asp:BoundField DataField="name" HeaderText="Nombre" SortExpression="name" />
                <asp:BoundField DataField="activity" HeaderText="Actividad" SortExpression="activity" />
                <asp:BoundField DataField="description" HeaderText="Descripción" SortExpression="description" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Acciones"/>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="TaskDataView" runat="server" ConnectionString="<%$ ConnectionStrings:SLOTH_SYSTEM_DBConnectionStringSQLServer %>" DeleteCommand="DELETE FROM [TASK] WHERE [idTASK] = @idTASK" InsertCommand="INSERT INTO [TASK] ([name], [activity], [description]) VALUES (@name, @activity, @description)" SelectCommand="SELECT * FROM [TASK]" UpdateCommand="UPDATE [TASK] SET [name] = @name, [activity] = @activity, [description] = @description WHERE [idTASK] = @idTASK">
            <DeleteParameters>
                <asp:Parameter Name="idTASK" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="activity" Type="String" />
                <asp:Parameter Name="description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="activity" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="idTASK" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>  
</asp:Content>
