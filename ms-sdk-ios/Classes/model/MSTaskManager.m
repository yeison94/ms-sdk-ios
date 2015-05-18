#import "SWGDate.h"
#import "MSTaskManager.h"

@implementation MSTaskManager

-(id)tasks: (NSArray*) tasks
    workflows: (NSArray*) workflows
    
{
    _tasks = tasks;
    _workflows = workflows;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id tasks_dict = dict[@"tasks"];
        
        if([tasks_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)tasks_dict count]];
            if([(NSArray*)tasks_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)tasks_dict) {
                    MSTask* d = [[MSTask alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _tasks = [[NSArray alloc] initWithArray:objs];
            }
            else
                _tasks = [[NSArray alloc] init];
        }
        else {
            _tasks = [[NSArray alloc] init];
        }
        
        
        
        
        id workflows_dict = dict[@"workflows"];
        
        if([workflows_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)workflows_dict count]];
            if([(NSArray*)workflows_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)workflows_dict) {
                    MSWorkflowConfig* d = [[MSWorkflowConfig alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _workflows = [[NSArray alloc] initWithArray:objs];
            }
            else
                _workflows = [[NSArray alloc] init];
        }
        else {
            _workflows = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_tasks != nil){
        if([_tasks isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( MSTask *tasks in (NSArray*)_tasks) {
                [array addObject:[(SWGObject*)tasks asDictionary]];
            }
            dict[@"tasks"] = array;
        }
        else if(_tasks && [_tasks isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_tasks toString];
            if(dateString){
                dict[@"tasks"] = dateString;
            }
        }
        else {
        
            if(_tasks != nil) dict[@"tasks"] = [(SWGObject*)_tasks asDictionary];
        
        }
    }
    
    
    
    if(_workflows != nil){
        if([_workflows isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( MSWorkflowConfig *workflows in (NSArray*)_workflows) {
                [array addObject:[(SWGObject*)workflows asDictionary]];
            }
            dict[@"workflows"] = array;
        }
        else if(_workflows && [_workflows isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_workflows toString];
            if(dateString){
                dict[@"workflows"] = dateString;
            }
        }
        else {
        
            if(_workflows != nil) dict[@"workflows"] = [(SWGObject*)_workflows asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end