#import "HIChartsJSONSerializableSubclass.h"
#import "HIPlotNetworkDataLabelsOptionsObject.h"

@implementation HIPlotNetworkDataLabelsOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPlotNetworkDataLabelsOptionsObject *copyPlotNetworkDataLabelsOptionsObject = [[HIPlotNetworkDataLabelsOptionsObject allocWithZone: zone] init];
	copyPlotNetworkDataLabelsOptionsObject.format = [self.format copyWithZone: zone];
	copyPlotNetworkDataLabelsOptionsObject.formatter = [self.formatter copyWithZone: zone];
	copyPlotNetworkDataLabelsOptionsObject.linkFormat = [self.linkFormat copyWithZone: zone];
	copyPlotNetworkDataLabelsOptionsObject.linkFormatter = [self.linkFormatter copyWithZone: zone];
	copyPlotNetworkDataLabelsOptionsObject.linkTextPath = [self.linkTextPath copyWithZone: zone];
	copyPlotNetworkDataLabelsOptionsObject.textPath = [self.textPath copyWithZone: zone];
	return copyPlotNetworkDataLabelsOptionsObject;
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
		params[@"linkTextPath"] = self.linkTextPath;
	}
	if (self.textPath) {
		params[@"textPath"] = self.textPath;
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

-(void)setLinkTextPath:(id)linkTextPath {
	id oldValue = _linkTextPath;
	_linkTextPath = linkTextPath;
	[self updateNSObject:oldValue newValue:linkTextPath propertyName:@"linkTextPath"];
}

-(void)setTextPath:(id)textPath {
	id oldValue = _textPath;
	_textPath = textPath;
	[self updateNSObject:oldValue newValue:textPath propertyName:@"textPath"];
}

@end