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
    public partial class EventDatesController : ApiController
    {
        public SqlDataManager SDM { get; }

        partial void OnConstructor();
        partial void OnBeforeGet();
        partial void OnAfterGet(IEnumerable<EventDate> EventDates);
        partial void OnAfterGetById(EventDate EventDates, String eventDateId);
        partial void OnBeforePost(EventDate eventdate);
        partial void OnAfterPost(EventDate eventdate);
        partial void OnBeforePut(EventDate eventdate);
        partial void OnAfterPut(EventDate eventdate);
        partial void OnBeforeDelete(EventDate eventdate);
        partial void OnAfterDelete(EventDate eventdate);
        

        public EventDatesController()
        {
            this.SDM = new SqlDataManager();
            this.OnConstructor();
        }

        /// <summary>
        /// GET api/EventDate - Gets a list of EventDates
        /// </summary>
        /// <returns>List of EventDates</returns>
        public IEnumerable<EventDate> Get()
        {
            this.OnBeforeGet();
            var results = this.SDM.GetAllEventDates<EventDate>()
                            .OrderBy(orderBy => orderBy.Name);
            dc.EventDate.CheckExpand(this.SDM, results, HttpContext.Current.Request["expand"]);
            this.OnAfterGet(results);
            return results;
        }

        /// <summary>
        /// Gets a specific EventDate based on it's ID
        /// </summary>
        /// <returns>EventDate</returns>
        public EventDate Get(String eventDateId)
        {
            var EventDatesWhere = String.Format("EventDateId = '{0}'", eventDateId);
            var result = this.SDM.GetAllEventDates<EventDate>(EventDatesWhere).FirstOrDefault();
            dc.EventDate.CheckExpand(this.SDM, new EventDate[] { result }, HttpContext.Current.Request["expand"]);
            this.OnAfterGetById(result, eventDateId);
            return result;
        }

        /// <summary>
        /// Inserts a new EventDate
        /// </summary>
        /// <returns>The inserted EventDate, including the ID assigned</returns>
        public EventDate Post([FromBody]EventDate eventdate)
        {// text
            
            if (String.IsNullOrEmpty(eventdate.EventDateId)) eventdate.EventDateId = Guid.NewGuid().ToString();
            this.OnBeforePost(eventdate);
            this.SDM.Upsert(eventdate);
            this.OnAfterPost(eventdate);
            return eventdate;
        }

        /// <summary>
        /// Updates a specific EventDate based on it's ID
        /// </summary>
        /// <returns>EventDate</returns>
        public EventDate Put([FromBody]EventDate eventdate)
        {
            
            if (String.IsNullOrEmpty(eventdate.EventDateId)) eventdate.EventDateId = Guid.NewGuid().ToString();
            this.OnBeforePut(eventdate);
            this.SDM.Upsert(eventdate);
            this.OnAfterPut(eventdate);
            return eventdate;
        }

        /// <summary>
        /// Deletes a specific EventDate based on it's ID
        /// </summary>
        /// <returns>EventDate</returns>
        public void Delete(Guid EventDateId)
        {
            var eventdateWhere = String.Format("EventDateId = '{0}'", EventDateId);
            var eventdate = this.SDM.GetAllEventDates<EventDate>(eventdateWhere).FirstOrDefault();
            this.OnBeforeDelete(eventdate);
            this.SDM.Delete(eventdate);
            this.OnAfterDelete(eventdate);
        }
    }
}
