using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CMS.SettingsProvider;

[ClassLoader]
public partial class CMSModuleLoader
{
    /// <summary>
    /// Attribute class for loading custom classes.
    /// </summary>
    private class ClassLoader : CMSLoaderAttribute
    {
        /// <summary>
        /// Called automatically when the application starts.
        /// </summary>
        public override void Init()
        {
            // Assigns a handler for the OnGetCustomClass event.
            ClassHelper.OnGetCustomClass += ClassHelper_OnGetCustomClass;
        }

        /// <summary>
        /// Gets a custom class object based on the given parameters.
        /// </summary>
        private void ClassHelper_OnGetCustomClass(object sender, ClassEventArgs e)
        {
            if (e.Object == null)
            {
                // Checks the name of the requested class.
                switch (e.ClassName)
                {
                    // Gets an instance of the CustomTask class.
                    case "Custom.CustomTask":
                        e.Object = new Custom.CustomTask();
                        break;
                }
            }
        }
    }
}