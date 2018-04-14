//
// ===== File globals.ts    
//

    
        import { Home } from '../pages/home/home';
    

    
        import { VIPs } from '../pages/vips/vips';
    

    
        import { VIP } from '../pages/vips/vip/vip';
    

    
        import { Attendances } from '../pages/vips/vip/attendances/attendances';
    

    
        import { Attendance } from '../pages/vips/vip/attendances/attendance/attendance';
    

    
        import { Venues } from '../pages/venues/venues';
    

    
        import { Venue } from '../pages/venues/venue/venue';
    

    
        import { EventDates } from '../pages/venues/venue/eventdates/eventdates';
    

    
        import { EventDate } from '../pages/venues/venue/eventdates/eventdate/eventdate';
    

    
        import { About } from '../pages/about/about';
    

    
        import { Contact } from '../pages/contact/contact';
    

    
        import { Chat } from '../pages/contact/chat/chat';
    

    
        import { Email } from '../pages/contact/email/email';
    

    
        import { Call } from '../pages/contact/call/call';
    


export const components : any[] = [Home, VIPs, VIP, Attendances, Attendance, Venues, Venue, EventDates, EventDate, About, Contact, Chat, Email, Call];

export const siteMap: { [name: string]: { name: string, title: string, component: any, parentComponent: any, subComponents: any[]; } } = {};

                            siteMap['Home'] = { name: 'Home', title: 'Home', component: Home, parentComponent: null, subComponents: [] };
                        
                            siteMap['VIPs'] = { name: 'VIPs', title: 'VIPs', component: VIPs, parentComponent: null, subComponents: [] };
                        
                            siteMap['VIP'] = { name: 'VIP', title: 'VIP', component: VIP, parentComponent: null, subComponents: [] };
                        
                            siteMap['Attendances'] = { name: 'Attendances', title: 'Attendances', component: Attendances, parentComponent: null, subComponents: [] };
                        
                            siteMap['Attendance'] = { name: 'Attendance', title: 'Attendance', component: Attendance, parentComponent: null, subComponents: [] };
                        
                            siteMap['Venues'] = { name: 'Venues', title: 'Venues', component: Venues, parentComponent: null, subComponents: [] };
                        
                            siteMap['Venue'] = { name: 'Venue', title: 'Venue', component: Venue, parentComponent: null, subComponents: [] };
                        
                            siteMap['EventDates'] = { name: 'EventDates', title: 'EventDates', component: EventDates, parentComponent: null, subComponents: [] };
                        
                            siteMap['EventDate'] = { name: 'EventDate', title: 'EventDate', component: EventDate, parentComponent: null, subComponents: [] };
                        
                            siteMap['About'] = { name: 'About', title: 'About', component: About, parentComponent: null, subComponents: [] };
                        
                            siteMap['Contact'] = { name: 'Contact', title: 'Contact', component: Contact, parentComponent: null, subComponents: [] };
                        
                            siteMap['Chat'] = { name: 'Chat', title: 'Chat', component: Chat, parentComponent: null, subComponents: [] };
                        
                            siteMap['Email'] = { name: 'Email', title: 'Email', component: Email, parentComponent: null, subComponents: [] };
                        
                            siteMap['Call'] = { name: 'Call', title: 'Call', component: Call, parentComponent: null, subComponents: [] };
                        


                                siteMap['VIPs'].subComponents.push(siteMap['VIP']);
                            
                                siteMap['VIP'].parentComponent = siteMap['VIPs'];
                            
                                siteMap['VIP'].subComponents.push(siteMap['Attendances']);
                            
                                siteMap['Attendances'].parentComponent = siteMap['VIP'];
                            
                                siteMap['Attendances'].subComponents.push(siteMap['Attendance']);
                            
                                siteMap['Attendance'].parentComponent = siteMap['Attendances'];
                            
                                siteMap['Venues'].subComponents.push(siteMap['Venue']);
                            
                                siteMap['Venue'].parentComponent = siteMap['Venues'];
                            
                                siteMap['Venue'].subComponents.push(siteMap['EventDates']);
                            
                                siteMap['EventDates'].parentComponent = siteMap['Venue'];
                            
                                siteMap['EventDates'].subComponents.push(siteMap['EventDate']);
                            
                                siteMap['EventDate'].parentComponent = siteMap['EventDates'];
                            
                                siteMap['Contact'].subComponents.push(siteMap['Chat']);
                            
                                siteMap['Contact'].subComponents.push(siteMap['Email']);
                            
                                siteMap['Contact'].subComponents.push(siteMap['Call']);
                            
                                siteMap['Chat'].parentComponent = siteMap['Contact'];
                            
                                siteMap['Email'].parentComponent = siteMap['Contact'];
                            
                                siteMap['Call'].parentComponent = siteMap['Contact'];
                            

export const pages : any[] = [

        siteMap['Home']
    , 
        siteMap['VIPs']
    , 
        siteMap['Venues']
    , 
        siteMap['About']
    , 
        siteMap['Contact']
    
];

