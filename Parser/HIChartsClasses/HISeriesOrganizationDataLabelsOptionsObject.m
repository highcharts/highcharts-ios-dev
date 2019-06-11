#import "HIChartsJSONSerializableSubclass.h"
#import "HISeriesOrganizationDataLabelsOptionsObject.h"

@implementation HISeriesOrganizationDataLabelsOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISeriesOrganizationDataLabelsOptionsObject *copySeriesOrganizationDataLabelsOptionsObject = [[HISeriesOrganizationDataLabelsOptionsObject allocWithZone: zone] init];
	copySeriesOrganizationDataLabelsOptionsObject.nodeFormatter = [self.nodeFormatter copyWithZone: zone];
	return copySeriesOrganizationDataLabelsOptionsObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.nodeFormatter) {
		params[@"nodeFormatter"] = [self.nodeFormatter getFunction];
	}
	return params;
}

# pragma mark - Setters

-(void)setNodeFormatter:(HIFunction *)nodeFormatter {
	HIFunction *oldValue = _nodeFormatter;
	_nodeFormatter = nodeFormatter;
	[self updateHIObject:oldValue newValue:nodeFormatter propertyName:@"nodeFormatter"];
}

@end