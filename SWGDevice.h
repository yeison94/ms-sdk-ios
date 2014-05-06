#import <Foundation/Foundation.h>
#import "SWGObject.h"

@interface SWGDevice : SWGObject

@property(nonatomic) NSString* appCode;  

@property(nonatomic) NSString* code;  

@property(nonatomic) NSString* description;  

@property(nonatomic) NSString* locale;  

@property(nonatomic) NSString* status;  

@property(nonatomic) NSString* token;  

@property(nonatomic) NSString* uniqueIdentifier;  

@property(nonatomic) NSString* type;  

@property(nonatomic) NSString* userEmail;  

@property(nonatomic) NSString* userCode;  

@property(nonatomic) NSString* userNationalId;  

- (id) appCode: (NSString*) appCode
     code: (NSString*) code
     description: (NSString*) description
     locale: (NSString*) locale
     status: (NSString*) status
     token: (NSString*) token
     uniqueIdentifier: (NSString*) uniqueIdentifier
     type: (NSString*) type
     userEmail: (NSString*) userEmail
     userCode: (NSString*) userCode
     userNationalId: (NSString*) userNationalId;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

