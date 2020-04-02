using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JA.Risk
{
    public partial class ThreatAgent : ObjectWithPorts
    {
        private List<Condition> _predicates = new List<Condition>();

        // this method activetes a threat agent in order to see what it can do.
        public void Activate( List<Condition> c /* currently ignored */ )
        {
            // set up _predicates with the Conditions the threat agent has at the start
            if ( _predicates is null ) { _predicates.AddRange(Conditions); }
        }
    }
}
