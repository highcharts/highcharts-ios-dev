#import "HIChartsJSONSerializableSubclass.h"
#import "HIAxis.h"

@implementation HIAxis

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.xAxisDescriptionSingular) {
		params[@"xAxisDescriptionSingular"] = self.xAxisDescriptionSingular;
	}
	if (self.xAxisDescriptionPlural) {
		params[@"xAxisDescriptionPlural"] = self.xAxisDescriptionPlural;
	}
	if (self.yAxisDescriptionPlural) {
		params[@"yAxisDescriptionPlural"] = self.yAxisDescriptionPlural;
	}
	if (self.yAxisDescriptionSingular) {
		params[@"yAxisDescriptionSingular"] = self.yAxisDescriptionSingular;
	}
	return params;
}

# pragma mark - Setters

-(void)setXAxisDescriptionSingular:(NSString *)xAxisDescriptionSingular {
	_xAxisDescriptionSingular = xAxisDescriptionSingular;
	[self updateNSObject:@"xAxisDescriptionSingular"];
}

-(void)setXAxisDescriptionPlural:(NSString *)xAxisDescriptionPlural {
	_xAxisDescriptionPlural = xAxisDescriptionPlural;
	[self updateNSObject:@"xAxisDescriptionPlural"];
}

-(void)setYAxisDescriptionPlural:(NSString *)yAxisDescriptionPlural {
	_yAxisDescriptionPlural = yAxisDescriptionPlural;
	[self updateNSObject:@"yAxisDescriptionPlural"];
}

-(void)setYAxisDescriptionSingular:(NSString *)yAxisDescriptionSingular {
	_yAxisDescriptionSingular = yAxisDescriptionSingular;
	[self updateNSObject:@"yAxisDescriptionSingular"];
}

@end