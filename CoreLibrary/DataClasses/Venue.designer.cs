using System;
using System.ComponentModel;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using AirtableEventMarketing.Lib.SqlDataManagement;
using CoreLibrary.Extensions;

namespace AirtableEventMarketing.Lib.DataClasses
{                            
    public partial class Venue
    {
        private void InitPoco()
        {
            
            
                this.EventDates = new BindingList<EventDate>();
            

        }

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "VenueId")]
        public String VenueId { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Name")]
        public String Name { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Address")]
        public String Address { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Notes")]
        public String Notes { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "MapCache")]
        public String MapCache { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "createdTime")]
        public Nullable<DateTime> createdTime { get; set; }
    

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "EventDates")]
        public BindingList<EventDate> EventDates { get; set; }
            
        /// <summary>
        /// Check to see if there are any related EventDates, and load them if requested
        /// </summary>
        public static void CheckExpandEventDates(SqlDataManager sdm, IEnumerable<Venue> venues, string expandString)
        {
            expandString = expandString.SafeToString();

            if (String.Equals(expandString, "all", StringComparison.OrdinalIgnoreCase) || expandString.IndexOf("eventDates", StringComparison.OrdinalIgnoreCase) >= 0)
            {
                var venuesWhere = CreateVenueWhere(venues, "Venue");
                var childEventDates = sdm.GetAllEventDates<EventDate>(venuesWhere)
                .OrderBy(orderBy => orderBy.Name)
            ;

                venues.ToList()
                        .ForEach(feVenue => feVenue.LoadEventDates(childEventDates));
            }

        }


        

        
        /// <summary>
        /// Find the related EventDates (from the list provided) and attach them locally to the EventDates list.
        /// </summary>
        public void LoadEventDates(IEnumerable<EventDate> eventDates)
        {
            eventDates.Where(whereEventDate => whereEventDate.Venue == this.VenueId)
                    .ToList()
                    .ForEach(feEventDate => this.EventDates.Add(feEventDate));
        }
        

        
        
        private static string CreateVenueWhere(IEnumerable<Venue> venues, String forignKeyFieldName = "VenueId")
        {
            if (!venues.Any()) return "1=1";
            else 
            {
                var idList = venues.Select(selectVenue => String.Format("'{0}'", selectVenue.VenueId));
                var csIdList = String.Join(",", idList);
                return String.Format("{0} in ({1})", forignKeyFieldName, csIdList);
            }
        }
        
        public static void CheckExpand(SqlDataManager sdm, IEnumerable<Venue> venues, string expandString)
        {
            
            
            
            CheckExpandEventDates(sdm, venues, expandString);
        }
        
    }
}
