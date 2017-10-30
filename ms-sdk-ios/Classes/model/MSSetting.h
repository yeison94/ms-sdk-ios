#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSAcrofieldPosition.h"
#import "MSPolicy.h"
#import "MSFont.h"


@interface MSSetting : SWGObject

@property(nonatomic) NSString* titleKey;  
@property(nonatomic) NSString* descriptionKey;  
@property(nonatomic) MSPolicy* policy;  
@property(nonatomic) NSString* computec_key;  
@property(nonatomic) NSArray* policies;  
@property(nonatomic) NSString* callbackURL;  
@property(nonatomic) NSString* callbackMails;  
@property(nonatomic) NSArray* callbackMailsFormKeys;  
@property(nonatomic) NSString* validateCode;  
@property(nonatomic) NSString* workflow;  
@property(nonatomic) MSFont* font;  
@property(nonatomic) NSArray* acrofieldsPositions;  
- (id) titleKey: (NSString*) titleKey     
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
    acrofieldsPositions: (NSArray*) acrofieldsPositions;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
