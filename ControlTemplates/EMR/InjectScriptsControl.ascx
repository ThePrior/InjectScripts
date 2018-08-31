<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="InjectScriptsControl.ascx.cs" Inherits="Meticulus.Sharepoint.SiteDefinition.ControlTemplates.Meticulus.Sharepoint.SiteDefinition.InjectScriptsControl" %>

<!-- Note: jquery is also in dppdefault.master, but this is needed in case site is not derived from DPP template. -->
<SharePoint:ScriptLink language="javascript" name="/_layouts/15/jquery-3.1.1.min.js" runat="server" />
<SharePoint:ScriptLink language="javascript" name="/_layouts/15/Chosen/chosen.jquery.js" runat="server" />

<!-- Remember: Add any new resources to InjectScriptsControl::OnInit for assembly timestamp versioning -->
<SharePoint:ScriptLink language="javascript" name="/_layouts/15/EMR/jsom_utils.js" runat="server" id="jsom_utilsJs"/>
<SharePoint:ScriptLink language="javascript" name="/_layouts/15/EMR/PrefillPatientFormExtended.js" runat="server" id="PrefillPatientFormExtendedJs"/>
<SharePoint:ScriptLink language="javascript" name="/_layouts/15/EMR/ApproveForm.js" runat="server" id="ApproveFormJs"/>
<SharePoint:ScriptLink language="javascript" name="/_layouts/15/EMR/BatchPrint.js" runat="server" id="BatchPrintJs"/>

<SharePoint:CssRegistration ID="CssRegistrationChosen" Name="/_layouts/15/Chosen/chosen.css" runat="server" After="corev15.css" />

