#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSPosition.h"
#import "MSGeolocation.h"
#import "MSParam.h"
#import "MSEvidenceDevice.h"


@interface MSEvidenceGeneric : SWGObject

@property(nonatomic) NSString* messageCode;  
@property(nonatomic) NSString* evidenceCode;  
@property(nonatomic) MSGeolocation* geolocation;  
@property(nonatomic) MSEvidenceDevice* device;  
@property(nonatomic) NSArray* positions;  
@property(nonatomic) NSArray* properties;  
@property(nonatomic) NSString* providerId;  
@property(nonatomic) NSString* evidenceDescription;  
@property(nonatomic) NSNumber* imageQuality;  
@property(nonatomic) NSNumber* imageScaleFactor;  
- (id) messageCode: (NSString*) messageCode     
    evidenceCode: (NSString*) evidenceCode     
    geolocation: (MSGeolocation*) geolocation     
    device: (MSEvidenceDevice*) device     
    positions: (NSArray*) positions     
    properties: (NSArray*) properties     
    providerId: (NSString*) providerId     
    evidenceDescription: (NSString*) evidenceDescription     
    imageQuality: (NSNumber*) imageQuality     
    imageScaleFactor: (NSNumber*) imageScaleFactor;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
