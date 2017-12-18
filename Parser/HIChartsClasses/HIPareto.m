#import "HIChartsJSONSerializableSubclass.h"
#import "HIPareto.h"

@implementation HIPareto

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"pareto";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.baseSeries) {
		params[@"baseSeries"] = self.baseSeries;
	}
	return params;
}

# pragma mark - Setters

-(void)setBaseSeries:(id)baseSeries {
	_baseSeries = baseSeries;
	[self updateNSObject:@"baseSeries"];
}

@end