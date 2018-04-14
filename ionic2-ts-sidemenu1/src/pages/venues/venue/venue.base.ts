import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../app/app.modules-base';
import { IonicBase } from '../../../app/ionic-base';
import { RestAPIService } from '../../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class VenueBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        
        this.venue = this.navParams.get('venue') || this.venue;
        this.getVenue();
        this.editMode = this.navParams.get("editMode");
    }
    
    public VenueState = siteMap['Venue'];

    public pages : any;

    

    public EventDatesState = siteMap['EventDates'];
    public parent : any;

    
    public venue: any = {};
    ;
    public canDelete: any = true;
    public editMode = false;

    pop() {
        this.navCtrl.pop();
    }

    getVenue() {
        return new Promise(resolve => {
            let venue = this.navParams.get("venue");
            if (!venue) venue = this.navParams.get("venue");

            
            this.apiSvc.getVenue(venue)
                .then(data => {
                    this.venue = data;
                    this.canDelete = true;

                    // Check if they can actually delete
                    
                    
                    if (this.venue.EventDates && this.venue.EventDates.length > 0) {
                        this.canDelete = false;
                    }
                    

                    resolve(data);
                });
            
        });
    }
    
    reload() { return this.getVenue(); }

    updateVenue(theVenueToUpdate) {
            

        this.apiSvc.updateVenue(theVenueToUpdate)
            .then(data => {
                 
                this.parent
                    .reload()
                    .then(parentResult => {
                        this.getVenue();
                        this.editMode = false;
                    });
            });
            
    }


    deleteVenue() {
        

        this.apiSvc.deleteVenue(this.venue)
            .then(data => {
                this.parent
                    .reload()
                    .then(parentResult => {
                         this.navCtrl.pop();
                    });
            });
            
    }

    
    goToRootState(state, venue = {}, editMode = false) : Promise<any> {
        return this.goToState(state, venue, editMode, true);
    }

    goToState(state, venue = {}, editMode = false, setRoot = false)  : Promise<any> {
        if (setRoot) {
            return this.navCtrl.setRoot(state.component, { venue : venue, parent: this, editMode: editMode });
        } else {
            return this.navCtrl.push(state.component, { venue : venue, parent: this, editMode: editMode });
        }
    }

    goToUrl(url) {
        console.log('SIMULATING OPEN OF URL: ' + url);
    }

    
}

