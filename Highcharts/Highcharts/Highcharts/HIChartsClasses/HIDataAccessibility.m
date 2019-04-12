#import "HIChartsJSONSerializableSubclass.h"
#import "HIDataAccessibility.h"

@implementation HIDataAccessibility

-(instancetype)init {
    return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
    [super copyWithZone:zone];
    HIDataAccessibility *copyAccessibility = [[HIDataAccessibility allocWithZone: zone] init];
    copyAccessibility.definition = [self.definition copyWithZone: zone];
    return copyAccessibility;
}

-(NSDictionary *)getParams
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
    if (self.definition) {
        params[@"description"] = self.definition;
    }
    return params;
}

# pragma mark - Setters

-(void)setDefinition:(NSString *)definition {
    NSString *oldValue = _definition;
    _definition = definition;
    [self updateNSObject:oldValue newValue:definition propertyName:@"definition"];
}

@end
