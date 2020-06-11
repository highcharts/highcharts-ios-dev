#import "HIChartsJSONSerializableSubclass.h"
#import "HIZoom.h"

@implementation HIZoom

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIZoom *copyZoom = [[HIZoom allocWithZone: zone] init];
	copyZoom.mapZoomIn = [self.mapZoomIn copyWithZone: zone];
	copyZoom.resetZoomButton = [self.resetZoomButton copyWithZone: zone];
	copyZoom.mapZoomOut = [self.mapZoomOut copyWithZone: zone];
	return copyZoom;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.mapZoomIn) {
		params[@"mapZoomIn"] = self.mapZoomIn;
	}
	if (self.resetZoomButton) {
		params[@"resetZoomButton"] = self.resetZoomButton;
	}
	if (self.mapZoomOut) {
		params[@"mapZoomOut"] = self.mapZoomOut;
	}
	return params;
}

# pragma mark - Setters

-(void)setMapZoomIn:(NSString *)mapZoomIn {
	NSString *oldValue = _mapZoomIn;
	_mapZoomIn = mapZoomIn;
	[self updateNSObject:oldValue newValue:mapZoomIn propertyName:@"mapZoomIn"];
}

-(void)setResetZoomButton:(NSString *)resetZoomButton {
	NSString *oldValue = _resetZoomButton;
	_resetZoomButton = resetZoomButton;
	[self updateNSObject:oldValue newValue:resetZoomButton propertyName:@"resetZoomButton"];
}

-(void)setMapZoomOut:(NSString *)mapZoomOut {
	NSString *oldValue = _mapZoomOut;
	_mapZoomOut = mapZoomOut;
	[self updateNSObject:oldValue newValue:mapZoomOut propertyName:@"mapZoomOut"];
}

@end