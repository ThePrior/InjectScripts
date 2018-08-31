using System;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace Meticulus.Sharepoint.SiteDefinition.ControlTemplates.Meticulus.Sharepoint.SiteDefinition
{
    public partial class InjectScriptsControl : UserControl
    {
        //See: https://sharepoint.stackexchange.com/questions/57874/how-to-avoid-caching-issue-when-using-custom-javascript-and-css-deployed-under
        private static readonly long g_AssemblyTimeStamp = File.GetCreationTime(System.Reflection.Assembly.GetExecutingAssembly().Location).Ticks;

        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected override void OnInit(EventArgs e)
        {
            jsom_utilsJs.Name += "?rev=" + g_AssemblyTimeStamp;
            PrefillPatientFormExtendedJs.Name += "?rev=" + g_AssemblyTimeStamp;
            ApproveFormJs.Name += "?rev=" + g_AssemblyTimeStamp;
            BatchPrintJs.Name += "?rev=" + g_AssemblyTimeStamp;
        }
    }
}
