/*************************************************
Initially Generated by SSoT.me - 2017
    EJ Alexandra - An odxml42 Tool
    This file will not be overwritten by default!
*************************************************/
using System;
using System.ComponentModel;
                        
namespace AirtableEventMarketing.Lib.DataClasses
{                   
    
    public partial class Venue 
    {
        public Venue()
        {
            this.InitPoco();
        }

        public override String ToString()
        {
            return String.Format("Venue: {0}", this.Name);
        }
    }
}