import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../app/app.modules-base';
import { IonicBase } from '../../app/ionic-base';
import { RestAPIService } from '../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class VenuesBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        this.getVenues();
        
    }
    
    public VenuesState = siteMap['Venues'];

    public pages : any;

    

    public VenueState = siteMap['Venue'];
    public parent : any;
    public venues: any = []; 

    

    pop2() { 
        this.navCtrl.pop()
            .then(data => {
                this.navCtrl.pop();
            });
    }

    getVenues() {
        return new Promise(resolve => {
            
            this.apiSvc.getVenues()
                .then(result => { 
                    this.venues = result;
                    resolve(result);
                });
        });
    }

    reload() { return this.getVenues(); }

    addNewVenue() { // 
        var newVenue = {
            "Name" : "New Venue " + (this.venues ? this.venues.length + 1 : 1),
            "Description" : ""
        }
        
        this.apiSvc.addNewVenue(newVenue)
            .then(data => {
                
                this.getVenues();
                this.goToState(this.VenueState, data, true);
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

