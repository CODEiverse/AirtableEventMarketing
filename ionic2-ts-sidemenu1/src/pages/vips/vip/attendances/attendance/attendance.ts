import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../../../app/app.modules-base';
import { RestAPIService } from '../../../../../providers/rest-api-service';
import { AttendanceBase } from './attendance.base';
import { Storage } from '@ionic/storage';

@Component({
    selector: 'page-attendance',
    templateUrl: 'attendance.html'
})
export class Attendance extends AttendanceBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super(navCtrl, navParams, apiSvc); 
    }
}

