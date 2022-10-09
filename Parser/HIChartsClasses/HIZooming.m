#import "HIChartsJSONSerializableSubclass.h"
#import "HIZooming.h"

@implementation HIZooming

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIZooming *copyZooming = [[HIZooming allocWithZone: zone] init];
	copyZooming.resetButton = [self.resetButton copyWithZone: zone];
	copyZooming.singleTouch = [self.singleTouch copyWithZone: zone];
	copyZooming.type = [self.type copyWithZone: zone];
	copyZooming.pinchType = [self.pinchType copyWithZone: zone];
	copyZooming.key = [self.key copyWithZone: zone];
	return copyZooming;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.resetButton) {
		params[@"resetButton"] = [self.resetButton getParams];
	}
	if (self.singleTouch) {
		params[@"singleTouch"] = self.singleTouch;
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.pinchType) {
		params[@"pinchType"] = self.pinchType;
	}
	if (self.key) {
		params[@"key"] = self.key;
	}
	return params;
}

# pragma mark - Setters

-(void)setResetButton:(HIResetButton *)resetButton {
	HIResetButton *oldValue = _resetButton;
	_resetButton = resetButton;
	[self updateHIObject:oldValue newValue:resetButton propertyName:@"resetButton"];
}

-(void)setSingleTouch:(NSNumber *)singleTouch {
	NSNumber *oldValue = _singleTouch;
	_singleTouch = singleTouch;
	[self updateNSObject:oldValue newValue:singleTouch propertyName:@"singleTouch"];
}

-(void)setType:(NSString *)type {
	NSString *oldValue = _type;
	_type = type;
	[self updateNSObject:oldValue newValue:type propertyName:@"type"];
}

-(void)setPinchType:(NSString *)pinchType {
	NSString *oldValue = _pinchType;
	_pinchType = pinchType;
	[self updateNSObject:oldValue newValue:pinchType propertyName:@"pinchType"];
}

-(void)setKey:(NSString *)key {
	NSString *oldValue = _key;
	_key = key;
	[self updateNSObject:oldValue newValue:key propertyName:@"key"];
}

@end