using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.IO;
using System.Linq;
using Microsoft.VisualStudio.Modeling;
using Microsoft.VisualStudio.Modeling.Diagrams;
using Microsoft.VisualStudio.Modeling.Shell;

namespace JA.Attack
{
    // this defines the menu items to support prolog generation
    // see https://docs.microsoft.com/en-us/visualstudio/modeling/how-to-add-a-command-to-the-shortcut-menu?view=vs-2019 for how all this works

    internal partial class AttackCommandSet : AttackCommandSetBase
    {
        private Guid guidGenPrologCmdSet =
            new Guid("724B645F-3A8C-4AB6-A8A4-CCE79410DFBE");
        private const int grpidGenAPrologGroup = 0x01001;
        private const int cmdidGenAPrologCommand = 1;

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

            // now substitute the real filename for the ZZZZZZZZZZ placeholder
            // Warning !! hideous hack!!
            templateContent = templateContent.Replace("ZZZZZZZZZZ", inputFile);
            File.WriteAllText(templateFile, templateContent);

            // run the text template processor
            System.Diagnostics.Process.Start(@"C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\Common7\IDE\TextTransform",
                "-dp " + dpName + "!" + dpNamespace + "!" + dpPath
                + " -out " + outputFile
                + " " + templateFile);

            //delete the temporary file
            File.Delete(templateFile);
        }

        protected override IList<MenuCommand> GetMenuCommands()
        {
            // Get the list of generated commands.
            IList<MenuCommand> commands = base.GetMenuCommands();
            // Add a custom command:
            DynamicStatusMenuCommand genAPrologCommand =
              new DynamicStatusMenuCommand(
                new EventHandler(OnStatusMyContextMenuCommand),
                new EventHandler(OnMenuMyContextMenuCommand),
                new CommandID(guidGenPrologCmdSet, cmdidGenAPrologCommand));
            commands.Add(genAPrologCommand);
            // Add more commands here.
            return commands;
        }
    }
}