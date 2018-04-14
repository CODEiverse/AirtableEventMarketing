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
    public partial class VIPsController : ApiController
    {
        public SqlDataManager SDM { get; }

        partial void OnConstructor();
        partial void OnBeforeGet();
        partial void OnAfterGet(IEnumerable<VIP> VIPs);
        partial void OnAfterGetById(VIP VIPs, String vIPId);
        partial void OnBeforePost(VIP vip);
        partial void OnAfterPost(VIP vip);
        partial void OnBeforePut(VIP vip);
        partial void OnAfterPut(VIP vip);
        partial void OnBeforeDelete(VIP vip);
        partial void OnAfterDelete(VIP vip);
        

        public VIPsController()
        {
            this.SDM = new SqlDataManager();
            this.OnConstructor();
        }

        /// <summary>
        /// GET api/VIP - Gets a list of VIPs
        /// </summary>
        /// <returns>List of VIPs</returns>
        public IEnumerable<VIP> Get()
        {
            this.OnBeforeGet();
            var results = this.SDM.GetAllVIPs<VIP>()
                            .OrderBy(orderBy => orderBy.Name);
            dc.VIP.CheckExpand(this.SDM, results, HttpContext.Current.Request["expand"]);
            this.OnAfterGet(results);
            return results;
        }

        /// <summary>
        /// Gets a specific VIP based on it's ID
        /// </summary>
        /// <returns>VIP</returns>
        public VIP Get(String vIPId)
        {
            var VIPsWhere = String.Format("VIPId = '{0}'", vIPId);
            var result = this.SDM.GetAllVIPs<VIP>(VIPsWhere).FirstOrDefault();
            dc.VIP.CheckExpand(this.SDM, new VIP[] { result }, HttpContext.Current.Request["expand"]);
            this.OnAfterGetById(result, vIPId);
            return result;
        }

        /// <summary>
        /// Inserts a new VIP
        /// </summary>
        /// <returns>The inserted VIP, including the ID assigned</returns>
        public VIP Post([FromBody]VIP vip)
        {// text
            
            if (String.IsNullOrEmpty(vip.VIPId)) vip.VIPId = Guid.NewGuid().ToString();
            this.OnBeforePost(vip);
            this.SDM.Upsert(vip);
            this.OnAfterPost(vip);
            return vip;
        }

        /// <summary>
        /// Updates a specific VIP based on it's ID
        /// </summary>
        /// <returns>VIP</returns>
        public VIP Put([FromBody]VIP vip)
        {
            
            if (String.IsNullOrEmpty(vip.VIPId)) vip.VIPId = Guid.NewGuid().ToString();
            this.OnBeforePut(vip);
            this.SDM.Upsert(vip);
            this.OnAfterPut(vip);
            return vip;
        }

        /// <summary>
        /// Deletes a specific VIP based on it's ID
        /// </summary>
        /// <returns>VIP</returns>
        public void Delete(Guid VIPId)
        {
            var vipWhere = String.Format("VIPId = '{0}'", VIPId);
            var vip = this.SDM.GetAllVIPs<VIP>(vipWhere).FirstOrDefault();
            this.OnBeforeDelete(vip);
            this.SDM.Delete(vip);
            this.OnAfterDelete(vip);
        }
    }
}
