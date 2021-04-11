using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.IO;
using System.Linq;
using Microsoft.VisualStudio.Modeling;
using Microsoft.VisualStudio.Modeling.Diagrams;
using Microsoft.VisualStudio.Modeling.Shell;

namespace JA.Risk
{
    // this defines the menu items to support prolog generation
    // see https://docs.microsoft.com/en-us/visualstudio/modeling/how-to-add-a-command-to-the-shortcut-menu?view=vs-2019 for how all this works

    internal partial class RiskCommandSet : RiskCommandSetBase
    {
        private Guid guidGenPrologCmdSet =
            new Guid("8D5A6BFA-EC14-4AE9-A1EB-B794683A646D");
        private const int grpidGenPrologGroup = 0x01001;
        private const int cmdidGenPrologCommand = 1;
        
        private void OnStatusMyContextMenuCommand(object sender, EventArgs e)
        {
            MenuCommand command = sender as MenuCommand;
            command.Visible = command.Enabled = this.IsDiagramSelected();
        }

        private void OnMenuMyContextMenuCommand(object sender, EventArgs e)
        {
            MenuCommand command = sender as MenuCommand;

            string inputFile = this.CurrentDocData.FileName;
            string extension = Path.GetExtension(inputFile).Substring(1);
            string outputFile = Path.Combine(Path.GetDirectoryName(inputFile), Path.GetFileNameWithoutExtension(inputFile) + ".pl");
            string origTemplateFile;
            string dpName;
            string dpNamespace;
            string dpPath;

            // choose the original template file
            switch (extension)
            {
                case "Attack":
                    origTemplateFile = @"C:\Users\johna\OneDrive\Documents\GitHub\DAWB\DAWB\AttackToProlog\AttackToProlog.tt";
                    dpName = "AttackDirectiveProcessor";
                    dpNamespace = "JA.Attack.AttackDirectiveProcessor";
                    dpPath = @"C:\Users\johna\OneDrive\Documents\GitHub\DAWB\DAWB\DAWB\bin\Debug\JA.Attack.DSL.dll";
                    break;
                case "Risk":
                    origTemplateFile = @"C:\Users\johna\OneDrive\Documents\GitHub\DAWB\DAWB\RiskToProlog\GeneratedCode\RiskToProlog.tt";
                    dpName = "RiskDirectiveProcessor";
                    dpNamespace = "JA.Risk.RiskDirectiveProcessor";
                    dpPath = @"C:\Users\johna\OneDrive\Documents\GitHub\DAWB\DAWB\DAWB\bin\Debug\JA.Risk.DSL.dll";
                    break;
                default:
                    Console.WriteLine("Can only process files of type Attack or Risk; you gave me a " + extension);
                    return;
            }

            // create the template file based on the original
            string templateFile = Path.GetTempFileName();
            string templateContent = File.ReadAllText(origTemplateFile);

            // now substitute the real filename for the ZZ placeholder
            // Warning !! hideous hack!!
            templateContent = templateContent.Replace("ZZ", inputFile);
            File.WriteAllText(templateFile, templateContent);

            // run the text template processor
            // run the text template processor
            string tpArgs = "-dp \"" + dpName + "!" + dpNamespace + "!" + dpPath
                + "\" -out \"" + outputFile
                + "\" \"" + templateFile + "\"";
            //Console.WriteLine("Transforming with" + tpArgs);
            System.Diagnostics.Process.Start(@"C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\IDE\TextTransform",
                tpArgs);

            //delete the temporary file
            //File.Delete(templateFile);

        }

        protected override IList<MenuCommand> GetMenuCommands()
        {
            // Get the list of generated commands.
            IList<MenuCommand> commands = base.GetMenuCommands();
            // Add a custom command:
            DynamicStatusMenuCommand genPrologCommand =
              new DynamicStatusMenuCommand(
                new EventHandler(OnStatusMyContextMenuCommand),
                new EventHandler(OnMenuMyContextMenuCommand),
                new CommandID(guidGenPrologCmdSet, cmdidGenPrologCommand));
            commands.Add(genPrologCommand);
            // Add more commands here.
            return commands;
        }
    }
}