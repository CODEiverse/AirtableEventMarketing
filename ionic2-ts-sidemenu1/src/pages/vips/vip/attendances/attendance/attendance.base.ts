import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../../../app/app.modules-base';
import { IonicBase } from '../../../../../app/ionic-base';
import { RestAPIService } from '../../../../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class AttendanceBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        
        this.attendance = this.navParams.get('attendance') || this.attendance;
        this.getAttendance();
        this.editMode = this.navParams.get("editMode");
    }
    
    public AttendanceState = siteMap['Attendance'];

    public pages : any;

    public parent : any;

    
    public attendance: any = {};
    ;
    public canDelete: any = true;
    public editMode = false;

    pop() {
        this.navCtrl.pop();
    }

    getAttendance() {
        return new Promise(resolve => {
            let attendance = this.navParams.get("attendance");
            if (!attendance) attendance = this.navParams.get("attendance");

            
            this.apiSvc.getAttendance(attendance)
                .then(data => {
                    this.attendance = data;
                    this.canDelete = true;

                    // Check if they can actually delete
                    

                    resolve(data);
                });
            
        });
    }
    
    reload() { return this.getAttendance(); }

    updateAttendance(theAttendanceToUpdate) {
            

        this.apiSvc.updateAttendance(theAttendanceToUpdate)
            .then(data => {
                 
                this.parent
                    .reload()
                    .then(parentResult => {
                        this.getAttendance();
                        this.editMode = false;
                    });
            });
            
    }


    deleteAttendance() {
        

        this.apiSvc.deleteAttendance(this.attendance)
            .then(data => {
                this.parent
                    .reload()
                    .then(parentResult => {
                         this.navCtrl.pop();
                    });
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

