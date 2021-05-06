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
    copyAccessibility.nullPointValue = [self.nullPointValue copyWithZone: zone];
    copyAccessibility.pointAnnotationsDescription = [self.pointAnnotationsDescription copyWithZone: zone];
    copyAccessibility.summary = [self.summary copyWithZone: zone];
    copyAccessibility.xAxisDescription = [self.xAxisDescription copyWithZone: zone];
    copyAccessibility.yAxisDescription = [self.yAxisDescription copyWithZone: zone];
    copyAccessibility.describeSingleSeries = [self.describeSingleSeries copyWithZone: zone];
    copyAccessibility.descriptionFormatter = [self.descriptionFormatter copyWithZone: zone];
    copyAccessibility.pointDescriptionEnabledThreshold = [self.pointDescriptionEnabledThreshold copyWithZone: zone];
    return copyAccessibility;
}

-(NSDictionary *)getParams
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
    if (self.definition) {
        params[@"description"] = self.definition;
    }
    if (self.nullPointValue) {
        params[@"nullPointValue"] = self.nullPointValue;
    }
    if (self.pointAnnotationsDescription) {
        params[@"pointAnnotationsDescription"] = self.pointAnnotationsDescription;
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
    if (self.describeSingleSeries) {
        params[@"describeSingleSeries"] = self.describeSingleSeries;
    }
    if (self.descriptionFormatter) {
        params[@"descriptionFormatter"] = [self.descriptionFormatter getFunction];
    }
    if (self.pointDescriptionEnabledThreshold) {
        params[@"pointDescriptionEnabledThreshold"] = self.pointDescriptionEnabledThreshold;
    }
    return params;
}

# pragma mark - Setters

-(void)setDefinition:(NSString *)definition {
    NSString *oldValue = _definition;
    _definition = definition;
    [self updateNSObject:oldValue newValue:definition propertyName:@"definition"];
}

- (void)setNullPointValue:(NSString *)nullPointValue {
    NSString *oldValue = _nullPointValue;
    _nullPointValue = nullPointValue;
    [self updateNSObject:oldValue newValue:nullPointValue propertyName:@"nullPointValue"];
}

- (void)setPointAnnotationsDescription:(NSString *)pointAnnotationsDescription {
    NSString *oldValue = _pointAnnotationsDescription;
    _pointAnnotationsDescription = pointAnnotationsDescription;
    [self updateNSObject:oldValue newValue:pointAnnotationsDescription propertyName:@"definition"];
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

- (void)setDescribeSingleSeries:(NSNumber *)describeSingleSeries {
    NSNumber *oldValue = _describeSingleSeries;
    _describeSingleSeries = describeSingleSeries;
    [self updateNSObject:oldValue newValue:describeSingleSeries propertyName:@"describeSingleSeries"];
}

- (void)setDescriptionFormatter:(HIFunction *)descriptionFormatter {
    HIFunction *oldValue = _descriptionFormatter;
    _descriptionFormatter = descriptionFormatter;
    [self updateHIObject:oldValue newValue:descriptionFormatter propertyName:@"descriptionFormatter"];
}

- (void)setPointDescriptionEnabledThreshold:(NSNumber *)pointDescriptionEnabledThreshold {
    NSNumber *oldValue = _pointDescriptionEnabledThreshold;
    _pointDescriptionEnabledThreshold = pointDescriptionEnabledThreshold;
    [self updateNSObject:oldValue newValue:pointDescriptionEnabledThreshold propertyName:@"pointDescriptionEnabledThreshold"];
}

@end
