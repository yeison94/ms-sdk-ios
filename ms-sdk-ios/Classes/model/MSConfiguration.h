#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSFinalizeAction.h"
#import "MSMenuOption.h"


@interface MSConfiguration : SWGObject

@property(nonatomic) NSString* viafirmaURL;  
@property(nonatomic) NSNumber* editableURL;  
@property(nonatomic) NSNumber* frontCamera;  
@property(nonatomic) NSNumber* autoLogout;  
@property(nonatomic) NSNumber* showCSV;  
@property(nonatomic) NSNumber* personMask;  
@property(nonatomic) NSNumber* registerHide;  
@property(nonatomic) NSNumber* allowsInvalidSSLCertificate;  
@property(nonatomic) NSNumber* evidenceBase64;  
@property(nonatomic) NSString* version;  
@property(nonatomic) NSNumber* showUpdate;  
@property(nonatomic) NSString* installURL;  
@property(nonatomic) NSString* installMessage;  
@property(nonatomic) NSString* backendVersion;  
@property(nonatomic) NSArray* finalize_menu_options;  
@property(nonatomic) NSNumber* autoRegisterDevice;  
@property(nonatomic) MSFinalizeAction* finalizeAction;  
@property(nonatomic) NSNumber* sSLPinningEnabled;  
- (id) viafirmaURL: (NSString*) viafirmaURL     
    editableURL: (NSNumber*) editableURL     
    frontCamera: (NSNumber*) frontCamera     
    autoLogout: (NSNumber*) autoLogout     
    showCSV: (NSNumber*) showCSV     
    personMask: (NSNumber*) personMask     
    registerHide: (NSNumber*) registerHide     
    allowsInvalidSSLCertificate: (NSNumber*) allowsInvalidSSLCertificate     
    evidenceBase64: (NSNumber*) evidenceBase64     
    version: (NSString*) version     
    showUpdate: (NSNumber*) showUpdate     
    installURL: (NSString*) installURL     
    installMessage: (NSString*) installMessage     
    backendVersion: (NSString*) backendVersion     
    finalize_menu_options: (NSArray*) finalize_menu_options     
    autoRegisterDevice: (NSNumber*) autoRegisterDevice     
    finalizeAction: (MSFinalizeAction*) finalizeAction     
    sSLPinningEnabled: (NSNumber*) sSLPinningEnabled;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
