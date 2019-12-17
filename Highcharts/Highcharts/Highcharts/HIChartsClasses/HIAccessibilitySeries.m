#import "HIChartsJSONSerializableSubclass.h"
#import "HIAccessibilitySeries.h"

@implementation HIAccessibilitySeries

-(instancetype)init {
    return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
    [super copyWithZone:zone];
    HIAccessibilitySeries *copyAccessibility = [[HIAccessibilitySeries allocWithZone: zone] init];
    copyAccessibility.definition = [self.definition copyWithZone: zone];
    copyAccessibility.summary = [self.summary copyWithZone: zone];
    copyAccessibility.xAxisDescription = [self.xAxisDescription copyWithZone: zone];
    copyAccessibility.yAxisDescription = [self.yAxisDescription copyWithZone: zone];
    return copyAccessibility;
}

-(NSDictionary *)getParams
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
    if (self.definition) {
        params[@"description"] = self.definition;
    }
    if (self.summary) {
        params[@"summary"] = [self.summary getParams];
    }
    if (self.xAxisDescription) {
        params[@"xAxisDescription"] = self.xAxisDescription;
    }
    if (self.yAxisDescription) {
        params[@"yAxisDescription"] = self.yAxisDescription;
    }
    return params;
}

# pragma mark - Setters

-(void)setDefinition:(NSString *)definition {
    NSString *oldValue = _definition;
    _definition = definition;
    [self updateNSObject:oldValue newValue:definition propertyName:@"definition"];
}

-(void)setSummary:(HISummary *)summary {
    HISummary *oldValue = _summary;
    _summary = summary;
    [self updateHIObject:oldValue newValue:summary propertyName:@"summary"];
}

-(void)setXAxisDescription:(NSString *)xAxisDescription {
    NSString *oldValue = _xAxisDescription;
    _xAxisDescription = xAxisDescription;
    [self updateNSObject:oldValue newValue:xAxisDescription propertyName:@"xAxisDescription"];
}

-(void)setYAxisDescription:(NSString *)yAxisDescription {
    NSString *oldValue = _yAxisDescription;
    _yAxisDescription = yAxisDescription;
    [self updateNSObject:oldValue newValue:yAxisDescription propertyName:@"yAxisDescription"];
}

@end
