<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorPrincipal.Master" AutoEventWireup="true" CodeBehind="workingHours.aspx.cs" Inherits="Proyecto3.view.workingHours" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="breadcrumbs">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">    
                <li class="breadcrumb-item"><a href="/view/administrator.aspx">Principal</a></li>                
                <li class="breadcrumb-item active" aria-current="page">Horarios de trabajo</li>
            </ol>
        </nav>
    </div>
    <div id="ContentDiv1">    
        <a href="/view/newWorkingHour.aspx" id="linkNew">Nuevo horario de descanso</a>
        <br /><br />                
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="idHOUR" DataSourceID="WorkingHourDataView"
            HorizontalAlign="Center" CssClass="table table-striped table-bordered table-hover">
            <Columns>                        
                <asp:BoundField Visible="false" DataField="idHOUR" HeaderText="Código" InsertVisible="False" ReadOnly="True" SortExpression="idHOUR" />
                <asp:BoundField DataField="hour" HeaderText="Hora" SortExpression="hour" />
                <asp:BoundField DataField="duration" HeaderText="Duración" SortExpression="duration" />
                <asp:BoundField DataField="description" HeaderText="Descripción" SortExpression="description" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Acciones"/>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="WorkingHourDataView" runat="server" ConnectionString="<%$ ConnectionStrings:SLOTH_SYSTEM_DBConnectionStringSQLServer %>" DeleteCommand="DELETE FROM [HOUR] WHERE [idHOUR] = @idHOUR" InsertCommand="INSERT INTO [HOUR] ([hour], [duration], [description]) VALUES (@hour, @duration, @description)" SelectCommand="SELECT * FROM [HOUR]" UpdateCommand="UPDATE [HOUR] SET [hour] = @hour, [duration] = @duration, [description] = @description WHERE [idHOUR] = @idHOUR">
            <DeleteParameters>
                <asp:Parameter Name="idHOUR" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter DbType="Time" Name="hour" />
                <asp:Parameter Name="duration" Type="Int32" />
                <asp:Parameter Name="description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Time" Name="hour" />
                <asp:Parameter Name="duration" Type="Int32" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="idHOUR" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>                               
</asp:Content>
