import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../app/app.modules-base';
import { IonicBase } from '../../../app/ionic-base';
import { RestAPIService } from '../../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class VIPBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        
        this.vIP = this.navParams.get('vip') || this.vIP;
        this.getVIP();
        this.editMode = this.navParams.get("editMode");
    }
    
    public VIPState = siteMap['VIP'];

    public pages : any;

    

    public AttendancesState = siteMap['Attendances'];
    public parent : any;

    
    public vip: any = {};
    
    public vIP: any = {};
    public canDelete: any = true;
    public editMode = false;

    pop() {
        this.navCtrl.pop();
    }

    getVIP() {
        return new Promise(resolve => {
            let vip = this.navParams.get("vip");
            if (!vip) vip = this.navParams.get("vIP");

            
            this.apiSvc.getVIP(vip)
                .then(data => {
                    this.vip = data;
                    this.canDelete = true;

                    // Check if they can actually delete
                    
                    
                    if (this.vip.Attendances && this.vip.Attendances.length > 0) {
                        this.canDelete = false;
                    }
                    

                    resolve(data);
                });
            
        });
    }
    
    reload() { return this.getVIP(); }

    updateVIP(theVIPToUpdate) {
            

        this.apiSvc.updateVIP(theVIPToUpdate)
            .then(data => {
                 
                this.parent
                    .reload()
                    .then(parentResult => {
                        this.getVIP();
                        this.editMode = false;
                    });
            });
            
    }


    deleteVIP() {
        

        this.apiSvc.deleteVIP(this.vip)
            .then(data => {
                this.parent
                    .reload()
                    .then(parentResult => {
                         this.navCtrl.pop();
                    });
            });
            
    }

    
    goToRootState(state, vIP = {}, editMode = false) : Promise<any> {
        return this.goToState(state, vIP, editMode, true);
    }

    goToState(state, vIP = {}, editMode = false, setRoot = false)  : Promise<any> {
        if (setRoot) {
            return this.navCtrl.setRoot(state.component, { vip : vIP, parent: this, editMode: editMode });
        } else {
            return this.navCtrl.push(state.component, { vip : vIP, parent: this, editMode: editMode });
        }
    }

    goToUrl(url) {
        console.log('SIMULATING OPEN OF URL: ' + url);
    }

    
}

