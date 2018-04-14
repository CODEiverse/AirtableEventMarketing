import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';

/*
  Generated class for the RestAPISErvice provider.

  See https://angular.io/docs/ts/latest/guide/dependency-injection.html
  for more info on providers and Angular 2 DI.
*/
@Injectable()
export class RestAPIService {

    apiUrl = 'http://localhost:64110/api';


    constructor(public http: Http) {
      console.log('Hello RestAPIService Provider');
    }

    
      
      
      
      
      
    public attendances: any[];
    getAttendances() {

        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/Attendances?expand=all')
                .map(res => res.json())
                .subscribe(data => {
                    this.attendances = data;
                    resolve(this.attendances);
                });
        });
    }

    public attendance: any[];
    getAttendance(attendance: any) {
        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/Attendances?expand=all&attendanceId=' + attendance.AttendanceId)
                .map(res => res.json())
                .subscribe(data => {
                    this.attendance = data;
                    resolve(this.attendance);
                });
        });
    }

    
    updateAttendance(attendance: any) {
         return new Promise(resolve => {
            this.http.put(this.apiUrl + '/Attendances', attendance)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    addNewAttendance(attendance: any) {
         return new Promise(resolve => {
            this.http.post(this.apiUrl + '/Attendances', attendance)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }

    deleteAttendance(attendance: any) {
         return new Promise(resolve => {
            this.http.delete(this.apiUrl + '/Attendances?attendanceId=' + attendance.AttendanceId)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    
      
      
      
      
      
    public eventDates: any[];
    getEventDates() {

        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/EventDates?expand=all')
                .map(res => res.json())
                .subscribe(data => {
                    this.eventDates = data;
                    resolve(this.eventDates);
                });
        });
    }

    public eventDate: any[];
    getEventDate(eventDate: any) {
        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/EventDates?expand=all&eventDateId=' + eventDate.EventDateId)
                .map(res => res.json())
                .subscribe(data => {
                    this.eventDate = data;
                    resolve(this.eventDate);
                });
        });
    }

    
    updateEventDate(eventDate: any) {
         return new Promise(resolve => {
            this.http.put(this.apiUrl + '/EventDates', eventDate)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    addNewEventDate(eventDate: any) {
         return new Promise(resolve => {
            this.http.post(this.apiUrl + '/EventDates', eventDate)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }

    deleteEventDate(eventDate: any) {
         return new Promise(resolve => {
            this.http.delete(this.apiUrl + '/EventDates?eventDateId=' + eventDate.EventDateId)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    
      
      
      
      
      
    public vIPs: any[];
    getVIPs() {

        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/VIPs?expand=all')
                .map(res => res.json())
                .subscribe(data => {
                    this.vIPs = data;
                    resolve(this.vIPs);
                });
        });
    }

    public vIP: any[];
    getVIP(vIP: any) {
        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/VIPs?expand=all&vIPId=' + vIP.VIPId)
                .map(res => res.json())
                .subscribe(data => {
                    this.vIP = data;
                    resolve(this.vIP);
                });
        });
    }

    
    updateVIP(vIP: any) {
         return new Promise(resolve => {
            this.http.put(this.apiUrl + '/VIPs', vIP)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    addNewVIP(vIP: any) {
         return new Promise(resolve => {
            this.http.post(this.apiUrl + '/VIPs', vIP)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }

    deleteVIP(vIP: any) {
         return new Promise(resolve => {
            this.http.delete(this.apiUrl + '/VIPs?vIPId=' + vIP.VIPId)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    
      
      
      
      
      
    public venues: any[];
    getVenues() {

        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/Venues?expand=all')
                .map(res => res.json())
                .subscribe(data => {
                    this.venues = data;
                    resolve(this.venues);
                });
        });
    }

    public venue: any[];
    getVenue(venue: any) {
        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/Venues?expand=all&venueId=' + venue.VenueId)
                .map(res => res.json())
                .subscribe(data => {
                    this.venue = data;
                    resolve(this.venue);
                });
        });
    }

    
    updateVenue(venue: any) {
         return new Promise(resolve => {
            this.http.put(this.apiUrl + '/Venues', venue)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    addNewVenue(venue: any) {
         return new Promise(resolve => {
            this.http.post(this.apiUrl + '/Venues', venue)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }

    deleteVenue(venue: any) {
         return new Promise(resolve => {
            this.http.delete(this.apiUrl + '/Venues?venueId=' + venue.VenueId)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    


}

