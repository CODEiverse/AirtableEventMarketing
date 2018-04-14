import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../app/app.modules-base';
import { RestAPIService } from '../../providers/rest-api-service';
import { VIPsBase } from './vips.base';
import { Storage } from '@ionic/storage';

@Component({
    selector: 'page-vips',
    templateUrl: 'vips.html'
})
export class VIPs extends VIPsBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super(navCtrl, navParams, apiSvc); 
    }
}

