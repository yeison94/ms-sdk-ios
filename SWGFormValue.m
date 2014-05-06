#import "SWGDate.h"
#import "SWGFormValue.h"

@implementation SWGFormValue

-(id)key: (NSString*) key
    values: (NSArray*) values
{
  _key = key;
  _values = values;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _key = dict[@"key"]; 
        _values = dict[@"values"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_key != nil) dict[@"key"] = _key ;
        if(_values != nil) dict[@"values"] = _values ;
        NSDictionary* output = [dict copy];
    return output;
}

@end

