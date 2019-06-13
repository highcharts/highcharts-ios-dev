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

-(void)setTextPath:(HISeriesPackedBubbleDataLabelsTextPath *)textPath {
	HISeriesPackedBubbleDataLabelsTextPath *oldValue = _textPath;
	_textPath = textPath;
	[self updateHIObject:oldValue newValue:textPath propertyName:@"textPath"];
}

@end