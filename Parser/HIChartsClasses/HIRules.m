#import "HIChartsJSONSerializableSubclass.h"
#import "HIRules.h"

@implementation HIRules

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIRules *copyRules = [[HIRules allocWithZone: zone] init];
	copyRules.condition = [self.condition copyWithZone: zone];
	copyRules.chartOptions = [self.chartOptions copyWithZone: zone];
	return copyRules;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.condition) {
		params[@"condition"] = [self.condition getParams];
	}
	if (self.chartOptions) {
		params[@"chartOptions"] = [self.chartOptions getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setCondition:(HICondition *)condition {
	HICondition *oldValue = _condition;
	_condition = condition;
	[self updateHIObject:oldValue newValue:condition propertyName:@"condition"];
}

-(void)setChartOptions:(HIOptions *)chartOptions {
	HIOptions *oldValue = _chartOptions;
	_chartOptions = chartOptions;
	[self updateHIObject:oldValue newValue:chartOptions propertyName:@"chartOptions"];
}

@end