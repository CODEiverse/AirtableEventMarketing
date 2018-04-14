/************************************************
 CODEE42 - AUTO GENERATED FILE - DO NOT OVERWRITE
 ************************************************
 Created By: EJ Alexandra - 2016
             An Abstract Level, llc
 License:    Mozilla Public License 2.0
 ************************************************
 CODEE42 - AUTO GENERATED FILE - DO NOT OVERWRITE
 ************************************************/
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Configuration;

using AirtableEventMarketing.Lib.DataClasses;

using CoreLibrary.Extensions;

namespace AirtableEventMarketing.Lib.SqlDataManagement
{
    public partial class SqlDataManager : IDisposable
    {
        public SqlDataManager() : this(SqlDataManager.LastConnectionString) 
        {
            this.Schema = "dbo";
        }
    
        public SqlDataManager(String connectionString)
        {
            this.Schema = "dbo";
            this.ConnectionString = connectionString;
            if (String.IsNullOrEmpty(this.ConnectionString))
            {
                this.ConnectionString = ConfigurationManager.ConnectionStrings[0].ConnectionString;
            }
        }

        public SqlDataManager(String dataSourceName, String dbName) 
        {
            this.Schema = "dbo";
            this.DataSourceName = dataSourceName;
            this.DBName = dbName;
        }
        
        public void Dispose() 
        {
            this.IsDisposed = true;
        }
        
        public static string LastConnectionString { get; set; }
        public string ConnectionString { get; set; }
        public String DataSourceName { get; set; }
        public String DBName { get; set; }
        public Boolean IsDisposed { get; set; }
        public String Schema { get; set; }
        

  
        /// <summary>
        /// Returns a count of the numbers of rows affected by the insert
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
  
  
  
        public int Insert(Attendance attendance)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"INSERT INTO [{0}].[Attendance] (AttendanceId, Notes, Event, Person, Invited, RSVPed, Showedup, Name, createdTime)
                                    VALUES (@AttendanceId, @Notes, @Event, @Person, @Invited, @RSVPed, @Showedup, @Name, @createdTime)", this.Schema);

                
                  
