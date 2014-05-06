#import "SWGDate.h"
#import "SWGContainer.h"

@implementation SWGContainer

-(id)name: (NSString*) name
    title: (NSString*) title
    rows: (NSArray*) rows
{
  _name = name;
  _title = title;
  _rows = rows;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _name = dict[@"name"]; 
        _title = dict[@"title"]; 
        id rows_dict = dict[@"rows"];
        if([rows_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)rows_dict count]];

            if([(NSArray*)rows_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)rows_dict) {
                    SWGRow* d = [[SWGRow alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _rows = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _rows = [[NSArray alloc] init];
            }
        }
        else {
            _rows = [[NSArray alloc] init];
        }
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_name != nil) dict[@"name"] = _name ;
        if(_title != nil) dict[@"title"] = _title ;
        if(_rows != nil){
        if([_rows isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGRow *rows in (NSArray*)_rows) {
                [array addObject:[(SWGObject*)rows asDictionary]];
            }
            dict[@"rows"] = array;
        }
        else if(_rows && [_rows isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_rows toString];
            if(dateString){
                dict[@"rows"] = dateString;
            }
        }
        else {
        if(_rows != nil) dict[@"rows"] = [(SWGObject*)_rows asDictionary];
        }
    }
    NSDictionary* output = [dict copy];
    return output;
}

@end

