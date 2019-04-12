#import "HIChartsJSONSerializableSubclass.h"
#import "HIPlotPackedBubbleDataLabelsOptionsObject.h"

@implementation HIPlotPackedBubbleDataLabelsOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPlotPackedBubbleDataLabelsOptionsObject *copyPlotPackedBubbleDataLabelsOptionsObject = [[HIPlotPackedBubbleDataLabelsOptionsObject allocWithZone: zone] init];
	copyPlotPackedBubbleDataLabelsOptionsObject.format = [self.format copyWithZone: zone];
	copyPlotPackedBubbleDataLabelsOptionsObject.formatter = [self.formatter copyWithZone: zone];
	copyPlotPackedBubbleDataLabelsOptionsObject.textPath = [self.textPath copyWithZone: zone];
	return copyPlotPackedBubbleDataLabelsOptionsObject;
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

-(void)setTextPath:(id)textPath {
	id oldValue = _textPath;
	_textPath = textPath;
	[self updateNSObject:oldValue newValue:textPath propertyName:@"textPath"];
}

@end