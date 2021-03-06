#import "SWGDate.h"
#import "MSSetting.h"

@implementation MSSetting

@synthesize titleKey = _titleKey;
@synthesize descriptionKey = _descriptionKey;
@synthesize policy = _policy;
@synthesize computec_key = _computec_key;
@synthesize policies = _policies;
@synthesize callbackURL = _callbackURL;
@synthesize callbackMails = _callbackMails;
@synthesize callbackMailsFormKeys = _callbackMailsFormKeys;
@synthesize validateCode = _validateCode;
@synthesize workflow = _workflow;
@synthesize font = _font;
@synthesize acrofieldsPositions = _acrofieldsPositions;
@synthesize readDocumentRequired = _readDocumentRequired;

-(id)titleKey: (NSString*) titleKey
    descriptionKey: (NSString*) descriptionKey
    policy: (MSPolicy*) policy
    computec_key: (NSString*) computec_key
    policies: (NSArray*) policies
    callbackURL: (NSString*) callbackURL
    callbackMails: (NSString*) callbackMails
    callbackMailsFormKeys: (NSArray*) callbackMailsFormKeys
    validateCode: (NSString*) validateCode
    workflow: (NSString*) workflow
    font: (MSFont*) font
    acrofieldsPositions: (NSArray*) acrofieldsPositions
    readDocumentRequired: (NSNumber*) readDocumentRequired
    
{
    _titleKey = titleKey;
    _descriptionKey = descriptionKey;
    _policy = policy;
    _computec_key = computec_key;
    _policies = policies;
    _callbackURL = callbackURL;
    _callbackMails = callbackMails;
    _callbackMailsFormKeys = callbackMailsFormKeys;
    _validateCode = validateCode;
    _workflow = workflow;
    _font = font;
    _acrofieldsPositions = acrofieldsPositions;
    _readDocumentRequired = readDocumentRequired;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _titleKey = dict[@"titleKey"];
        
        _descriptionKey = dict[@"descriptionKey"];
        
        
        
        id policy_dict = dict[@"policy"];
        
        if(policy_dict != nil)
            _policy = [[MSPolicy  alloc]initWithValues:policy_dict];
        
        
        _computec_key = dict[@"computec_key"];
        
        
        
        id policies_dict = dict[@"policies"];
        
        if([policies_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)policies_dict count]];
            if([(NSArray*)policies_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)policies_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[policies_dict objectAtIndex:i]];
                    MSPolicy* d = [[MSPolicy alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _policies = [[NSArray alloc] initWithArray:objs];
            }
            else
                _policies = [[NSArray alloc] init];
        }
        else {
            _policies = [[NSArray alloc] init];
        }
        
        
        _callbackURL = dict[@"callbackURL"];
        
        _callbackMails = dict[@"callbackMails"];
        
        _callbackMailsFormKeys = dict[@"callbackMailsFormKeys"];
        
        _validateCode = dict[@"validateCode"];
        
        _workflow = dict[@"workflow"];
        
        
        
        id font_dict = dict[@"font"];
        
        if(font_dict != nil)
            _font = [[MSFont  alloc]initWithValues:font_dict];
        
        
        
        
        id acrofieldsPositions_dict = dict[@"acrofieldsPositions"];
        
        if([acrofieldsPositions_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)acrofieldsPositions_dict count]];
            if([(NSArray*)acrofieldsPositions_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)acrofieldsPositions_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[acrofieldsPositions_dict objectAtIndex:i]];
                    MSAcrofieldPosition* d = [[MSAcrofieldPosition alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _acrofieldsPositions = [[NSArray alloc] initWithArray:objs];
            }
            else
                _acrofieldsPositions = [[NSArray alloc] init];
        }
        else {
            _acrofieldsPositions = [[NSArray alloc] init];
        }
        
        
        _readDocumentRequired = dict[@"readDocumentRequired"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_titleKey != nil) dict[@"titleKey"] = _titleKey ;
        
    
    
            if(_descriptionKey != nil) dict[@"descriptionKey"] = _descriptionKey ;
        
    
    
    if(_policy != nil){
        if([_policy isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_policy count] ; i++ ) {
				MSPolicy *policy = [[MSPolicy alloc]init];
				policy = [(NSArray*)_policy objectAtIndex:i];
                [array addObject:[(SWGObject*)policy asDictionary]];
            }
            dict[@"policy"] = array;
        }
        else if(_policy && [_policy isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_policy toString];
            if(dateString){
                dict[@"policy"] = dateString;
            }
        }
        else {
        
            if(_policy != nil) dict[@"policy"] = [(SWGObject*)_policy asDictionary];
        
        }
    }
    
    
    
            if(_computec_key != nil) dict[@"computec_key"] = _computec_key ;
        
    
    
    if(_policies != nil){
        if([_policies isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_policies count] ; i++ ) {
				MSPolicy *policies = [[MSPolicy alloc]init];
				policies = [(NSArray*)_policies objectAtIndex:i];
                [array addObject:[(SWGObject*)policies asDictionary]];
            }
            dict[@"policies"] = array;
        }
        else if(_policies && [_policies isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_policies toString];
            if(dateString){
                dict[@"policies"] = dateString;
            }
        }
        else {
        
            if(_policies != nil) dict[@"policies"] = [(SWGObject*)_policies asDictionary];
        
        }
    }
    
    
    
            if(_callbackURL != nil) dict[@"callbackURL"] = _callbackURL ;
        
    
    
            if(_callbackMails != nil) dict[@"callbackMails"] = _callbackMails ;
        
    
    
            if(_callbackMailsFormKeys != nil) dict[@"callbackMailsFormKeys"] = _callbackMailsFormKeys ;
        
    
    
            if(_validateCode != nil) dict[@"validateCode"] = _validateCode ;
        
    
    
            if(_workflow != nil) dict[@"workflow"] = _workflow ;
        
    
    
    if(_font != nil){
        if([_font isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_font count] ; i++ ) {
				MSFont *font = [[MSFont alloc]init];
				font = [(NSArray*)_font objectAtIndex:i];
                [array addObject:[(SWGObject*)font asDictionary]];
            }
            dict[@"font"] = array;
        }
        else if(_font && [_font isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_font toString];
            if(dateString){
                dict[@"font"] = dateString;
            }
        }
        else {
        
            if(_font != nil) dict[@"font"] = [(SWGObject*)_font asDictionary];
        
        }
    }
    
    
    
    if(_acrofieldsPositions != nil){
        if([_acrofieldsPositions isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_acrofieldsPositions count] ; i++ ) {
				MSAcrofieldPosition *acrofieldsPositions = [[MSAcrofieldPosition alloc]init];
				acrofieldsPositions = [(NSArray*)_acrofieldsPositions objectAtIndex:i];
                [array addObject:[(SWGObject*)acrofieldsPositions asDictionary]];
            }
            dict[@"acrofieldsPositions"] = array;
        }
        else if(_acrofieldsPositions && [_acrofieldsPositions isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_acrofieldsPositions toString];
            if(dateString){
                dict[@"acrofieldsPositions"] = dateString;
            }
        }
        else {
        
            if(_acrofieldsPositions != nil) dict[@"acrofieldsPositions"] = [(SWGObject*)_acrofieldsPositions asDictionary];
        
        }
    }
    
    
    
            if(_readDocumentRequired != nil) dict[@"readDocumentRequired"] = _readDocumentRequired ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end
