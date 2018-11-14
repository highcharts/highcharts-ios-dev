#import "HIChartsJSONSerializableSubclass.h"
#import "HISelect.h"

@implementation HISelect

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISelect *copySelect = [[HISelect allocWithZone: zone] init];
	copySelect.enabled = [self.enabled copyWithZone: zone];
	copySelect.lineWidth = [self.lineWidth copyWithZone: zone];
	copySelect.radius = [self.radius copyWithZone: zone];
	copySelect.fillColor = [self.fillColor copyWithZone: zone];
	copySelect.lineColor = [self.lineColor copyWithZone: zone];
	copySelect.color = [self.color copyWithZone: zone];
	copySelect.borderColor = [self.borderColor copyWithZone: zone];
	return copySelect;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.fillColor) {
		params[@"fillColor"] = self.fillColor;
	}
	if (self.lineColor) {
		params[@"lineColor"] = self.lineColor;
	}
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.borderColor) {
		params[@"borderColor"] = self.borderColor;
	}
	return params;
}

# pragma mark - Setters

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setLineWidth:(NSNumber *)lineWidth {
	_lineWidth = lineWidth;
	[self updateNSObject:@"lineWidth"];
}

-(void)setRadius:(NSNumber *)radius {
	_radius = radius;
	[self updateNSObject:@"radius"];
}

-(void)setFillColor:(NSString *)fillColor {
	_fillColor = fillColor;
	[self updateNSObject:@"fillColor"];
}

-(void)setLineColor:(NSString *)lineColor {
	_lineColor = lineColor;
	[self updateNSObject:@"lineColor"];
}

-(void)setColor:(NSString *)color {
	_color = color;
	[self updateNSObject:@"color"];
}

-(void)setBorderColor:(NSString *)borderColor {
	_borderColor = borderColor;
	[self updateNSObject:@"borderColor"];
}

@end