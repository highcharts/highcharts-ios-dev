#import "HIChartsJSONSerializableSubclass.h"
#import "HISeriesAccessibility.h"

@implementation HISeriesAccessibility

-(instancetype)init {
    return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
    [super copyWithZone:zone];
    HISeriesAccessibility *copyAccessibility = [[HISeriesAccessibility allocWithZone: zone] init];
    copyAccessibility.definition = [self.definition copyWithZone: zone];
    copyAccessibility.enabled = [self.enabled copyWithZone: zone];
    copyAccessibility.exposeAsGroupOnly = [self.exposeAsGroupOnly copyWithZone: zone];
    copyAccessibility.keyboardNavigation = [self.keyboardNavigation copyWithZone: zone];
    copyAccessibility.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
    return copyAccessibility;
}

-(NSDictionary *)getParams
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
    if (self.definition) {
        params[@"description"] = self.definition;
    }
    if (self.enabled) {
        params[@"enabled"] = self.enabled;
    }
    if (self.exposeAsGroupOnly) {
        params[@"exposeAsGroupOnly"] = self.exposeAsGroupOnly;
    }
    if (self.keyboardNavigation) {
        params[@"keyboardNavigation"] = [self.keyboardNavigation getParams];
    }
    if (self.pointDescriptionFormatter) {
        params[@"pointDescriptionFormatter"] = [self.pointDescriptionFormatter getFunction];
    }
    return params;
}

# pragma mark - Setters

-(void)setDefinition:(NSString *)definition {
    NSString *oldValue = _definition;
    _definition = definition;
    [self updateNSObject:oldValue newValue:definition propertyName:@"definition"];
}

-(void)setEnabled:(NSNumber *)enabled {
    NSNumber *oldValue = _enabled;
    _enabled = enabled;
    [self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setExposeAsGroupOnly:(NSNumber *)exposeAsGroupOnly {
    NSNumber *oldValue = _exposeAsGroupOnly;
    _exposeAsGroupOnly = exposeAsGroupOnly;
    [self updateNSObject:oldValue newValue:exposeAsGroupOnly propertyName:@"exposeAsGroupOnly"];
}

-(void)setKeyboardNavigation:(HIKeyboardNavigation *)keyboardNavigation {
    HIKeyboardNavigation *oldValue = _keyboardNavigation;
    _keyboardNavigation = keyboardNavigation;
    [self updateHIObject:oldValue newValue:keyboardNavigation propertyName:@"keyboardNavigation"];
}

-(void)setPointDescriptionFormatter:(HIFunction *)pointDescriptionFormatter {
    HIFunction *oldValue = _pointDescriptionFormatter;
    _pointDescriptionFormatter = pointDescriptionFormatter;
    [self updateHIObject:oldValue newValue:pointDescriptionFormatter propertyName:@"pointDescriptionFormatter"];
}

@end
