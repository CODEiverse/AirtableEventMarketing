import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../../app/app.modules-base';
import { IonicBase } from '../../../../app/ionic-base';
import { RestAPIService } from '../../../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class EventDatesBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        this.getEventDates();
        
    }
    
    public EventDatesState = siteMap['EventDates'];

    public pages : any;

    

    public EventDateState = siteMap['EventDate'];
    public parent : any;
    public eventDates: any = []; 

    

    pop2() { 
        this.navCtrl.pop()
            .then(data => {
                this.navCtrl.pop();
            });
    }

    getEventDates() {
        return new Promise(resolve => {
            
            this.parent.reload()
                .then(result => {
                    this.eventDates = result.EventDates;
                    resolve(result);
                })
            
        });
    }

    reload() { return this.getEventDates(); }

    addNewEventDate() { // 
        var newEventDate = {
        
            Venue
             : this.parent.venue.VenueId,
            "Name" : "New EventDate " + (this.eventDates ? this.eventDates.length + 1 : 1),
            "Description" : ""
        }
        
        this.apiSvc.addNewEventDate(newEventDate)
            .then(data => {
                
                this.parent.reload();
                this.getEventDates();
                this.goToState(this.EventDateState, data, true);
            });
            
    }
    

    

    
    goToRootState(state, eventDate = {}, editMode = false) : Promise<any> {
        return this.goToState(state, eventDate, editMode, true);
    }

    goToState(state, eventDate = {}, editMode = false, setRoot = false)  : Promise<any> {
        if (setRoot) {
            return this.navCtrl.setRoot(state.component, { eventdate : eventDate, parent: this, editMode: editMode });
        } else {
            return this.navCtrl.push(state.component, { eventdate : eventDate, parent: this, editMode: editMode });
        }
    }

    goToUrl(url) {
        console.log('SIMULATING OPEN OF URL: ' + url);
    }

    
}

