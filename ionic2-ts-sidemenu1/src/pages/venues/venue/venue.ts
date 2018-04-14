import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../app/app.modules-base';
import { RestAPIService } from '../../../providers/rest-api-service';
import { VenueBase } from './venue.base';
import { Storage } from '@ionic/storage';

@Component({
    selector: 'page-venue',
    templateUrl: 'venue.html'
})
export class Venue extends VenueBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super(navCtrl, navParams, apiSvc); 
    }
}

