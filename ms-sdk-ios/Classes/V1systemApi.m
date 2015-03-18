#import "V1systemApi.h"
#import "SWGFile.h"
#import "ApiClient.h"
#import "InfoSystemStatus.h"



@implementation V1systemApi
static NSString * basePath = @"http://null/";

+(V1systemApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static V1systemApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[V1systemApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(void) setBasePath:(NSString*)path {
    basePath = path;
}

+(NSString*) getBasePath {
    return basePath;
}

-(ApiClient*) apiClient {
    return [ApiClient sharedClientFromPool:basePath];
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [[self apiClient] setHeaderValue:value forKey:key];
}

-(id) init {
    self = [super init];
    [self apiClient];
    return self;
}

-(void) setHeaderValue:(NSString*) value
           forKey:(NSString*)key {
    [[self apiClient] setHeaderValue:value forKey:key];
}

-(unsigned long) requestQueueSize {
    return [ApiClient requestQueueSize];
}


-(NSNumber*) getSystemInfoWithCompletionBlock: 
        (void (^)(InfoSystemStatus* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v1/system/info", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    bodyDictionary = [[NSMutableArray alloc] init];

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init]; 

    
    [bodyDictionary addObject:formParams];
    

    

    ApiClient* client = [ApiClient sharedClientFromPool:basePath];

    
    
    
        
    // comples response type
    return [client dictionary: requestUrl 
                       method: @"GET" 
                  queryParams: queryParams 
                         body: bodyDictionary 
                 headerParams: headerParams
           requestContentType: requestContentType
          responseContentType: responseContentType
              completionBlock: ^(NSDictionary *data, NSError *error) {
                if (error) {
                    completionBlock(nil, error);
                    
                    return;
                }
                
                InfoSystemStatus *result = nil;
                if (data) {
                    result = [[InfoSystemStatus    alloc]initWithValues: data];
                }
                completionBlock(result , nil);
                
              }];
    
    
}



@end