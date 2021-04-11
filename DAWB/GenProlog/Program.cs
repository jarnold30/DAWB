using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GenProlog
{
    class Program
    {
        static void Main(string[] args)
        {
            if ( args==null || args.Length <1 || args[0].Length ==0 )
            {
                Console.WriteLine("Specify the file to process");
                return;
            }

            // let's have a look at the first argument
            string inputFileList = args[0];
            // we expect the param to be a standard built argument i.e. semi-colon separated
            foreach (string inputFile in inputFileList.Split(';')) {
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
                        origTemplateFile = @"C:\Users\johna\OneDrive\Documents\GitHub\DAWB\DAWB\AttackToProlog\Bespoke Code\AttackToProlog.tt";
                        dpName = "AttackDirectiveProcessor";
                        dpNamespace = "JA.Attack.AttackDirectiveProcessor";
                        dpPath = @"C:\Users\johna\OneDrive\Documents\GitHub\DAWB\DAWB\DAWB\bin\Debug\JA.Attack.DSL.dll";
                        break;
                    case "Risk":
                        origTemplateFile = @"C:\Users\johna\OneDrive\Documents\GitHub\DAWB\DAWB\RiskToProlog\Bespoke Code\RiskToProlog.tt";
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
                string tpArgs = "-dp \"" + dpName + "!" + dpNamespace + "!" + dpPath
                    + "\" -out \"" + outputFile
                    + "\" \"" + templateFile + "\"";
                //Console.WriteLine("Transforming with" + tpArgs);
                System.Diagnostics.Process.Start(@"C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\IDE\TextTransform",
                    tpArgs);

                //delete the temporary file
                //File.Delete(templateFile);
            }
        }
    }
}
