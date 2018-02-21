#import "HIChartsJSONSerializableSubclass.h"
#import "HIRules.h"

@implementation HIRules

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.chartOptions) {
		params[@"chartOptions"] = self.chartOptions;
	}
	if (self.condition) {
		params[@"condition"] = [self.condition getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setChartOptions:(id)chartOptions {
	_chartOptions = chartOptions;
	[self updateNSObject:@"chartOptions"];
}

-(void)setCondition:(HICondition *)condition {
	HICondition *oldValue = _condition;
	if(self.condition) {
		[self removeObserver:self forKeyPath:@"condition.isUpdated"];
	}
	_condition = condition;
	[self updateHIObject:oldValue newValue:condition propertyName:@"condition"];
}

@end