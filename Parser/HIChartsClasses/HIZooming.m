#import "HIChartsJSONSerializableSubclass.h"
#import "HIZooming.h"

@implementation HIZooming

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIZooming *copyZooming = [[HIZooming allocWithZone: zone] init];
	copyZooming.mouseWheel = [self.mouseWheel copyWithZone: zone];
	copyZooming.pinchType = [self.pinchType copyWithZone: zone];
	copyZooming.resetButton = [self.resetButton copyWithZone: zone];
	copyZooming.key = [self.key copyWithZone: zone];
	copyZooming.singleTouch = [self.singleTouch copyWithZone: zone];
	copyZooming.type = [self.type copyWithZone: zone];
	return copyZooming;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.mouseWheel) {
		params[@"mouseWheel"] = [self.mouseWheel getParams];
	}
	if (self.pinchType) {
		params[@"pinchType"] = self.pinchType;
	}
	if (self.resetButton) {
		params[@"resetButton"] = [self.resetButton getParams];
	}
	if (self.key) {
		params[@"key"] = self.key;
	}
	if (self.singleTouch) {
		params[@"singleTouch"] = self.singleTouch;
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	return params;
}

# pragma mark - Setters

-(void)setMouseWheel:(HIMouseWheel *)mouseWheel {
	HIMouseWheel *oldValue = _mouseWheel;
	_mouseWheel = mouseWheel;
	[self updateHIObject:oldValue newValue:mouseWheel propertyName:@"mouseWheel"];
}

-(void)setPinchType:(NSString *)pinchType {
	NSString *oldValue = _pinchType;
	_pinchType = pinchType;
	[self updateNSObject:oldValue newValue:pinchType propertyName:@"pinchType"];
}

-(void)setResetButton:(HIResetButton *)resetButton {
	HIResetButton *oldValue = _resetButton;
	_resetButton = resetButton;
	[self updateHIObject:oldValue newValue:resetButton propertyName:@"resetButton"];
}

-(void)setKey:(NSString *)key {
	NSString *oldValue = _key;
	_key = key;
	[self updateNSObject:oldValue newValue:key propertyName:@"key"];
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

@end