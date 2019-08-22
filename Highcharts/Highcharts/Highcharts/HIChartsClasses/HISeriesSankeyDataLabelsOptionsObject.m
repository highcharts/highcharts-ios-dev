#import "HIChartsJSONSerializableSubclass.h"
#import "HISeriesSankeyDataLabelsOptionsObject.h"

@implementation HISeriesSankeyDataLabelsOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISeriesSankeyDataLabelsOptionsObject *copySeriesSankeyDataLabelsOptionsObject = [[HISeriesSankeyDataLabelsOptionsObject allocWithZone: zone] init];
	copySeriesSankeyDataLabelsOptionsObject.nodeFormat = [self.nodeFormat copyWithZone: zone];
	copySeriesSankeyDataLabelsOptionsObject.nodeFormatter = [self.nodeFormatter copyWithZone: zone];
	return copySeriesSankeyDataLabelsOptionsObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.nodeFormat) {
		params[@"nodeFormat"] = self.nodeFormat;
	}
	if (self.nodeFormatter) {
		params[@"nodeFormatter"] = [self.nodeFormatter getFunction];
	}
	return params;
}

# pragma mark - Setters

-(void)setNodeFormat:(NSString *)nodeFormat {
	NSString *oldValue = _nodeFormat;
	_nodeFormat = nodeFormat;
	[self updateNSObject:oldValue newValue:nodeFormat propertyName:@"nodeFormat"];
}

-(void)setNodeFormatter:(HIFunction *)nodeFormatter {
	HIFunction *oldValue = _nodeFormatter;
	_nodeFormatter = nodeFormatter;
	[self updateHIObject:oldValue newValue:nodeFormatter propertyName:@"nodeFormatter"];
}

@end