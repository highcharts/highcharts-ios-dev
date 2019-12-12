#import "HIChartsJSONSerializableSubclass.h"
#import "HIRangeSelector.h"

@implementation HIRangeSelector

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIRangeSelector *copyRangeSelector = [[HIRangeSelector allocWithZone: zone] init];
	copyRangeSelector.buttonText = [self.buttonText copyWithZone: zone];
	copyRangeSelector.maxInputLabel = [self.maxInputLabel copyWithZone: zone];
	copyRangeSelector.minInputLabel = [self.minInputLabel copyWithZone: zone];
	return copyRangeSelector;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.buttonText) {
		params[@"buttonText"] = self.buttonText;
	}
	if (self.maxInputLabel) {
		params[@"maxInputLabel"] = self.maxInputLabel;
	}
	if (self.minInputLabel) {
		params[@"minInputLabel"] = self.minInputLabel;
	}
	return params;
}

# pragma mark - Setters

-(void)setButtonText:(NSString *)buttonText {
	NSString *oldValue = _buttonText;
	_buttonText = buttonText;
	[self updateNSObject:oldValue newValue:buttonText propertyName:@"buttonText"];
}

-(void)setMaxInputLabel:(NSString *)maxInputLabel {
	NSString *oldValue = _maxInputLabel;
	_maxInputLabel = maxInputLabel;
	[self updateNSObject:oldValue newValue:maxInputLabel propertyName:@"maxInputLabel"];
}

-(void)setMinInputLabel:(NSString *)minInputLabel {
	NSString *oldValue = _minInputLabel;
	_minInputLabel = minInputLabel;
	[self updateNSObject:oldValue newValue:minInputLabel propertyName:@"minInputLabel"];
}

@end