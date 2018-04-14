using System;
using System.ComponentModel;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using AirtableEventMarketing.Lib.SqlDataManagement;
using CoreLibrary.Extensions;

namespace AirtableEventMarketing.Lib.DataClasses
{                            
    public partial class EventDate
    {
        private void InitPoco()
        {
            
            
                this.Event_Attendances = new BindingList<Attendance>();
            

        }

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "EventDateId")]
        public String EventDateId { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Name")]
        public String Name { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Type")]
        public String Type { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "StartDate")]
        public Nullable<DateTime> StartDate { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Details")]
        public String Details { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "EndDate")]
        public Nullable<DateTime> EndDate { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Venue")]
        public String Venue { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "ofAttendees")]
        public Nullable<Int32> ofAttendees { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "ofInvites")]
        public Nullable<Int32> ofInvites { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "createdTime")]
        public Nullable<DateTime> createdTime { get; set; }
    

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Event_Attendances")]
        public BindingList<Attendance> Event_Attendances { get; set; }
            
        /// <summary>
        /// Check to see if there are any related Attendances, and load them if requested
        /// </summary>
        public static void CheckExpandAttendances(SqlDataManager sdm, IEnumerable<EventDate> eventDates, string expandString)
        {
            expandString = expandString.SafeToString();

            if (String.Equals(expandString, "all", StringComparison.OrdinalIgnoreCase) || expandString.IndexOf("attendances", StringComparison.OrdinalIgnoreCase) >= 0)
            {
                var eventDatesWhere = CreateEventDateWhere(eventDates, "Event");
                var childAttendances = sdm.GetAllAttendances<Attendance>(eventDatesWhere)
                .OrderBy(orderBy => orderBy.Name)
            ;

                eventDates.ToList()
                        .ForEach(feEventDate => feEventDate.LoadEvent_Attendances(childAttendances));
            }

        }


        

        
        /// <summary>
        /// Find the related Attendances (from the list provided) and attach them locally to the Attendances list.
        /// </summary>
        public void LoadEvent_Attendances(IEnumerable<Attendance> attendances)
        {
            attendances.Where(whereAttendance => whereAttendance.Event == this.EventDateId)
                    .ToList()
                    .ForEach(feAttendance => this.Event_Attendances.Add(feAttendance));
        }
        

        
        
        private static string CreateEventDateWhere(IEnumerable<EventDate> eventDates, String forignKeyFieldName = "EventDateId")
        {
            if (!eventDates.Any()) return "1=1";
            else 
            {
                var idList = eventDates.Select(selectEventDate => String.Format("'{0}'", selectEventDate.EventDateId));
                var csIdList = String.Join(",", idList);
                return String.Format("{0} in ({1})", forignKeyFieldName, csIdList);
            }
        }
        
        public static void CheckExpand(SqlDataManager sdm, IEnumerable<EventDate> eventDates, string expandString)
        {
            
            
            
            CheckExpandAttendances(sdm, eventDates, expandString);
        }
        
    }
}
