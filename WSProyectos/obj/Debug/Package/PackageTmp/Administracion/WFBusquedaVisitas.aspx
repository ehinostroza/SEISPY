﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFBusquedaVisitas.aspx.cs" Inherits="WSProyectos.Administracion.WFBusquedaVisitas" MasterPageFile="~/Site.Master"%>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnableScriptGlobalization="true" EnableScriptLocalization="false">
        </asp:ScriptManager>
        <table align="left" style="width: 800px">
            <tr>
                <td valign="top" align="left">
                  <asp:UpdatePanel ID="updActualizar" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left">
                        <table width="800px">
                           <tr>
                            <td><asp:Label ID="Label1" runat="server" CssClass="Titulitos" 
                                    Text="Actualización - Búsqueda de Visitas"></asp:Label></td>
                        </tr>
                            <tr>
                                <td><asp:UpdateProgress ID="prg1" runat="server" 
                                                     AssociatedUpdatePanelID="updActualizar" DynamicLayout="False">
                                                     <ProgressTemplate>
                                                         <asp:Image ID="img1" runat="server" ImageUrl="~/images/ajax-loader.gif" />
                                                     </ProgressTemplate>
                                                 </asp:UpdateProgress></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Panel ID="pBusquedaS" runat="server">
                                     <table width="800px">
                                 <tr>
                                <td style="width:130px;">
                                    <asp:Label ID="lblLocal" runat="server" CssClass="TitulitosSub" 
                                        Text="Local:"></asp:Label>
                                </td>
                                <td style="width:130px;">
                                    <asp:Label ID="lblProyecto" runat="server" CssClass="TitulitosSub" 
                                        Text="Proyecto:"></asp:Label>
                                </td>
                                <td style="width:50px;">
                                    <asp:Label ID="lblEstadoV" runat="server" CssClass="TitulitosSub" 
                                        Text="Estado:"></asp:Label>
                                </td>
                                    <td>
                                        <asp:Label ID="lblFechaD" runat="server" CssClass="TitulitosSub" 
                                            Text="F.Desde:"></asp:Label>
                                     </td>
                                    <td>
                                        <asp:Label ID="lblFechaH" runat="server" CssClass="TitulitosSub" 
                                            Text="F.Hasta:"></asp:Label>
                                     </td>
                                    <td>
                                        <asp:Label ID="lblNom" runat="server" CssClass="TitulitosSub" 
                                            Text="Apellidos/Id.TAM/Id.ENR"></asp:Label>
                                     </td>
                                     <td>
                                         &nbsp;</td>
                            </tr>
                                         <tr>
                                             <td style="width:130px;">
                                                 <asp:DropDownList ID="ddlLocal" runat="server" Width="180px" 
                                                     CssClass="textbox1" AutoPostBack="True" 
                                                     onselectedindexchanged="ddlLocal_SelectedIndexChanged">
                                                 </asp:DropDownList>
                                             </td>
                                             <td style="width:130px;">
                                                 <asp:DropDownList ID="ddlProyecto" runat="server" Width="180px" 
                                                     CssClass="textbox1" AutoPostBack="True" 
                                                     onselectedindexchanged="ddlProyecto_SelectedIndexChanged">
                                                 </asp:DropDownList>
                                             </td>
                                             <td style="width:50px;">
                                                 <asp:DropDownList ID="ddlEstado" runat="server" CssClass="textbox1" 
                                                     Width="90px">
                                                 </asp:DropDownList>
                                             </td>
                                             <td>
                                                 <asp:TextBox ID="txtFechaD" runat="server" CssClass="textbox1" Width="70px"></asp:TextBox>
                                                 <cc1:CalendarExtender ID="txtFechaD_CalendarExtender" runat="server" 
                                                     Enabled="True" TargetControlID="txtFechaD">
                                                 </cc1:CalendarExtender>
                                             </td>
                                             <td>

                                                 <asp:TextBox ID="txtFechaH" runat="server" CssClass="textbox1" Width="70px"></asp:TextBox>
                                                 <cc1:CalendarExtender ID="txtFechaH_CalendarExtender" runat="server" 
                                                     Enabled="True" TargetControlID="txtFechaH">
                                                 </cc1:CalendarExtender>

                                             </td>
                                             <td>
                                                   
                                                 <asp:TextBox ID="txtNombres" runat="server" CssClass="textbox1" Width="150px"></asp:TextBox>
                                                   
                                             </td>
                                             <td>
                                                 <asp:LinkButton ID="btnBuscarAvanzada" runat="server" 
                                                     onclick="btnBuscarAvanzada_Click" Text="Buscar"></asp:LinkButton>
                                             </td>
                                         </tr>
                            </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>

                                <td>
                                    <asp:Label ID="lblMensaje" runat="server" EnableViewState="false" 
                                        SkinID="label_vacio" Text=""></asp:Label>
                                </td>
                           </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="gvListado" runat="server" AllowPaging="True" 
                                        AutoGenerateColumns="False" BorderStyle="None" BorderWidth="1px" 
                                        CssClass="Grilla2" DataKeyNames="CodigoPaciente" GridLines="Vertical" 
                                        PageSize="30" Width="900px" onpageindexchanging="gvListado_PageIndexChanging" 
                                        onrowdatabound="gvListado_RowDataBound">
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <HeaderStyle CssClass="Header2" />
                                        <Columns>
                                            <asp:BoundField DataField="CodigoPaciente" HeaderText="CodigoPaciente" ReadOnly="True" SortExpression="CodigoPaciente" Visible="False" />
                                            <asp:BoundField DataField="CodigoLocal" HeaderText="CodigoLocal" ReadOnly="True" SortExpression="CodigoLocal" Visible="False" />
                                            <asp:BoundField DataField="CodigoProyecto" HeaderText="CodigoProyecto" ReadOnly="True" SortExpression="CodigoProyecto" Visible="False" />
                                            <asp:BoundField DataField="CodigoGrupoVisita" HeaderText="CodigoGrupoVisita" ReadOnly="True" SortExpression="CodigoGrupoVisita" Visible="False" />
                                            <asp:BoundField DataField="CodigoVisita" HeaderText="CodigoVisita" ReadOnly="True" SortExpression="CodigoVisita" Visible="False" />
                                            <asp:BoundField DataField="CodigoEstadoVisita" HeaderText="CodigoEstadoVisita" ReadOnly="True" SortExpression="CodigoEstadoVisita" Visible="False" />
                                            <asp:BoundField DataField="CodigoVisitas" HeaderText="CodigoVisitas" ReadOnly="True" SortExpression="CodigoVisitas" Visible="False" />
                                            <asp:BoundField DataField="CodigoTAM" HeaderText="CodigoTAM" ReadOnly="True" SortExpression="CodigoTAM" Visible="False" />
                                            <asp:BoundField DataField="CodigoENR" HeaderText="CodigoENR" ReadOnly="True" SortExpression="CodigoENR" Visible="False" />
                                            <asp:BoundField DataField="TAM" HeaderText="TAM" ReadOnly="True" SortExpression="TAM" Visible="False" />
                                            <asp:BoundField DataField="ENR" HeaderText="ENR" ReadOnly="True" SortExpression="ENR" Visible="False" />
                                            <asp:BoundField DataField="FechaNVisita" HeaderText="FechaNVisita" SortExpression="FechaNVisita" Visible="false"></asp:BoundField>
                                            <asp:BoundField DataField="Local" HeaderText="Local" SortExpression="Local">
                                            <HeaderStyle CssClass="header2" /><ItemStyle CssClass="Item2" Width="100px" /> </asp:BoundField>
                                            <asp:BoundField DataField="Proyecto" HeaderText="Proyecto" SortExpression="Proyecto">
                                            <HeaderStyle CssClass="header2" /><ItemStyle CssClass="Item2" Width="100px" /> </asp:BoundField>
                                            <asp:BoundField DataField="Id_TAM" HeaderText="Id_TAM" SortExpression="Id_TAM">
                                            <HeaderStyle CssClass="header2" /><ItemStyle CssClass="Item2"/> </asp:BoundField>
                                            <asp:BoundField DataField="Id_ENR" HeaderText="Id_ENR" SortExpression="Id_ENR">
                                            <HeaderStyle CssClass="header2" /><ItemStyle CssClass="Item2"/> </asp:BoundField>
                                            <asp:BoundField DataField="NombreCompleto" HeaderText="Paciente" SortExpression="NombreCompleto">
                                            <HeaderStyle CssClass="header2" /><ItemStyle CssClass="Item2"/> </asp:BoundField>
                                            <asp:BoundField DataField="Visita" HeaderText="Visita" SortExpression="Visita">
                                            <HeaderStyle CssClass="header2" /><ItemStyle CssClass="Item2" Width="80px"/> </asp:BoundField>
                                            <asp:TemplateField HeaderText="Fecha"  ShowHeader="False">
                                                <ItemTemplate>
                                                    <asp:HyperLink ID="hypFecha"  runat="server" ToolTip="" Text='<%# Eval("FechaNVisita") %>' navigateurl='<%# String.Format("WFFechaEdit.aspx?CodigoPaciente={0}&CodigoLocal={1}&CodigoProyecto={2}&CodigoUsuario={3}", Eval("CodigoPaciente"), Eval("CodigoLocal"), Eval("CodigoProyecto"),numUsuario) %>'> 
                                                    </asp:HyperLink>
                                                </ItemTemplate>
                                                <HeaderStyle CssClass="Header2" HorizontalAlign="Center" /><ItemStyle CssClass="Item2" Width="70px"/>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Estado"  ShowHeader="False">
                                                <ItemTemplate>
                                                    <asp:HyperLink ID="hypEstadoVisita"  runat="server" ToolTip="" Text='<%# Eval("EstadoVisita") %>' navigateurl='<%# String.Format("WFEstadoVisitaEdit.aspx?CodigoPaciente={0}&CodigoLocal={1}&CodigoProyecto={2}&CodigoUsuario={3}", Eval("CodigoPaciente"), Eval("CodigoLocal"), Eval("CodigoProyecto"),numUsuario) %>'> 
                                                    </asp:HyperLink>
                                                </ItemTemplate>
                                                <HeaderStyle CssClass="Header2" HorizontalAlign="Center" /><ItemStyle CssClass="Item2" Width="50px"/>
                                            </asp:TemplateField>
                                        </Columns>
                                        <PagerStyle CssClass="Pie2" ForeColor="White" HorizontalAlign="center" />
                                        <AlternatingRowStyle BackColor="#FFFFFF" />
                                    </asp:GridView>
                                </td>
                            </tr>

<tr>
                                               <td>
                                               </td>
                            </tr>
                        </table>
                    </asp:Panel>
                                                                <div style="text-align:center"></div>

                     </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="btnBuscarAvanzada" EventName="Click" />
                                            <asp:AsyncPostBackTrigger ControlID="ddlLocal" EventName="SelectedIndexChanged" />
                                            <asp:AsyncPostBackTrigger ControlID="ddlProyecto" EventName="SelectedIndexChanged" />


                                        </Triggers>
                                    </asp:UpdatePanel>
                </td>
            </tr>
        </table>
    </div>

</asp:Content>