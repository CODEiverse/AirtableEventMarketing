using AirtableEventMarketing.Lib.SqlDataManagement;
using AirtableEventMarketing.Lib.DataClasses;
using dc=AirtableEventMarketing.Lib.DataClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web;

namespace WebApplication1.Areas.RESTApi.Controllers
{
    public partial class VenuesController : ApiController
    {
        public SqlDataManager SDM { get; }

        partial void OnConstructor();
        partial void OnBeforeGet();
        partial void OnAfterGet(IEnumerable<Venue> Venues);
        partial void OnAfterGetById(Venue Venues, String venueId);
        partial void OnBeforePost(Venue venue);
        partial void OnAfterPost(Venue venue);
        partial void OnBeforePut(Venue venue);
        partial void OnAfterPut(Venue venue);
        partial void OnBeforeDelete(Venue venue);
        partial void OnAfterDelete(Venue venue);
        

        public VenuesController()
        {
            this.SDM = new SqlDataManager();
            this.OnConstructor();
        }

        /// <summary>
        /// GET api/Venue - Gets a list of Venues
        /// </summary>
        /// <returns>List of Venues</returns>
        public IEnumerable<Venue> Get()
        {
            this.OnBeforeGet();
            var results = this.SDM.GetAllVenues<Venue>()
                            .OrderBy(orderBy => orderBy.Name);
            dc.Venue.CheckExpand(this.SDM, results, HttpContext.Current.Request["expand"]);
            this.OnAfterGet(results);
            return results;
        }

        /// <summary>
        /// Gets a specific Venue based on it's ID
        /// </summary>
        /// <returns>Venue</returns>
        public Venue Get(String venueId)
        {
            var VenuesWhere = String.Format("VenueId = '{0}'", venueId);
            var result = this.SDM.GetAllVenues<Venue>(VenuesWhere).FirstOrDefault();
            dc.Venue.CheckExpand(this.SDM, new Venue[] { result }, HttpContext.Current.Request["expand"]);
            this.OnAfterGetById(result, venueId);
            return result;
        }

        /// <summary>
        /// Inserts a new Venue
        /// </summary>
        /// <returns>The inserted Venue, including the ID assigned</returns>
        public Venue Post([FromBody]Venue venue)
        {// text
            
            if (String.IsNullOrEmpty(venue.VenueId)) venue.VenueId = Guid.NewGuid().ToString();
            this.OnBeforePost(venue);
            this.SDM.Upsert(venue);
            this.OnAfterPost(venue);
            return venue;
        }

        /// <summary>
        /// Updates a specific Venue based on it's ID
        /// </summary>
        /// <returns>Venue</returns>
        public Venue Put([FromBody]Venue venue)
        {
            
            if (String.IsNullOrEmpty(venue.VenueId)) venue.VenueId = Guid.NewGuid().ToString();
            this.OnBeforePut(venue);
            this.SDM.Upsert(venue);
            this.OnAfterPut(venue);
            return venue;
        }

        /// <summary>
        /// Deletes a specific Venue based on it's ID
        /// </summary>
        /// <returns>Venue</returns>
        public void Delete(Guid VenueId)
        {
            var venueWhere = String.Format("VenueId = '{0}'", VenueId);
            var venue = this.SDM.GetAllVenues<Venue>(venueWhere).FirstOrDefault();
            this.OnBeforeDelete(venue);
            this.SDM.Delete(venue);
            this.OnAfterDelete(venue);
        }
    }
}
