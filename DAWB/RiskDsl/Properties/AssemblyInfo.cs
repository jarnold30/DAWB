#region Using directives

using System;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Runtime.ConstrainedExecution;

#endregion

//
// General Information about an assembly is controlled through the following 
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.
//
[assembly: AssemblyTitle(@"")]
[assembly: AssemblyDescription(@"")]
[assembly: AssemblyConfiguration("")]
[assembly: AssemblyCompany(@"JA")]
[assembly: AssemblyProduct(@"Risk")]
[assembly: AssemblyCopyright("")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]
[assembly: System.Resources.NeutralResourcesLanguage("en")]

//
// Version information for an assembly consists of the following four values:
//
//      Major Version
//      Minor Version 
//      Build Number
//      Revision
//
// You can specify all the values or you can default the Revision and Build Numbers 
// by using the '*' as shown below:

[assembly: AssemblyVersion(@"1.0.0.0")]
[assembly: ComVisible(false)]
[assembly: CLSCompliant(true)]
[assembly: ReliabilityContract(Consistency.MayCorruptProcess, Cer.None)]

//
// Make the Dsl project internally visible to the DslPackage assembly
//
[assembly: InternalsVisibleTo(@"JA.Risk.RiskDslPackage, PublicKey=00240000048000009400000006020000002400005253413100040000010001006165DE0D60F15F6317E422C31243F0532D0481029A2E80A169931FF6799FB59CA2FAE598387B542566CD7B6F3AD037D551F99C32AB714EE00A341135667B502A4123019E93305F290C7CB1997FAC6B37B284AF26DA9A89BF9A35B0A930D79CDE7DD0371E993A6D51C42882510F88DCCF86EDBA526D9BFA1A228CDEC70570AFA3")]