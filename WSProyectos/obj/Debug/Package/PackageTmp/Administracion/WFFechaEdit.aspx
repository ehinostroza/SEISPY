﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFFechaEdit.aspx.cs" Inherits="WSProyectos.Administracion.WFFechaEdit" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
	<head id="Head1" runat="server">
		<title>Editar Fecha</title>
   <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />

	</head>
	<body>
	
		<form id="Form1" method="post" runat="server">
			<table id="Table3" cellspacing="0" cellpadding="0" width="100%" border="0">
				<tr>
					<td valign="top">
						<table id="Table4" cellspacing="0" cellpadding="0" align="center" border="0" width="250px">
							<tr>
								<td class="style3"><!--Cabeza-->
                                    <asp:ScriptManager ID="ScriptManager1" runat="server" EnableScriptGlobalization="true" EnableScriptLocalization="false">
                                    </asp:ScriptManager>
                                </td>
							</tr>
							<!--2-->
							<tr>
								<td Class="TitulitoLog" align="center">Editar Fecha de Visita</td>
							</tr>
							<br>
								<tr><td></td>
							</tr>
								<tr><td>&nbsp;</td>
							</tr>
							<tr>
								<td>
                                    <asp:Label ID="lblLocal" runat="server" CssClass="TitulitosSub" 
                                        Text="Paciente:"></asp:Label>
                                </td>
							</tr>
							<tr>
								<td>
                                    <asp:TextBox ID="txtPaciente" runat="server" CssClass="textbox1" 
                                        ReadOnly="True" Width="250px"></asp:TextBox>
                                </td>
							</tr>
							<tr>
								<td>
                                    &nbsp;</td>
							</tr>
							<tr>
								<td>
                                    <asp:Label ID="lblLocal0" runat="server" CssClass="TitulitosSub" 
                                        Text="Fecha de Visita:"></asp:Label>
                                </td>
							</tr>
							<tr>
								<td>
                                                 <asp:TextBox ID="txtFecha" runat="server" CssClass="textbox1" 
                                        Width="100px"></asp:TextBox>
                                                 <cc1:CalendarExtender ID="txtFecha_CalendarExtender" runat="server" 
                                                     Enabled="True" TargetControlID="txtFecha">
                                                 </cc1:CalendarExtender>
                                </td>
							</tr>
							<tr>
								<td></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td><asp:Label ID="lblMensaje" 
                                                    runat="server" Text="" EnableViewState="false" 
                                        SkinID="label_vacio"></asp:Label></td>
							</tr>
							<tr>
								<td>
                                    <asp:LinkButton ID="lkbAceptar" runat="server" onclick="lkbAceptar_Click">Aceptar</asp:LinkButton>
                                </td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
						</table>
					</td>
				</tr>


			</table>
		</form>
	</body>
</html>
