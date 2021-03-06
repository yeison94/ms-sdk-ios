#import "SWGDate.h"
#import "MSNotification.h"

@implementation MSNotification

@synthesize code = _code;
@synthesize messageCode = _messageCode;
@synthesize validateCode = _validateCode;
@synthesize text = _text;
@synthesize detail = _detail;
@synthesize sound = _sound;
@synthesize status = _status;
@synthesize notificationType = _notificationType;
@synthesize location = _location;
@synthesize sharedLink = _sharedLink;
@synthesize updateDate = _updateDate;
@synthesize metadata = _metadata;
@synthesize devices = _devices;

-(id)code: (NSString*) code
    messageCode: (NSString*) messageCode
    validateCode: (NSString*) validateCode
    text: (NSString*) text
    detail: (NSString*) detail
    sound: (NSString*) sound
    status: (NSString*) status
    notificationType: (NSString*) notificationType
    location: (NSString*) location
    sharedLink: (MSSharedLink*) sharedLink
    updateDate: (SWGDate*) updateDate
    metadata: (NSArray*) metadata
    devices: (NSArray*) devices
    
{
    _code = code;
    _messageCode = messageCode;
    _validateCode = validateCode;
    _text = text;
    _detail = detail;
    _sound = sound;
    _status = status;
    _notificationType = notificationType;
    _location = location;
    _sharedLink = sharedLink;
    _updateDate = updateDate;
    _metadata = metadata;
    _devices = devices;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _messageCode = dict[@"messageCode"];
        
        _validateCode = dict[@"validateCode"];
        
        _text = dict[@"text"];
        
        _detail = dict[@"detail"];
        
        _sound = dict[@"sound"];
        
        _status = dict[@"status"];
        
        _notificationType = dict[@"notificationType"];
        
        _location = dict[@"location"];
        
        
        
        id sharedLink_dict = dict[@"sharedLink"];
        
        if(sharedLink_dict != nil)
            _sharedLink = [[MSSharedLink  alloc]initWithValues:sharedLink_dict];
        
        
        
        
        id updateDate_dict = dict[@"updateDate"];
        
        if(updateDate_dict != nil)
            _updateDate = [[SWGDate  alloc]initWithValues:updateDate_dict];
        
        
        
        
        id metadata_dict = dict[@"metadata"];
        
        if([metadata_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)metadata_dict count]];
            if([(NSArray*)metadata_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)metadata_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[metadata_dict objectAtIndex:i]];
                    MSParam* d = [[MSParam alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _metadata = [[NSArray alloc] initWithArray:objs];
            }
            else
                _metadata = [[NSArray alloc] init];
        }
        else {
            _metadata = [[NSArray alloc] init];
        }
        
        
        
        
        id devices_dict = dict[@"devices"];
        
        if([devices_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)devices_dict count]];
            if([(NSArray*)devices_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)devices_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[devices_dict objectAtIndex:i]];
                    MSDevice* d = [[MSDevice alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _devices = [[NSArray alloc] initWithArray:objs];
            }
            else
                _devices = [[NSArray alloc] init];
        }
        else {
            _devices = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_messageCode != nil) dict[@"messageCode"] = _messageCode ;
        
    
    
            if(_validateCode != nil) dict[@"validateCode"] = _validateCode ;
        
    
    
            if(_text != nil) dict[@"text"] = _text ;
        
    
    
            if(_detail != nil) dict[@"detail"] = _detail ;
        
    
    
            if(_sound != nil) dict[@"sound"] = _sound ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
            if(_notificationType != nil) dict[@"notificationType"] = _notificationType ;
        
    
    
            if(_location != nil) dict[@"location"] = _location ;
        
    
    
    if(_sharedLink != nil){
        if([_sharedLink isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_sharedLink count] ; i++ ) {
				MSSharedLink *sharedLink = [[MSSharedLink alloc]init];
				sharedLink = [(NSArray*)_sharedLink objectAtIndex:i];
                [array addObject:[(SWGObject*)sharedLink asDictionary]];
            }
            dict[@"sharedLink"] = array;
        }
        else if(_sharedLink && [_sharedLink isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_sharedLink toString];
            if(dateString){
                dict[@"sharedLink"] = dateString;
            }
        }
        else {
        
            if(_sharedLink != nil) dict[@"sharedLink"] = [(SWGObject*)_sharedLink asDictionary];
        
        }
    }
    
    
    
    if(_updateDate != nil){
        if([_updateDate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_updateDate count] ; i++ ) {
				SWGDate *updateDate = [[SWGDate alloc]init];
				updateDate = [(NSArray*)_updateDate objectAtIndex:i];
                [array addObject:[(SWGObject*)updateDate asDictionary]];
            }
            dict[@"updateDate"] = array;
        }
        else if(_updateDate && [_updateDate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_updateDate toString];
            if(dateString){
                dict[@"updateDate"] = dateString;
            }
        }
        else {
        
            if(_updateDate != nil) dict[@"updateDate"] = [(SWGObject*)_updateDate asDictionary];
        
        }
    }
    
    
    
    if(_metadata != nil){
        if([_metadata isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_metadata count] ; i++ ) {
				MSParam *metadata = [[MSParam alloc]init];
				metadata = [(NSArray*)_metadata objectAtIndex:i];
                [array addObject:[(SWGObject*)metadata asDictionary]];
            }
            dict[@"metadata"] = array;
        }
        else if(_metadata && [_metadata isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_metadata toString];
            if(dateString){
                dict[@"metadata"] = dateString;
            }
        }
        else {
        
            if(_metadata != nil) dict[@"metadata"] = [(SWGObject*)_metadata asDictionary];
        
        }
    }
    
    
    
    if(_devices != nil){
        if([_devices isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_devices count] ; i++ ) {
				MSDevice *devices = [[MSDevice alloc]init];
				devices = [(NSArray*)_devices objectAtIndex:i];
                [array addObject:[(SWGObject*)devices asDictionary]];
            }
            dict[@"devices"] = array;
        }
        else if(_devices && [_devices isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_devices toString];
            if(dateString){
                dict[@"devices"] = dateString;
            }
        }
        else {
        
            if(_devices != nil) dict[@"devices"] = [(SWGObject*)_devices asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end
