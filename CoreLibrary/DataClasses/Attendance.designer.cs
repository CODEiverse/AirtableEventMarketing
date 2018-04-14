using System;
using System.ComponentModel;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using AirtableEventMarketing.Lib.SqlDataManagement;
using CoreLibrary.Extensions;

namespace AirtableEventMarketing.Lib.DataClasses
{                            
    public partial class Attendance
    {
        private void InitPoco()
        {
            
            

        }

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "AttendanceId")]
        public String AttendanceId { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Notes")]
        public String Notes { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Event")]
        public String Event { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Person")]
        public String Person { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Invited")]
        public Nullable<Boolean> Invited { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "RSVPed")]
        public Nullable<Boolean> RSVPed { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Showedup")]
        public Nullable<Boolean> Showedup { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Name")]
        public String Name { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "createdTime")]
        public Nullable<DateTime> createdTime { get; set; }
    

        

        
        
        private static string CreateAttendanceWhere(IEnumerable<Attendance> attendances, String forignKeyFieldName = "AttendanceId")
        {
            if (!attendances.Any()) return "1=1";
            else 
            {
                var idList = attendances.Select(selectAttendance => String.Format("'{0}'", selectAttendance.AttendanceId));
                var csIdList = String.Join(",", idList);
                return String.Format("{0} in ({1})", forignKeyFieldName, csIdList);
            }
        }
        
        public static void CheckExpand(SqlDataManager sdm, IEnumerable<Attendance> attendances, string expandString)
        {
            
        }
        
    }
}
