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
        <asp:Label ID="projectName" runat="server" text="Nombre:" cssClass="labelProjectName"></asp:Label><br /><br />
        <div id="divProjectsView">             
            <asp:Label ID="projectStatus" runat="server" text="Estado:" style="width:50%;  float:left"></asp:Label>
            <asp:Label ID="projectLocation" runat="server" text="Ubicación:" value="" style="width:50%;  float:right"></asp:Label>            
        </div><br /><br />
        <div style="width:80%; display: inline-block;" class="form-control">
            <label for="searchDate" id="label" style="width: 25%; float: left">Fecha  </label>                
            <asp:TextBox type="date" runat="server" class="form-control" id="searchDate" style="width:25%;" AutoPostBack="true"/>            
            <asp:SqlDataSource ID="OperationsSQLConsult" runat="server" ConnectionString="<%$ ConnectionStrings:SLOTH_SYSTEM_DB_TURRIALBA %>" SelectCommand="SELECT [idOPERATION], [name] FROM [OPERATION]"></asp:SqlDataSource>
            <br />
            <label for="searchDate" id="label" style="width: 25%; float: left">Operaciones</label>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="OperationsSQLConsult" style="width:25%;" AutoPostBack="true"
                class="form-control" DataTextField="name" DataValueField="idOPERATION">
            </asp:DropDownList>            
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlHoursSample"
            CssClass="table table-striped table-bordered table-hover">
            <Columns>
                <asp:BoundField DataField="hour" HeaderText="hour" SortExpression="hour" />
                <asp:BoundField DataField="temperature" HeaderText="temperature" SortExpression="temperature" />
                <asp:BoundField DataField="humidity" HeaderText="humidity" SortExpression="humidity" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlHoursSample" runat="server" ConnectionString="<%$ ConnectionStrings:SLOTH_SYSTEM_DB_TURRIALBA %>" SelectCommand="SELECT [hour], [temperature], [humidity] FROM [SAMPLE] WHERE ([hour] = @hour)">
            <SelectParameters>
                <asp:FormParameter FormField="searchDate.Text" Name="hour" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="activity" HeaderText="activity" SortExpression="activity" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="Cantidad Muestras" HeaderText="Cantidad Muestras" ReadOnly="True" SortExpression="Cantidad Muestras" />
                <asp:BoundField DataField="alias" HeaderText="alias" SortExpression="alias" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SLOTH_SYSTEM_DB_TURRIALBA %>" SelectCommand="get_samples" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:FormParameter FormField="DropDownList1.Text" Name="fecha" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
