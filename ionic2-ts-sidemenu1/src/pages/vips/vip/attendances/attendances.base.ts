import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../../app/app.modules-base';
import { IonicBase } from '../../../../app/ionic-base';
import { RestAPIService } from '../../../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class AttendancesBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        this.getAttendances();
        
    }
    
    public AttendancesState = siteMap['Attendances'];

    public pages : any;

    

    public AttendanceState = siteMap['Attendance'];
    public parent : any;
    public attendances: any = []; 

    

    pop2() { 
        this.navCtrl.pop()
            .then(data => {
                this.navCtrl.pop();
            });
    }

    getAttendances() {
        return new Promise(resolve => {
            
            this.parent.reload()
                .then(result => {
                    this.attendances = result.Attendances;
                    resolve(result);
                })
            
        });
    }

    reload() { return this.getAttendances(); }

    addNewAttendance() { // 
        var newAttendance = {
        
            Person
             : this.parent.vip.VIPId,
            "Name" : "New Attendance " + (this.attendances ? this.attendances.length + 1 : 1),
            "Description" : ""
        }
        
        this.apiSvc.addNewAttendance(newAttendance)
            .then(data => {
                
                this.parent.reload();
                this.getAttendances();
                this.goToState(this.AttendanceState, data, true);
            });
            
    }
    

    

    
    goToRootState(state, attendance = {}, editMode = false) : Promise<any> {
        return this.goToState(state, attendance, editMode, true);
    }

    goToState(state, attendance = {}, editMode = false, setRoot = false)  : Promise<any> {
        if (setRoot) {
            return this.navCtrl.setRoot(state.component, { attendance : attendance, parent: this, editMode: editMode });
        } else {
            return this.navCtrl.push(state.component, { attendance : attendance, parent: this, editMode: editMode });
        }
    }

    goToUrl(url) {
        console.log('SIMULATING OPEN OF URL: ' + url);
    }

    
}

