using System;
using System.ComponentModel;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using AirtableEventMarketing.Lib.SqlDataManagement;
using CoreLibrary.Extensions;

namespace AirtableEventMarketing.Lib.DataClasses
{                            
    public partial class VIP
    {
        private void InitPoco()
        {
            
            
                this.Person_Attendances = new BindingList<Attendance>();
            

        }

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "VIPId")]
        public String VIPId { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Name")]
        public String Name { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Location")]
        public String Location { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Email")]
        public String Email { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Address")]
        public String Address { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Type")]
        public String Type { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Notes")]
        public String Notes { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Eventsattended")]
        public Nullable<Int32> Eventsattended { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "createdTime")]
        public Nullable<DateTime> createdTime { get; set; }
    

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Person_Attendances")]
        public BindingList<Attendance> Person_Attendances { get; set; }
            
        /// <summary>
        /// Check to see if there are any related Attendances, and load them if requested
        /// </summary>
        public static void CheckExpandAttendances(SqlDataManager sdm, IEnumerable<VIP> vIPs, string expandString)
        {
            expandString = expandString.SafeToString();

            if (String.Equals(expandString, "all", StringComparison.OrdinalIgnoreCase) || expandString.IndexOf("attendances", StringComparison.OrdinalIgnoreCase) >= 0)
            {
                var vIPsWhere = CreateVIPWhere(vIPs, "Person");
                var childAttendances = sdm.GetAllAttendances<Attendance>(vIPsWhere)
                .OrderBy(orderBy => orderBy.Name)
            ;

                vIPs.ToList()
                        .ForEach(feVIP => feVIP.LoadPerson_Attendances(childAttendances));
            }

        }


        

        
        /// <summary>
        /// Find the related Attendances (from the list provided) and attach them locally to the Attendances list.
        /// </summary>
        public void LoadPerson_Attendances(IEnumerable<Attendance> attendances)
        {
            attendances.Where(whereAttendance => whereAttendance.Person == this.VIPId)
                    .ToList()
                    .ForEach(feAttendance => this.Person_Attendances.Add(feAttendance));
        }
        

        
        
        private static string CreateVIPWhere(IEnumerable<VIP> vIPs, String forignKeyFieldName = "VIPId")
        {
            if (!vIPs.Any()) return "1=1";
            else 
            {
                var idList = vIPs.Select(selectVIP => String.Format("'{0}'", selectVIP.VIPId));
                var csIdList = String.Join(",", idList);
                return String.Format("{0} in ({1})", forignKeyFieldName, csIdList);
            }
        }
        
        public static void CheckExpand(SqlDataManager sdm, IEnumerable<VIP> vIPs, string expandString)
        {
            
            
            
            CheckExpandAttendances(sdm, vIPs, expandString);
        }
        
    }
}
