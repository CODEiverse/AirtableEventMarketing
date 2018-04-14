import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../../../app/app.modules-base';
import { IonicBase } from '../../../../../app/ionic-base';
import { RestAPIService } from '../../../../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class EventDateBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        
        this.eventDate = this.navParams.get('eventdate') || this.eventDate;
        this.getEventDate();
        this.editMode = this.navParams.get("editMode");
    }
    
    public EventDateState = siteMap['EventDate'];

    public pages : any;

    public parent : any;

    
    public eventdate: any = {};
    
    public eventDate: any = {};
    public canDelete: any = true;
    public editMode = false;

    pop() {
        this.navCtrl.pop();
    }

    getEventDate() {
        return new Promise(resolve => {
            let eventdate = this.navParams.get("eventdate");
            if (!eventdate) eventdate = this.navParams.get("eventDate");

            
            this.apiSvc.getEventDate(eventdate)
                .then(data => {
                    this.eventdate = data;
                    this.canDelete = true;

                    // Check if they can actually delete
                    

                    resolve(data);
                });
            
        });
    }
    
    reload() { return this.getEventDate(); }

    updateEventDate(theEventDateToUpdate) {
            

        this.apiSvc.updateEventDate(theEventDateToUpdate)
            .then(data => {
                 
                this.parent
                    .reload()
                    .then(parentResult => {
                        this.getEventDate();
                        this.editMode = false;
                    });
            });
            
    }


    deleteEventDate() {
        

        this.apiSvc.deleteEventDate(this.eventdate)
            .then(data => {
                this.parent
                    .reload()
                    .then(parentResult => {
                         this.navCtrl.pop();
                    });
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

