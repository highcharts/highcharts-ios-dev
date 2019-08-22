#import "HIChartsJSONSerializableSubclass.h"
#import "HISeriesNetworkgraphDataLabelsOptionsObject.h"

@implementation HISeriesNetworkgraphDataLabelsOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISeriesNetworkgraphDataLabelsOptionsObject *copySeriesNetworkgraphDataLabelsOptionsObject = [[HISeriesNetworkgraphDataLabelsOptionsObject allocWithZone: zone] init];
	copySeriesNetworkgraphDataLabelsOptionsObject.format = [self.format copyWithZone: zone];
	copySeriesNetworkgraphDataLabelsOptionsObject.formatter = [self.formatter copyWithZone: zone];
	copySeriesNetworkgraphDataLabelsOptionsObject.linkFormat = [self.linkFormat copyWithZone: zone];
	copySeriesNetworkgraphDataLabelsOptionsObject.linkFormatter = [self.linkFormatter copyWithZone: zone];
	copySeriesNetworkgraphDataLabelsOptionsObject.linkTextPath = [self.linkTextPath copyWithZone: zone];
	return copySeriesNetworkgraphDataLabelsOptionsObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.formatter) {
		params[@"formatter"] = [self.formatter getFunction];
	}
	if (self.linkFormat) {
		params[@"linkFormat"] = self.linkFormat;
	}
	if (self.linkFormatter) {
		params[@"linkFormatter"] = [self.linkFormatter getFunction];
	}
	if (self.linkTextPath) {
		params[@"linkTextPath"] = [self.linkTextPath getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setFormat:(NSString *)format {
	NSString *oldValue = _format;
	_format = format;
	[self updateNSObject:oldValue newValue:format propertyName:@"format"];
}

-(void)setFormatter:(HIFunction *)formatter {
	HIFunction *oldValue = _formatter;
	_formatter = formatter;
	[self updateHIObject:oldValue newValue:formatter propertyName:@"formatter"];
}

-(void)setLinkFormat:(NSString *)linkFormat {
	NSString *oldValue = _linkFormat;
	_linkFormat = linkFormat;
	[self updateNSObject:oldValue newValue:linkFormat propertyName:@"linkFormat"];
}

-(void)setLinkFormatter:(HIFunction *)linkFormatter {
	HIFunction *oldValue = _linkFormatter;
	_linkFormatter = linkFormatter;
	[self updateHIObject:oldValue newValue:linkFormatter propertyName:@"linkFormatter"];
}

-(void)setLinkTextPath:(HIDataLabelsTextPathOptionsObject *)linkTextPath {
	HIDataLabelsTextPathOptionsObject *oldValue = _linkTextPath;
	_linkTextPath = linkTextPath;
	[self updateHIObject:oldValue newValue:linkTextPath propertyName:@"linkTextPath"];
}

@end