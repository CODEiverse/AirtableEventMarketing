import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../app/app.modules-base';
import { IonicBase } from '../../app/ionic-base';
import { RestAPIService } from '../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class VIPsBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        this.getVIPs();
        
    }
    
    public VIPsState = siteMap['VIPs'];

    public pages : any;

    

    public VIPState = siteMap['VIP'];
    public parent : any;
    public vIPs: any = []; 

    

    pop2() { 
        this.navCtrl.pop()
            .then(data => {
                this.navCtrl.pop();
            });
    }

    getVIPs() {
        return new Promise(resolve => {
            
            this.apiSvc.getVIPs()
                .then(result => { 
                    this.vIPs = result;
                    resolve(result);
                });
        });
    }

    reload() { return this.getVIPs(); }

    addNewVIP() { // 
        var newVIP = {
            "Name" : "New VIP " + (this.vIPs ? this.vIPs.length + 1 : 1),
            "Description" : ""
        }
        
        this.apiSvc.addNewVIP(newVIP)
            .then(data => {
                
                this.getVIPs();
                this.goToState(this.VIPState, data, true);
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

