#import "HIChartsJSONSerializableSubclass.h"
#import "HIShadowOptionsObject.h"

@implementation HIShadowOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIShadowOptionsObject *copyShadowOptionsObject = [[HIShadowOptionsObject allocWithZone: zone] init];
	copyShadowOptionsObject.color = [self.color copyWithZone: zone];
	copyShadowOptionsObject.offsetX = [self.offsetX copyWithZone: zone];
	copyShadowOptionsObject.offsetY = [self.offsetY copyWithZone: zone];
	copyShadowOptionsObject.opacity = [self.opacity copyWithZone: zone];
	copyShadowOptionsObject.width = [self.width copyWithZone: zone];
	return copyShadowOptionsObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.offsetX) {
		params[@"offsetX"] = self.offsetX;
	}
	if (self.offsetY) {
		params[@"offsetY"] = self.offsetY;
	}
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	return params;
}

# pragma mark - Setters

-(void)setColor:(NSString *)color {
	NSString *oldValue = _color;
	_color = color;
	[self updateNSObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setOffsetX:(NSNumber *)offsetX {
	NSNumber *oldValue = _offsetX;
	_offsetX = offsetX;
	[self updateNSObject:oldValue newValue:offsetX propertyName:@"offsetX"];
}

-(void)setOffsetY:(NSNumber *)offsetY {
	NSNumber *oldValue = _offsetY;
	_offsetY = offsetY;
	[self updateNSObject:oldValue newValue:offsetY propertyName:@"offsetY"];
}

-(void)setOpacity:(NSNumber *)opacity {
	NSNumber *oldValue = _opacity;
	_opacity = opacity;
	[self updateNSObject:oldValue newValue:opacity propertyName:@"opacity"];
}

-(void)setWidth:(NSNumber *)width {
	NSNumber *oldValue = _width;
	_width = width;
	[self updateNSObject:oldValue newValue:width propertyName:@"width"];
}

@end