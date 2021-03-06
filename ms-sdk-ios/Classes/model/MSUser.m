#import "SWGDate.h"
#import "MSUser.h"

@implementation MSUser

@synthesize code = _code;
@synthesize nationalId = _nationalId;
@synthesize email = _email;
@synthesize password = _password;
@synthesize name = _name;
@synthesize surname = _surname;
@synthesize rol = _rol;
@synthesize _description = __description;
@synthesize viafirmaKey = _viafirmaKey;
@synthesize viafirmaPassword = _viafirmaPassword;
@synthesize viafirmaCertificate = _viafirmaCertificate;
@synthesize region = _region;
@synthesize pos = _pos;
@synthesize confirmToken = _confirmToken;
@synthesize changePassToken = _changePassToken;
@synthesize logDevice = _logDevice;
@synthesize status = _status;
@synthesize mobile = _mobile;
@synthesize channel = _channel;

-(id)code: (NSString*) code
    nationalId: (NSString*) nationalId
    email: (NSString*) email
    password: (NSString*) password
    name: (NSString*) name
    surname: (NSString*) surname
    rol: (NSString*) rol
    _description: (NSString*) _description
    viafirmaKey: (NSString*) viafirmaKey
    viafirmaPassword: (NSString*) viafirmaPassword
    viafirmaCertificate: (NSString*) viafirmaCertificate
    region: (NSString*) region
    pos: (NSString*) pos
    confirmToken: (NSString*) confirmToken
    changePassToken: (NSString*) changePassToken
    logDevice: (NSNumber*) logDevice
    status: (NSString*) status
    mobile: (NSString*) mobile
    channel: (NSString*) channel
    
{
    _code = code;
    _nationalId = nationalId;
    _email = email;
    _password = password;
    _name = name;
    _surname = surname;
    _rol = rol;
    __description = _description;
    _viafirmaKey = viafirmaKey;
    _viafirmaPassword = viafirmaPassword;
    _viafirmaCertificate = viafirmaCertificate;
    _region = region;
    _pos = pos;
    _confirmToken = confirmToken;
    _changePassToken = changePassToken;
    _logDevice = logDevice;
    _status = status;
    _mobile = mobile;
    _channel = channel;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _nationalId = dict[@"nationalId"];
        
        _email = dict[@"email"];
        
        _password = dict[@"password"];
        
        _name = dict[@"name"];
        
        _surname = dict[@"surname"];
        
        _rol = dict[@"rol"];
        
        __description = dict[@"description"];
        
        _viafirmaKey = dict[@"viafirmaKey"];
        
        _viafirmaPassword = dict[@"viafirmaPassword"];
        
        _viafirmaCertificate = dict[@"viafirmaCertificate"];
        
        _region = dict[@"region"];
        
        _pos = dict[@"pos"];
        
        _confirmToken = dict[@"confirmToken"];
        
        _changePassToken = dict[@"changePassToken"];
        
        _logDevice = dict[@"logDevice"];
        
        _status = dict[@"status"];
        
        _mobile = dict[@"mobile"];
        
        _channel = dict[@"channel"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_nationalId != nil) dict[@"nationalId"] = _nationalId ;
        
    
    
            if(_email != nil) dict[@"email"] = _email ;
        
    
    
            if(_password != nil) dict[@"password"] = _password ;
        
    
    
            if(_name != nil) dict[@"name"] = _name ;
        
    
    
            if(_surname != nil) dict[@"surname"] = _surname ;
        
    
    
            if(_rol != nil) dict[@"rol"] = _rol ;
        
    
    
            if(__description != nil) dict[@"description"] = __description ;
        
    
    
            if(_viafirmaKey != nil) dict[@"viafirmaKey"] = _viafirmaKey ;
        
    
    
            if(_viafirmaPassword != nil) dict[@"viafirmaPassword"] = _viafirmaPassword ;
        
    
    
            if(_viafirmaCertificate != nil) dict[@"viafirmaCertificate"] = _viafirmaCertificate ;
        
    
    
            if(_region != nil) dict[@"region"] = _region ;
        
    
    
            if(_pos != nil) dict[@"pos"] = _pos ;
        
    
    
            if(_confirmToken != nil) dict[@"confirmToken"] = _confirmToken ;
        
    
    
            if(_changePassToken != nil) dict[@"changePassToken"] = _changePassToken ;
        
    
    
            if(_logDevice != nil) dict[@"logDevice"] = _logDevice ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
            if(_mobile != nil) dict[@"mobile"] = _mobile ;
        
    
    
            if(_channel != nil) dict[@"channel"] = _channel ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end
