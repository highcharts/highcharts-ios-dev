#import "HIChartsJSONSerializableSubclass.h"
#import "HISeriesPackedBubbleDataLabelsOptionsObject.h"

@implementation HISeriesPackedBubbleDataLabelsOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISeriesPackedBubbleDataLabelsOptionsObject *copySeriesPackedBubbleDataLabelsOptionsObject = [[HISeriesPackedBubbleDataLabelsOptionsObject allocWithZone: zone] init];
	copySeriesPackedBubbleDataLabelsOptionsObject.format = [self.format copyWithZone: zone];
	copySeriesPackedBubbleDataLabelsOptionsObject.formatter = [self.formatter copyWithZone: zone];
	copySeriesPackedBubbleDataLabelsOptionsObject.parentNodeFormat = [self.parentNodeFormat copyWithZone: zone];
	copySeriesPackedBubbleDataLabelsOptionsObject.parentNodeFormatter = [self.parentNodeFormatter copyWithZone: zone];
	copySeriesPackedBubbleDataLabelsOptionsObject.parentNodeTextPath = [self.parentNodeTextPath copyWithZone: zone];
	copySeriesPackedBubbleDataLabelsOptionsObject.textPath = [self.textPath copyWithZone: zone];
	return copySeriesPackedBubbleDataLabelsOptionsObject;
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
	if (self.parentNodeFormat) {
		params[@"parentNodeFormat"] = self.parentNodeFormat;
	}
	if (self.parentNodeFormatter) {
		params[@"parentNodeFormatter"] = self.parentNodeFormatter;
	}
	if (self.parentNodeTextPath) {
		params[@"parentNodeTextPath"] = [self.parentNodeTextPath getParams];
	}
	if (self.textPath) {
		params[@"textPath"] = [self.textPath getParams];
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

-(void)setParentNodeFormat:(NSString *)parentNodeFormat {
	NSString *oldValue = _parentNodeFormat;
	_parentNodeFormat = parentNodeFormat;
	[self updateNSObject:oldValue newValue:parentNodeFormat propertyName:@"parentNodeFormat"];
}

-(void)setParentNodeFormatter:(id)parentNodeFormatter {
	id oldValue = _parentNodeFormatter;
	_parentNodeFormatter = parentNodeFormatter;
	[self updateNSObject:oldValue newValue:parentNodeFormatter propertyName:@"parentNodeFormatter"];
}

-(void)setParentNodeTextPath:(HISeriesPackedBubbleDataLabelsTextPathOptionsObject *)parentNodeTextPath {
	HISeriesPackedBubbleDataLabelsTextPathOptionsObject *oldValue = _parentNodeTextPath;
	_parentNodeTextPath = parentNodeTextPath;
	[self updateHIObject:oldValue newValue:parentNodeTextPath propertyName:@"parentNodeTextPath"];
}

-(void)setTextPath:(HISeriesPackedBubbleDataLabelsTextPathOptionsObject *)textPath {
	HISeriesPackedBubbleDataLabelsTextPathOptionsObject *oldValue = _textPath;
	_textPath = textPath;
	[self updateHIObject:oldValue newValue:textPath propertyName:@"textPath"];
}

@end