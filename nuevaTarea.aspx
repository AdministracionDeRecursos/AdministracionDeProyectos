<%@ Page Language="C#" AutoEventWireup="true" CodeFile="nuevaTarea.aspx.cs" Inherits="nuevaTarea" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Nueva Tarea</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/half-slider.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblnuevaTarea" runat="server" Text="Nueva Tarea" CssClass="text-primary" Font-Size="Large"></asp:Label>
    
    &nbsp;&nbsp;
        <br />
    
    </div>
        <p>
           <asp:Label ID="lblNombreTarea" runat="server" Text="Nombre: "></asp:Label>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:TextBox ID="txtNombre" runat="server" Width="329px"></asp:TextBox>
    
        </p>
        <p>
            &nbsp;</p>
        <p>
           <asp:Label ID="lblDescripcion" runat="server" Text="Descripción: "></asp:Label>
    
        <asp:TextBox ID="txtDescripcion" runat="server" Width="326px"></asp:TextBox>
    
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Seleccionar Personal" CssClass="text-info"></asp:Label>
    
        </p>
        <p>
            <asp:RadioButton ID="rdBtnDisponibles" Text="Disponibles" runat="server" CssClass="checkbox" />
    
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="125px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="328px">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="apellido" HeaderText="Apellido" SortExpression="apellido" />
                    <asp:BoundField DataField="especialidad" HeaderText="Especialidad" SortExpression="especialidad" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [nombre], [apellido], [especialidad] FROM [Persona]"></asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" CssClass="btn-lg" />
        </p>
    </form>
</body>
</html>
