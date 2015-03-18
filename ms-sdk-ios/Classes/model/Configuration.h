#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface Configuration : SWGObject

@property(nonatomic) NSString* viafirmaURL;  
@property(nonatomic) NSNumber* editableURL;  
@property(nonatomic) NSNumber* frontCamera;  
@property(nonatomic) NSNumber* autoLogout;  
@property(nonatomic) NSNumber* showCSV;  
@property(nonatomic) NSNumber* personMask;  
@property(nonatomic) NSNumber* registerHide;  
@property(nonatomic) NSNumber* allowsInvalidSSLCertificate;  
@property(nonatomic) NSNumber* evidenceBase64;  
@property(nonatomic) NSArray* finalize_menu_options;  
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
    finalize_menu_options: (NSArray*) finalize_menu_options     
    sSLPinningEnabled: (NSNumber*) sSLPinningEnabled;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
