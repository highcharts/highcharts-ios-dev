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
		params[@"chartOptions"] = self.chartOptions;
	}
	return params;
}

# pragma mark - Setters

-(void)setCondition:(HICondition *)condition {
	HICondition *oldValue = _condition;
	if(self.condition) {
		[self removeObserver:self forKeyPath:@"condition.isUpdated"];
	}
	_condition = condition;
	[self updateHIObject:oldValue newValue:condition propertyName:@"condition"];
}

-(void)setChartOptions:(id)chartOptions {
	_chartOptions = chartOptions;
	[self updateNSObject:@"chartOptions"];
}

@end