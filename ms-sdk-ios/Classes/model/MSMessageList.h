#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"


@interface MSMessageList : SWGObject

@property(nonatomic) NSString* messageCode;  /* (since 3.4.8, internal) message code  */
@property(nonatomic) NSString* status;  /* (since 3.4.8, internal) message status  */
@property(nonatomic) NSString* userCode;  /* (since 3.4.8, internal) user code  */
@property(nonatomic) NSString* groupCode;  /* (since 3.4.8, internal) group code  */
@property(nonatomic) NSString* templateCode;  /* (since 3.4.8, internal) template code  */
@property(nonatomic) SWGDate* creationDate;  /* (since 3.4.8, internal) creation date  */
- (id) messageCode: (NSString*) messageCode     
    status: (NSString*) status     
    userCode: (NSString*) userCode     
    groupCode: (NSString*) groupCode     
    templateCode: (NSString*) templateCode     
    creationDate: (SWGDate*) creationDate;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