                if (ReferenceEquals(attendance.AttendanceId, null)) cmd.Parameters.AddWithValue("@AttendanceId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@AttendanceId", attendance.AttendanceId);
                
                  
                if (ReferenceEquals(attendance.Notes, null)) cmd.Parameters.AddWithValue("@Notes", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Notes", attendance.Notes);
                
                  
                if (ReferenceEquals(attendance.Event, null)) cmd.Parameters.AddWithValue("@Event", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Event", attendance.Event);
                
                  
                if (ReferenceEquals(attendance.Person, null)) cmd.Parameters.AddWithValue("@Person", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Person", attendance.Person);
                
                  
                if (ReferenceEquals(attendance.Invited, null)) cmd.Parameters.AddWithValue("@Invited", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Invited", attendance.Invited);
                
                  
                if (ReferenceEquals(attendance.RSVPed, null)) cmd.Parameters.AddWithValue("@RSVPed", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@RSVPed", attendance.RSVPed);
                
                  
                if (ReferenceEquals(attendance.Showedup, null)) cmd.Parameters.AddWithValue("@Showedup", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Showedup", attendance.Showedup);
                
                  
                if (ReferenceEquals(attendance.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", attendance.Name);
                
                  
                if (ReferenceEquals(attendance.createdTime, null) ||
                    (attendance.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", attendance.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
          /// <summary>
        /// Returns a count of the numbers of rows affected by the Upsert.
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
        public int Upsert(Attendance attendance)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                
                // Check if this method exists, and call insert or udpate as appropriate
                
                
                var id = attendance.AttendanceId;
                cmd.CommandText = String.Format(@"SELECT CASE WHEN EXISTS (SELECT * FROM [Attendance] WHERE AttendanceId = '{0}') THEN 1 else 0 END", id);
                
                var rowExists = cmd.ExecuteScalar();

                if (rowExists.SafeToString() == "1") return this.Update(attendance);
                else return this.Insert(attendance);
            }
            finally
            {
                conn.Close();
            }
        }
        
        public List<T> GetAllAttendances<T>()
            where T : Attendance, new()
        {
            return this.GetAllAttendances<T>(String.Empty);
        }

        
        public List<T> GetAllAttendances<T>(String whereClause)
            where T : Attendance, new()
        {
            List<T> results = new List<T>();
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"SELECT * FROM [{0}].[Attendance]", this.Schema);
                if (!String.IsNullOrEmpty(whereClause)) 
                {
                    cmd.CommandText = String.Format("{0} WHERE {1}", cmd.CommandText, whereClause);
                }

                SqlDataReader reader = cmd.ExecuteReader();
                
                int propertyIndex = -1;
                while (reader.Read())
                {
                    T attendance = new T();
                    
                    
                      propertyIndex = reader.GetOrdinal("AttendanceId");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          attendance.AttendanceId = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Notes");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          attendance.Notes = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Event");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          attendance.Event = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Person");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          attendance.Person = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Invited");
                      if (!reader.IsDBNull(propertyIndex)) //BOOLEAN
                      {
                          
                          attendance.Invited = reader.GetBoolean(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("RSVPed");
                      if (!reader.IsDBNull(propertyIndex)) //BOOLEAN
                      {
                          
                          attendance.RSVPed = reader.GetBoolean(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Showedup");
                      if (!reader.IsDBNull(propertyIndex)) //BOOLEAN
                      {
                          
                          attendance.Showedup = reader.GetBoolean(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Name");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          attendance.Name = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("createdTime");
                      if (!reader.IsDBNull(propertyIndex)) //DATETIME
                      {
                          
                          attendance.createdTime = reader.GetDateTime(propertyIndex);
                      }
                   
                    results.Add(attendance);
                }

                return results;
            }
            finally
            {
                conn.Close();
            }
        }
        
        /// <summary>
        /// Updates the specified Attendance
        /// </summary>
        /// <returns></returns>
        public int Update(Attendance attendance)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"UPDATE [{0}].[Attendance] SET 
                                    [Notes] = @Notes, [Event] = @Event, [Person] = @Person, [Invited] = @Invited, [RSVPed] = @RSVPed, [Showedup] = @Showedup, [Name] = @Name, [createdTime] = @createdTime
                                    WHERE  [AttendanceId] = @AttendanceId", this.Schema);

                 //TEXT
                
                if (ReferenceEquals(attendance.AttendanceId, null)) cmd.Parameters.AddWithValue("@AttendanceId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@AttendanceId", attendance.AttendanceId);
                 //TEXT
                
                if (ReferenceEquals(attendance.Notes, null)) cmd.Parameters.AddWithValue("@Notes", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Notes", attendance.Notes);
                 //TEXT
                
                if (ReferenceEquals(attendance.Event, null)) cmd.Parameters.AddWithValue("@Event", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Event", attendance.Event);
                 //TEXT
                
                if (ReferenceEquals(attendance.Person, null)) cmd.Parameters.AddWithValue("@Person", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Person", attendance.Person);
                 //BOOLEAN
                
                if (ReferenceEquals(attendance.Invited, null)) cmd.Parameters.AddWithValue("@Invited", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Invited", attendance.Invited);
                 //BOOLEAN
                
                if (ReferenceEquals(attendance.RSVPed, null)) cmd.Parameters.AddWithValue("@RSVPed", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@RSVPed", attendance.RSVPed);
                 //BOOLEAN
                
                if (ReferenceEquals(attendance.Showedup, null)) cmd.Parameters.AddWithValue("@Showedup", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Showedup", attendance.Showedup);
                 //TEXT
                
                if (ReferenceEquals(attendance.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", attendance.Name);
                 //DATETIME
                
                if (ReferenceEquals(attendance.createdTime, null) ||
                    (attendance.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", attendance.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
                
        /// <summary>
        /// Deletes the specified Attendance
        /// </summary>
        /// <returns></returns>
        public int Delete(Attendance attendance)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"DELETE FROM [{0}].[Attendance] 
                                    WHERE  [AttendanceId] = @AttendanceId", this.Schema);
                                    
                
                if (ReferenceEquals(attendance.AttendanceId, null)) cmd.Parameters.AddWithValue("@AttendanceId", DBNull.Value);
                else cmd.Parameters.AddWithValue("@AttendanceId", attendance.AttendanceId);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }

          
  
        /// <summary>
        /// Returns a count of the numbers of rows affected by the insert
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
  
  
  
        public int Insert(EventDate eventDate)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"INSERT INTO [{0}].[EventDate] (EventDateId, Name, Type, StartDate, Details, EndDate, Venue, ofAttendees, ofInvites, createdTime)
                                    VALUES (@EventDateId, @Name, @Type, @StartDate, @Details, @EndDate, @Venue, @ofAttendees, @ofInvites, @createdTime)", this.Schema);

                
                  
                if (ReferenceEquals(eventDate.EventDateId, null)) cmd.Parameters.AddWithValue("@EventDateId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@EventDateId", eventDate.EventDateId);
                
                  
                if (ReferenceEquals(eventDate.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", eventDate.Name);
                
                  
                if (ReferenceEquals(eventDate.Type, null)) cmd.Parameters.AddWithValue("@Type", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Type", eventDate.Type);
                
                  
                if (ReferenceEquals(eventDate.StartDate, null)) cmd.Parameters.AddWithValue("@StartDate", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@StartDate", eventDate.StartDate);
                
                  
                if (ReferenceEquals(eventDate.Details, null)) cmd.Parameters.AddWithValue("@Details", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Details", eventDate.Details);
                
                  
                if (ReferenceEquals(eventDate.EndDate, null)) cmd.Parameters.AddWithValue("@EndDate", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@EndDate", eventDate.EndDate);
                
                  
                if (ReferenceEquals(eventDate.Venue, null)) cmd.Parameters.AddWithValue("@Venue", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Venue", eventDate.Venue);
                
                  
                if (ReferenceEquals(eventDate.ofAttendees, null)) cmd.Parameters.AddWithValue("@ofAttendees", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@ofAttendees", eventDate.ofAttendees);
                
                  
                if (ReferenceEquals(eventDate.ofInvites, null)) cmd.Parameters.AddWithValue("@ofInvites", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@ofInvites", eventDate.ofInvites);
                
                  
                if (ReferenceEquals(eventDate.createdTime, null) ||
                    (eventDate.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", eventDate.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
          /// <summary>
        /// Returns a count of the numbers of rows affected by the Upsert.
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
        public int Upsert(EventDate eventDate)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                
                // Check if this method exists, and call insert or udpate as appropriate
                
                
                var id = eventDate.EventDateId;
                cmd.CommandText = String.Format(@"SELECT CASE WHEN EXISTS (SELECT * FROM [EventDate] WHERE EventDateId = '{0}') THEN 1 else 0 END", id);
                
                var rowExists = cmd.ExecuteScalar();

                if (rowExists.SafeToString() == "1") return this.Update(eventDate);
                else return this.Insert(eventDate);
            }
            finally
            {
                conn.Close();
            }
        }
        
        public List<T> GetAllEventDates<T>()
            where T : EventDate, new()
        {
            return this.GetAllEventDates<T>(String.Empty);
        }

        
        public List<T> GetAllEventDates<T>(String whereClause)
            where T : EventDate, new()
        {
            List<T> results = new List<T>();
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"SELECT * FROM [{0}].[EventDate]", this.Schema);
                if (!String.IsNullOrEmpty(whereClause)) 
                {
                    cmd.CommandText = String.Format("{0} WHERE {1}", cmd.CommandText, whereClause);
                }

                SqlDataReader reader = cmd.ExecuteReader();
                
                int propertyIndex = -1;
                while (reader.Read())
                {
                    T eventDate = new T();
                    
                    
                      propertyIndex = reader.GetOrdinal("EventDateId");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          eventDate.EventDateId = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Name");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          eventDate.Name = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Type");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          eventDate.Type = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("StartDate");
                      if (!reader.IsDBNull(propertyIndex)) //XS:DATE
                      {
                          
                          eventDate.StartDate = reader.GetDateTime(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Details");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          eventDate.Details = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("EndDate");
                      if (!reader.IsDBNull(propertyIndex)) //XS:DATE
                      {
                          
                          eventDate.EndDate = reader.GetDateTime(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Venue");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          eventDate.Venue = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("ofAttendees");
                      if (!reader.IsDBNull(propertyIndex)) //INT32
                      {
                          
                          eventDate.ofAttendees = reader.GetInt32(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("ofInvites");
                      if (!reader.IsDBNull(propertyIndex)) //INT32
                      {
                          
                          eventDate.ofInvites = reader.GetInt32(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("createdTime");
                      if (!reader.IsDBNull(propertyIndex)) //DATETIME
                      {
                          
                          eventDate.createdTime = reader.GetDateTime(propertyIndex);
                      }
                   
                    results.Add(eventDate);
                }

                return results;
            }
            finally
            {
                conn.Close();
            }
        }
        
        /// <summary>
        /// Updates the specified EventDate
        /// </summary>
        /// <returns></returns>
        public int Update(EventDate eventDate)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"UPDATE [{0}].[EventDate] SET 
                                    [Name] = @Name, [Type] = @Type, [StartDate] = @StartDate, [Details] = @Details, [EndDate] = @EndDate, [Venue] = @Venue, [ofAttendees] = @ofAttendees, [ofInvites] = @ofInvites, [createdTime] = @createdTime
                                    WHERE  [EventDateId] = @EventDateId", this.Schema);

                 //TEXT
                
                if (ReferenceEquals(eventDate.EventDateId, null)) cmd.Parameters.AddWithValue("@EventDateId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@EventDateId", eventDate.EventDateId);
                 //TEXT
                
                if (ReferenceEquals(eventDate.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", eventDate.Name);
                 //TEXT
                
                if (ReferenceEquals(eventDate.Type, null)) cmd.Parameters.AddWithValue("@Type", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Type", eventDate.Type);
                 //xs:date
                
                if (ReferenceEquals(eventDate.StartDate, null)) cmd.Parameters.AddWithValue("@StartDate", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@StartDate", eventDate.StartDate);
                 //TEXT
                
                if (ReferenceEquals(eventDate.Details, null)) cmd.Parameters.AddWithValue("@Details", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Details", eventDate.Details);
                 //xs:date
                
                if (ReferenceEquals(eventDate.EndDate, null)) cmd.Parameters.AddWithValue("@EndDate", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@EndDate", eventDate.EndDate);
                 //TEXT
                
                if (ReferenceEquals(eventDate.Venue, null)) cmd.Parameters.AddWithValue("@Venue", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Venue", eventDate.Venue);
                 //INT32
                
                if (ReferenceEquals(eventDate.ofAttendees, null)) cmd.Parameters.AddWithValue("@ofAttendees", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@ofAttendees", eventDate.ofAttendees);
                 //INT32
                
                if (ReferenceEquals(eventDate.ofInvites, null)) cmd.Parameters.AddWithValue("@ofInvites", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@ofInvites", eventDate.ofInvites);
                 //DATETIME
                
                if (ReferenceEquals(eventDate.createdTime, null) ||
                    (eventDate.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", eventDate.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
                
        /// <summary>
        /// Deletes the specified EventDate
        /// </summary>
        /// <returns></returns>
        public int Delete(EventDate eventDate)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"DELETE FROM [{0}].[EventDate] 
                                    WHERE  [EventDateId] = @EventDateId", this.Schema);
                                    
                
                if (ReferenceEquals(eventDate.EventDateId, null)) cmd.Parameters.AddWithValue("@EventDateId", DBNull.Value);
                else cmd.Parameters.AddWithValue("@EventDateId", eventDate.EventDateId);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }

          
  
        /// <summary>
        /// Returns a count of the numbers of rows affected by the insert
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
  
  
  
        public int Insert(VIP vIP)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"INSERT INTO [{0}].[VIP] (VIPId, Name, Location, Email, Address, Type, Notes, Eventsattended, createdTime)
                                    VALUES (@VIPId, @Name, @Location, @Email, @Address, @Type, @Notes, @Eventsattended, @createdTime)", this.Schema);

                
                  
                if (ReferenceEquals(vIP.VIPId, null)) cmd.Parameters.AddWithValue("@VIPId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@VIPId", vIP.VIPId);
                
                  
                if (ReferenceEquals(vIP.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", vIP.Name);
                
                  
                if (ReferenceEquals(vIP.Location, null)) cmd.Parameters.AddWithValue("@Location", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Location", vIP.Location);
                
                  
                if (ReferenceEquals(vIP.Email, null)) cmd.Parameters.AddWithValue("@Email", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Email", vIP.Email);
                
                  
                if (ReferenceEquals(vIP.Address, null)) cmd.Parameters.AddWithValue("@Address", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Address", vIP.Address);
                
                  
                if (ReferenceEquals(vIP.Type, null)) cmd.Parameters.AddWithValue("@Type", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Type", vIP.Type);
                
                  
                if (ReferenceEquals(vIP.Notes, null)) cmd.Parameters.AddWithValue("@Notes", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Notes", vIP.Notes);
                
                  
                if (ReferenceEquals(vIP.Eventsattended, null)) cmd.Parameters.AddWithValue("@Eventsattended", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Eventsattended", vIP.Eventsattended);
                
                  
                if (ReferenceEquals(vIP.createdTime, null) ||
                    (vIP.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", vIP.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
          /// <summary>
        /// Returns a count of the numbers of rows affected by the Upsert.
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
        public int Upsert(VIP vIP)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                
                // Check if this method exists, and call insert or udpate as appropriate
                
                
                var id = vIP.VIPId;
                cmd.CommandText = String.Format(@"SELECT CASE WHEN EXISTS (SELECT * FROM [VIP] WHERE VIPId = '{0}') THEN 1 else 0 END", id);
                
                var rowExists = cmd.ExecuteScalar();

                if (rowExists.SafeToString() == "1") return this.Update(vIP);
                else return this.Insert(vIP);
            }
            finally
            {
                conn.Close();
            }
        }
        
        public List<T> GetAllVIPs<T>()
            where T : VIP, new()
        {
            return this.GetAllVIPs<T>(String.Empty);
        }

        
        public List<T> GetAllVIPs<T>(String whereClause)
            where T : VIP, new()
        {
            List<T> results = new List<T>();
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"SELECT * FROM [{0}].[VIP]", this.Schema);
                if (!String.IsNullOrEmpty(whereClause)) 
                {
                    cmd.CommandText = String.Format("{0} WHERE {1}", cmd.CommandText, whereClause);
                }

                SqlDataReader reader = cmd.ExecuteReader();
                
                int propertyIndex = -1;
                while (reader.Read())
                {
                    T vIP = new T();
                    
                    
                      propertyIndex = reader.GetOrdinal("VIPId");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          vIP.VIPId = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Name");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          vIP.Name = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Location");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          vIP.Location = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Email");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          vIP.Email = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Address");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          vIP.Address = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Type");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          vIP.Type = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Notes");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          vIP.Notes = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Eventsattended");
                      if (!reader.IsDBNull(propertyIndex)) //INT32
                      {
                          
                          vIP.Eventsattended = reader.GetInt32(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("createdTime");
                      if (!reader.IsDBNull(propertyIndex)) //DATETIME
                      {
                          
                          vIP.createdTime = reader.GetDateTime(propertyIndex);
                      }
                   
                    results.Add(vIP);
                }

                return results;
            }
            finally
            {
                conn.Close();
            }
        }
        
        /// <summary>
        /// Updates the specified VIP
        /// </summary>
        /// <returns></returns>
        public int Update(VIP vIP)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"UPDATE [{0}].[VIP] SET 
                                    [Name] = @Name, [Location] = @Location, [Email] = @Email, [Address] = @Address, [Type] = @Type, [Notes] = @Notes, [Eventsattended] = @Eventsattended, [createdTime] = @createdTime
                                    WHERE  [VIPId] = @VIPId", this.Schema);

                 //TEXT
                
                if (ReferenceEquals(vIP.VIPId, null)) cmd.Parameters.AddWithValue("@VIPId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@VIPId", vIP.VIPId);
                 //TEXT
                
                if (ReferenceEquals(vIP.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", vIP.Name);
                 //TEXT
                
                if (ReferenceEquals(vIP.Location, null)) cmd.Parameters.AddWithValue("@Location", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Location", vIP.Location);
                 //TEXT
                
                if (ReferenceEquals(vIP.Email, null)) cmd.Parameters.AddWithValue("@Email", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Email", vIP.Email);
                 //TEXT
                
                if (ReferenceEquals(vIP.Address, null)) cmd.Parameters.AddWithValue("@Address", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Address", vIP.Address);
                 //TEXT
                
                if (ReferenceEquals(vIP.Type, null)) cmd.Parameters.AddWithValue("@Type", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Type", vIP.Type);
                 //TEXT
                
                if (ReferenceEquals(vIP.Notes, null)) cmd.Parameters.AddWithValue("@Notes", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Notes", vIP.Notes);
                 //INT32
                
                if (ReferenceEquals(vIP.Eventsattended, null)) cmd.Parameters.AddWithValue("@Eventsattended", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Eventsattended", vIP.Eventsattended);
                 //DATETIME
                
                if (ReferenceEquals(vIP.createdTime, null) ||
                    (vIP.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", vIP.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
                
        /// <summary>
        /// Deletes the specified VIP
        /// </summary>
        /// <returns></returns>
        public int Delete(VIP vIP)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"DELETE FROM [{0}].[VIP] 
                                    WHERE  [VIPId] = @VIPId", this.Schema);
                                    
                
                if (ReferenceEquals(vIP.VIPId, null)) cmd.Parameters.AddWithValue("@VIPId", DBNull.Value);
                else cmd.Parameters.AddWithValue("@VIPId", vIP.VIPId);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }

          
  
        /// <summary>
        /// Returns a count of the numbers of rows affected by the insert
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
  
  
  
        public int Insert(Venue venue)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"INSERT INTO [{0}].[Venue] (VenueId, Name, Address, Notes, MapCache, createdTime)
                                    VALUES (@VenueId, @Name, @Address, @Notes, @MapCache, @createdTime)", this.Schema);

                
                  
                if (ReferenceEquals(venue.VenueId, null)) cmd.Parameters.AddWithValue("@VenueId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@VenueId", venue.VenueId);
                
                  
                if (ReferenceEquals(venue.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", venue.Name);
                
                  
                if (ReferenceEquals(venue.Address, null)) cmd.Parameters.AddWithValue("@Address", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Address", venue.Address);
                
                  
                if (ReferenceEquals(venue.Notes, null)) cmd.Parameters.AddWithValue("@Notes", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Notes", venue.Notes);
                
                  
                if (ReferenceEquals(venue.MapCache, null)) cmd.Parameters.AddWithValue("@MapCache", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@MapCache", venue.MapCache);
                
                  
                if (ReferenceEquals(venue.createdTime, null) ||
                    (venue.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", venue.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
          /// <summary>
        /// Returns a count of the numbers of rows affected by the Upsert.
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
        public int Upsert(Venue venue)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                
                // Check if this method exists, and call insert or udpate as appropriate
                
                
                var id = venue.VenueId;
                cmd.CommandText = String.Format(@"SELECT CASE WHEN EXISTS (SELECT * FROM [Venue] WHERE VenueId = '{0}') THEN 1 else 0 END", id);
                
                var rowExists = cmd.ExecuteScalar();

                if (rowExists.SafeToString() == "1") return this.Update(venue);
                else return this.Insert(venue);
            }
            finally
            {
                conn.Close();
            }
        }
        
        public List<T> GetAllVenues<T>()
            where T : Venue, new()
        {
            return this.GetAllVenues<T>(String.Empty);
        }

        
        public List<T> GetAllVenues<T>(String whereClause)
            where T : Venue, new()
        {
            List<T> results = new List<T>();
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"SELECT * FROM [{0}].[Venue]", this.Schema);
                if (!String.IsNullOrEmpty(whereClause)) 
                {
                    cmd.CommandText = String.Format("{0} WHERE {1}", cmd.CommandText, whereClause);
                }

                SqlDataReader reader = cmd.ExecuteReader();
                
                int propertyIndex = -1;
                while (reader.Read())
                {
                    T venue = new T();
                    
                    
                      propertyIndex = reader.GetOrdinal("VenueId");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          venue.VenueId = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Name");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          venue.Name = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Address");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          venue.Address = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Notes");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          venue.Notes = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("MapCache");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          venue.MapCache = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("createdTime");
                      if (!reader.IsDBNull(propertyIndex)) //DATETIME
                      {
                          
                          venue.createdTime = reader.GetDateTime(propertyIndex);
                      }
                   
                    results.Add(venue);
                }

                return results;
            }
            finally
            {
                conn.Close();
            }
        }
        
        /// <summary>
        /// Updates the specified Venue
        /// </summary>
        /// <returns></returns>
        public int Update(Venue venue)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"UPDATE [{0}].[Venue] SET 
                                    [Name] = @Name, [Address] = @Address, [Notes] = @Notes, [MapCache] = @MapCache, [createdTime] = @createdTime
                                    WHERE  [VenueId] = @VenueId", this.Schema);

                 //TEXT
                
                if (ReferenceEquals(venue.VenueId, null)) cmd.Parameters.AddWithValue("@VenueId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@VenueId", venue.VenueId);
                 //TEXT
                
                if (ReferenceEquals(venue.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", venue.Name);
                 //TEXT
                
                if (ReferenceEquals(venue.Address, null)) cmd.Parameters.AddWithValue("@Address", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Address", venue.Address);
                 //TEXT
                
                if (ReferenceEquals(venue.Notes, null)) cmd.Parameters.AddWithValue("@Notes", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Notes", venue.Notes);
                 //TEXT
                
                if (ReferenceEquals(venue.MapCache, null)) cmd.Parameters.AddWithValue("@MapCache", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@MapCache", venue.MapCache);
                 //DATETIME
                
                if (ReferenceEquals(venue.createdTime, null) ||
                    (venue.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", venue.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
                
        /// <summary>
        /// Deletes the specified Venue
        /// </summary>
        /// <returns></returns>
        public int Delete(Venue venue)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"DELETE FROM [{0}].[Venue] 
                                    WHERE  [VenueId] = @VenueId", this.Schema);
                                    
                
                if (ReferenceEquals(venue.VenueId, null)) cmd.Parameters.AddWithValue("@VenueId", DBNull.Value);
                else cmd.Parameters.AddWithValue("@VenueId", venue.VenueId);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }

                  
            
            

        public object LastIdentity { get; set; }
        public string ExecuteAsUser { get; set; }
        
        private SqlConnection CreateSqlConnection() 
        {
            if (String.IsNullOrEmpty(this.ConnectionString))
            {
                SqlConnectionStringBuilder scsb = new SqlConnectionStringBuilder();
                scsb.DataSource = this.DataSourceName;
                scsb.InitialCatalog = this.DBName;
                scsb.IntegratedSecurity = true;
                this.ConnectionString = scsb.ConnectionString;
            }
            
            SqlDataManager.LastConnectionString = this.ConnectionString;
            
            return new SqlConnection(this.ConnectionString);
        }
        
        
        private void InitializeConnection(SqlConnection conn)
        {
            conn.Open();
            if (!String.IsNullOrEmpty(this.ExecuteAsUser))
            {
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    cmd.CommandText = String.Format("EXECUTE AS USER='{0}'", this.ExecuteAsUser);
                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}

      