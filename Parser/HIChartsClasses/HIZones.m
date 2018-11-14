#import "HIChartsJSONSerializableSubclass.h"
#import "HIZones.h"

@implementation HIZones

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIZones *copyZones = [[HIZones allocWithZone: zone] init];
	copyZones.className = [self.className copyWithZone: zone];
	copyZones.color = [self.color copyWithZone: zone];
	copyZones.dashStyle = [self.dashStyle copyWithZone: zone];
	copyZones.fillColor = [self.fillColor copyWithZone: zone];
	copyZones.value = [self.value copyWithZone: zone];
	return copyZones;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.fillColor) {
		params[@"fillColor"] = self.fillColor;
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	return params;
}

# pragma mark - Setters

-(void)setClassName:(NSString *)className {
	_className = className;
	[self updateNSObject:@"className"];
}

-(void)setColor:(NSString *)color {
	_color = color;
	[self updateNSObject:@"color"];
}

-(void)setDashStyle:(NSString *)dashStyle {
	_dashStyle = dashStyle;
	[self updateNSObject:@"dashStyle"];
}

-(void)setFillColor:(NSString *)fillColor {
	_fillColor = fillColor;
	[self updateNSObject:@"fillColor"];
}

-(void)setValue:(NSNumber *)value {
	_value = value;
	[self updateNSObject:@"value"];
}

@end