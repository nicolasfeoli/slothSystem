<%@ Page Title="" Language="C#" MasterPageFile="~/AnalystPrincipal.Master" Async="true" AutoEventWireup="true" CodeBehind="newSample.aspx.cs" Inherits="Proyecto3.view.newSample" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="breadcrumbs">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">    
                <li class="breadcrumb-item"><a href="/view/analyst.aspx">Principal</a></li>    
                <li class="breadcrumb-item"><a href="/view/sampleHours.aspx">Horas de muestreo</a></li>    
                <li class="breadcrumb-item active" aria-current="page">Vista del projecto</li>
            </ol>
        </nav>
    </div>
    <div id="ContentDiv1">
        <div id="divProjectsView" style="width:40%;">
            <label id="label" style="float:left;">Provincia</label>
            <asp:DropDownList ID="DropDownList1" runat="server" style="float: right;" class="form-control" AutoPostBack="true" Width="50%" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">            
                <asp:ListItem Value="San José, Costa Rica">San José</asp:ListItem>
                <asp:ListItem Value="Alajuela, Costa Rica">Alajuela</asp:ListItem>
                <asp:ListItem Value="Cartago, Costa Rica">Cartago</asp:ListItem>
                <asp:ListItem Value="Heredia, Costa Rica">Heredia</asp:ListItem>
                <asp:ListItem Value="Puntarenas, Costa Rica">Puntarenas</asp:ListItem>
                <asp:ListItem Value="Guanacaste, Costa Rica">Guanacaste</asp:ListItem>
                <asp:ListItem Value="Limón, Costa Rica">Limón</asp:ListItem>
            </asp:DropDownList>
        </div><br /><br /><br />
        <div id="divProjectsView">             
            <asp:Label ID="projectName" runat="server" text="Nombre:" style="width:50%;  float:left"></asp:Label>
            <asp:Label ID="sampleHour" runat="server" text="Hora:" style="width:50%;  float:right"></asp:Label>                        
        </div><br /><br />        
        <div id="divProjectsView">             
            <asp:Label ID="projectStatus" runat="server" text="Estado:" style="width:50%;  float:left"></asp:Label>
            <asp:Label ID="projectLocation" runat="server" text="Ubicación:" style="width:50%;  float:right"></asp:Label>            
        </div><br /><br />
        <div id="divProjectsView">             
            <asp:Label ID="humidityLabel" runat="server" text="Humedad:" style="width:33%;  float:left"></asp:Label>        
            <asp:Label ID="currentTime" runat="server" text="Hora del servidor:" style="width:33%;  float:right"></asp:Label>            
            <asp:Label ID="temperatureLabel" runat="server" text="Temperatura:" style="width:33%;  float:right"></asp:Label>
        </div><br /><br />
        <asp:HiddenField ID="HiddenFieldHumidiy" runat="server" />
        <asp:HiddenField ID="HiddenFieldTemperature" runat="server" />
        <div class="form-control">
            <div id="divProjectsView" style="width:40%;">
                <label id="label" style="float:left;">Operación</label>
                <asp:DropDownList ID="DropDownList2" runat="server" style="float: right;" Width="60%" class="form-control" DataSourceID="SqlOperationSampleAnalyst" 
                    DataTextField="name" DataValueField="idOPERATION">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlOperationSampleAnalyst" runat="server" ConnectionString="<%$ ConnectionStrings:SLOTH_SYSTEM_DB_TURRIALBA %>" SelectCommand="SELECT [idOPERATION], [name] FROM [OPERATION]"></asp:SqlDataSource>
            </div><br /><br />
            <div id="divProjectsView" style="width:40%;">
                <label id="label" style="float:left;">Actividad</label>
                <asp:DropDownList ID="DropDownList3" runat="server" style="float: right;" class="form-control" Width="60%">
                    <asp:ListItem Value="TP">Tarea productiva</asp:ListItem>
                    <asp:ListItem Value="TI">Tarea improductiva</asp:ListItem>
                    <asp:ListItem Value="TC">Tarea colaborativa</asp:ListItem>
                </asp:DropDownList>                
            </div><br /><br />
            <div id="divProjectsView" style="width:40%;">
                <label id="label" style="float:left;">Tarea</label>                
                <asp:DropDownList ID="DropDownList4" runat="server" style="float: right;" Width="60%" class="form-control" DataSourceID="SqlTaskSampleAnalyst" 
                    DataTextField="name" DataValueField="idTASK">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlTaskSampleAnalyst" runat="server" ConnectionString="<%$ ConnectionStrings:SLOTH_SYSTEM_DB_TURRIALBA %>" SelectCommand="SELECT [idTASK], [name] FROM [TASK]"></asp:SqlDataSource>                
            </div><br /><br />
            <div id="divProjectsView" style="width:40%;">
                <label id="label" style="float:left;">Colaborador</label>                
                <asp:DropDownList ID="DropDownList5" runat="server" style="float: right;" Width="60%" class="form-control"  DataSourceID="SqlCollaboratorSampleAnalyst" 
                    DataTextField="alias" DataValueField="idCOLLABORATOR">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlCollaboratorSampleAnalyst" runat="server" ConnectionString="<%$ ConnectionStrings:SLOTH_SYSTEM_DB_TURRIALBA %>" SelectCommand="SELECT [idCOLLABORATOR], [alias] FROM [COLLABORATOR]"></asp:SqlDataSource>                
            </div><br /><br />
            <label id="label" style="float:left;">Descripción</label><br />
            <asp:TextBox ID="description" runat="server" TextMode="MultiLine" CssClass="form-control" Width="40%" Rows="7"></asp:TextBox>
            <br /><br />
            <asp:Button runat="server" Text="Guardar" cssClass="btnSave" ID="Button1" OnClick="saveNewSample"/>
            <br /><br />
    </div>
   <br /><br />

    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.0.3.min.js"></script>
    <script>
        var uri = 'https://api.openweathermap.org/data/2.5/weather?q='.concat($('#<%=DropDownList1.ClientID %> option:selected').text()).concat('&APPID=a92aac927f229adb88e4efb0c25ddcb8');

        $(document).ready(function () {
            // Send an AJAX request
            $.getJSON(uri).done(function (data) {
                console.log(data.main.humidity);
                console.log(data.main.temp);
                $('#<%=humidityLabel.ClientID%>').html("Humedad: ".concat(data.main.humidity).concat('%'));
                $('#<%=temperatureLabel.ClientID%>').html("Temperatura: ".concat(Math.round(data.main.temp - 273.15)).concat(' C°')); 

                $('#HiddenFieldHumidiy').val(data.main.humidity);
                $('#HiddenFieldTemperature').val(Math.round(data.main.temp - 273.15));
            });
        });      
        function async() {
            // Send an AJAX request
            $.getJSON(uri).done(function (data) {
                console.log(data.main.humidity);
                console.log(data.main.temp);
                $('#<%=humidityLabel.ClientID%>').html("Humedad: ".concat(data.main.humidity).concat('%'));
                $('#<%=temperatureLabel.ClientID%>').html("Temperatura: ".concat((data.main.temp - 273.15)).concat(' C°')); 

                $('#<%=HiddenFieldHumidiy.ClientID%>').val(data.main.humidity);
                $('#<%=HiddenFieldTemperature.ClientID%>').val(data.main.temp - 273.15);                
            });
        }
        async();
      </script> 
</asp:Content>
