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
    public partial class AttendancesController : ApiController
    {
        public SqlDataManager SDM { get; }

        partial void OnConstructor();
        partial void OnBeforeGet();
        partial void OnAfterGet(IEnumerable<Attendance> Attendances);
        partial void OnAfterGetById(Attendance Attendances, String attendanceId);
        partial void OnBeforePost(Attendance attendance);
        partial void OnAfterPost(Attendance attendance);
        partial void OnBeforePut(Attendance attendance);
        partial void OnAfterPut(Attendance attendance);
        partial void OnBeforeDelete(Attendance attendance);
        partial void OnAfterDelete(Attendance attendance);
        

        public AttendancesController()
        {
            this.SDM = new SqlDataManager();
            this.OnConstructor();
        }

        /// <summary>
        /// GET api/Attendance - Gets a list of Attendances
        /// </summary>
        /// <returns>List of Attendances</returns>
        public IEnumerable<Attendance> Get()
        {
            this.OnBeforeGet();
            var results = this.SDM.GetAllAttendances<Attendance>()
                            .OrderBy(orderBy => orderBy.Name);
            dc.Attendance.CheckExpand(this.SDM, results, HttpContext.Current.Request["expand"]);
            this.OnAfterGet(results);
            return results;
        }

        /// <summary>
        /// Gets a specific Attendance based on it's ID
        /// </summary>
        /// <returns>Attendance</returns>
        public Attendance Get(String attendanceId)
        {
            var AttendancesWhere = String.Format("AttendanceId = '{0}'", attendanceId);
            var result = this.SDM.GetAllAttendances<Attendance>(AttendancesWhere).FirstOrDefault();
            dc.Attendance.CheckExpand(this.SDM, new Attendance[] { result }, HttpContext.Current.Request["expand"]);
            this.OnAfterGetById(result, attendanceId);
            return result;
        }

        /// <summary>
        /// Inserts a new Attendance
        /// </summary>
        /// <returns>The inserted Attendance, including the ID assigned</returns>
        public Attendance Post([FromBody]Attendance attendance)
        {// text
            
            if (String.IsNullOrEmpty(attendance.AttendanceId)) attendance.AttendanceId = Guid.NewGuid().ToString();
            this.OnBeforePost(attendance);
            this.SDM.Upsert(attendance);
            this.OnAfterPost(attendance);
            return attendance;
        }

        /// <summary>
        /// Updates a specific Attendance based on it's ID
        /// </summary>
        /// <returns>Attendance</returns>
        public Attendance Put([FromBody]Attendance attendance)
        {
            
            if (String.IsNullOrEmpty(attendance.AttendanceId)) attendance.AttendanceId = Guid.NewGuid().ToString();
            this.OnBeforePut(attendance);
            this.SDM.Upsert(attendance);
            this.OnAfterPut(attendance);
            return attendance;
        }

        /// <summary>
        /// Deletes a specific Attendance based on it's ID
        /// </summary>
        /// <returns>Attendance</returns>
        public void Delete(Guid AttendanceId)
        {
            var attendanceWhere = String.Format("AttendanceId = '{0}'", AttendanceId);
            var attendance = this.SDM.GetAllAttendances<Attendance>(attendanceWhere).FirstOrDefault();
            this.OnBeforeDelete(attendance);
            this.SDM.Delete(attendance);
            this.OnAfterDelete(attendance);
        }
    }
}
