#import <Foundation/Foundation.h>
#import "SWGObject.h"

@interface SWGItem : SWGObject

@property(nonatomic) NSString* key;  

@property(nonatomic) NSString* value;  

@property(nonatomic) NSString* type;  

@property(nonatomic) NSString* label;  

@property(nonatomic) NSString* placeHolder;  

@property(nonatomic) NSString* size;  

@property(nonatomic) NSNumber* required;  

@property(nonatomic) NSString* validation;  

@property(nonatomic) NSString* validationRegex;  

@property(nonatomic) NSString* refValues;  

@property(nonatomic) NSString* list;  

@property(nonatomic) NSString* nestedList;  

@property(nonatomic) NSString* text;  

@property(nonatomic) NSString* href;  

@property(nonatomic) NSString* match;  

@property(nonatomic) NSString* update;  

@property(nonatomic) NSNumber* disabled;  

@property(nonatomic) NSArray* values;  

@property(nonatomic) NSString* height;  

@property(nonatomic) NSString* format;  

@property(nonatomic) NSString* maxLength;  

@property(nonatomic) NSString* minLength;  

@property(nonatomic) NSArray* monthNames;  

@property(nonatomic) NSArray* dayNames;  

- (id) key: (NSString*) key
     value: (NSString*) value
     type: (NSString*) type
     label: (NSString*) label
     placeHolder: (NSString*) placeHolder
     size: (NSString*) size
     required: (NSNumber*) required
     validation: (NSString*) validation
     validationRegex: (NSString*) validationRegex
     refValues: (NSString*) refValues
     list: (NSString*) list
     nestedList: (NSString*) nestedList
     text: (NSString*) text
     href: (NSString*) href
     match: (NSString*) match
     update: (NSString*) update
     disabled: (NSNumber*) disabled
     values: (NSArray*) values
     height: (NSString*) height
     format: (NSString*) format
     maxLength: (NSString*) maxLength
     minLength: (NSString*) minLength
     monthNames: (NSArray*) monthNames
     dayNames: (NSArray*) dayNames;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

