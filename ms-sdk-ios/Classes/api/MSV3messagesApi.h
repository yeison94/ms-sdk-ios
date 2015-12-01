#import <Foundation/Foundation.h>
#import "MSMessage.h"
#import "MSDocument.h"
#import "SWGObject.h"


@interface MSV3messagesApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for delivery new message
 
 Delivery new message
 

 
 @param body Message object that needs to be delivery
 

 return type: NSString*
 */
+(NSNumber*) sendMessage :(MSMessage*) body 
    
    onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for finalize message
 
 
 

 
 @param messageCode messageCode
 

 return type: MSMessage*
 */
+(NSNumber*) finalizeMessage :(NSString*) messageCode 
    
    onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for reject an existing message
 
 Reject message
 

 
 @param messageCode messageCode
 
 @param comment comment
 

 return type: MSMessage*
 */
+(NSNumber*) rejectMessageByCode :(NSString*) messageCode 
     comment:(NSString*) comment 
    
    onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for update a document
 
 Update document
 

 
 @param messageCode messageCode
 
 @param body JSDocument object that needs to be updated
 

 return type: MSMessage*
 */
+(NSNumber*) updateDocument :(NSString*) messageCode 
     body:(MSDocument*) body 
    
    onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get an existing message
 
 Get message
 

 
 @param messageCode Message&#39;s identifier
 

 return type: MSMessage*
 */
+(NSNumber*) getMessageByCode :(NSString*) messageCode 
    
    onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end