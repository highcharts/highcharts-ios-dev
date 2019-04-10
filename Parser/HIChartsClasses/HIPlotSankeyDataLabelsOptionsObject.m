#import "HIChartsJSONSerializableSubclass.h"
#import "HIPlotSankeyDataLabelsOptionsObject.h"

@implementation HIPlotSankeyDataLabelsOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPlotSankeyDataLabelsOptionsObject *copyPlotSankeyDataLabelsOptionsObject = [[HIPlotSankeyDataLabelsOptionsObject allocWithZone: zone] init];
	copyPlotSankeyDataLabelsOptionsObject.nodeFormat = [self.nodeFormat copyWithZone: zone];
	copyPlotSankeyDataLabelsOptionsObject.nodeFormatter = [self.nodeFormatter copyWithZone: zone];
	return copyPlotSankeyDataLabelsOptionsObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.nodeFormat) {
		params[@"nodeFormat"] = self.nodeFormat;
	}
	if (self.nodeFormatter) {
		params[@"nodeFormatter"] = self.nodeFormatter;
	}
	return params;
}

# pragma mark - Setters

-(void)setNodeFormat:(NSString *)nodeFormat {
	NSString *oldValue = _nodeFormat;
	_nodeFormat = nodeFormat;
	[self updateNSObject:oldValue newValue:nodeFormat propertyName:@"nodeFormat"];
}

-(void)setNodeFormatter:(id)nodeFormatter {
	id oldValue = _nodeFormatter;
	_nodeFormatter = nodeFormatter;
	[self updateNSObject:oldValue newValue:nodeFormatter propertyName:@"nodeFormatter"];
}

@end