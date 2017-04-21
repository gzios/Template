//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___FULLUSERNAME___
//

#import "NSObject+GZDescripion.h"
#import <objc/runtime.h>
@implementation NSObject (GZDescripion)


-(NSString *)description{
    return [NSString stringWithFormat:@"<%@: %p, %@>",self.class,self,[self getProperties]];
}
- (NSDictionary *)getProperties{
    unsigned int count;
    objc_property_t *properties = class_copyPropertyList(self.class, &count);
    NSMutableDictionary *dicListName = [NSMutableDictionary dictionary];
    for (int i = 0; i < count; i++) {
        objc_property_t property = properties[i];
        const char *cName = property_getName(property);
        NSString *key = [NSString stringWithCString:cName encoding:NSUTF8StringEncoding];
        NSValue *value =[self valueForKeyPath:key];
        if (value) {
            [dicListName setObject:value forKey:key];
        }
    }
    return dicListName.copy;
}



@end
