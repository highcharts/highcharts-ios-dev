#import "HIChartsJSONSerializableSubclass.h"
#import "HIExportingAccessibility.h"

@implementation HIExportingAccessibility

-(instancetype)init {
    return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
    [super copyWithZone:zone];
    HIExportingAccessibility *copyAccessibility = [[HIExportingAccessibility allocWithZone: zone] init];
    copyAccessibility.enabled = [self.enabled copyWithZone: zone];
    return copyAccessibility;
}

-(NSDictionary *)getParams
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
    if (self.enabled) {
        params[@"enabled"] = self.enabled;
    }
    return params;
}

# pragma mark - Setters

-(void)setEnabled:(NSNumber *)enabled {
    NSNumber *oldValue = _enabled;
    _enabled = enabled;
    [self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

@end
