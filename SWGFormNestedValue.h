#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGFormValue.h"

@interface SWGFormNestedValue : SWGObject

@property(nonatomic) NSString* key;  

@property(nonatomic) NSArray* values;  

- (id) key: (NSString*) key
     values: (NSArray*) values;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

