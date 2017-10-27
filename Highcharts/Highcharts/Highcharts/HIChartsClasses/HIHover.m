#import "HIHover.h"
#import "HIMarker.h"

@implementation HIHover

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	if (self.lineWidthPlus) {
		params[@"lineWidthPlus"] = self.lineWidthPlus;
	}
	if (self.brightness) {
		params[@"brightness"] = self.brightness;
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.halo) {
		params[@"halo"] = [self.halo getParams];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.radiusPlus) {
		params[@"radiusPlus"] = self.radiusPlus;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	if (self.linkOpacity) {
		params[@"linkOpacity"] = self.linkOpacity;
	}
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	return params;
}

@end
