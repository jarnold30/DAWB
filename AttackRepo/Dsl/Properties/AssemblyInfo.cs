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
[assembly: AssemblyProduct(@"Attack")]
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
[assembly: InternalsVisibleTo(@"JA.Attack.DslPackage, PublicKey=0024000004800000940000000602000000240000525341310004000001000100599885D8A099D2986D5E052454916E18DD8EF991549F98BB1CFE2BDCA0065C7D4B52966E20D77506F9FF04936FF6B385DFF4309C826A63605A1119D466E23ECBCD54E66CB9C0250403B6BA1550693129A704414255CCECEA423C2A8F063EBF4502C6E506E1F74E4013417F584B82AA5FAF6D9F9896C4C42A07DDD556D6A03AB5")]