#import "HIChartsJSONSerializableSubclass.h"
#import "HIPatternOptionsObject.h"

@implementation HIPatternOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPatternOptionsObject *copyPatternOptionsObject = [[HIPatternOptionsObject allocWithZone: zone] init];
	copyPatternOptionsObject.aspectRatio = [self.aspectRatio copyWithZone: zone];
	copyPatternOptionsObject.backgroundColor = [self.backgroundColor copyWithZone: zone];
	copyPatternOptionsObject.color = [self.color copyWithZone: zone];
	copyPatternOptionsObject.height = [self.height copyWithZone: zone];
	copyPatternOptionsObject.id = [self.id copyWithZone: zone];
	copyPatternOptionsObject.image = [self.image copyWithZone: zone];
	copyPatternOptionsObject.opacity = [self.opacity copyWithZone: zone];
	copyPatternOptionsObject.path = [self.path copyWithZone: zone];
	copyPatternOptionsObject.width = [self.width copyWithZone: zone];
	copyPatternOptionsObject.x = [self.x copyWithZone: zone];
	copyPatternOptionsObject.y = [self.y copyWithZone: zone];
	return copyPatternOptionsObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.aspectRatio) {
		params[@"aspectRatio"] = self.aspectRatio;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = self.backgroundColor;
	}
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.image) {
		params[@"image"] = self.image;
	}
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	if (self.path) {
		params[@"path"] = [self.path getParams];
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	return params;
}

# pragma mark - Setters

-(void)setAspectRatio:(NSNumber *)aspectRatio {
	NSNumber *oldValue = _aspectRatio;
	_aspectRatio = aspectRatio;
	[self updateNSObject:oldValue newValue:aspectRatio propertyName:@"aspectRatio"];
}

-(void)setBackgroundColor:(NSString *)backgroundColor {
	NSString *oldValue = _backgroundColor;
	_backgroundColor = backgroundColor;
	[self updateNSObject:oldValue newValue:backgroundColor propertyName:@"backgroundColor"];
}

-(void)setColor:(NSString *)color {
	NSString *oldValue = _color;
	_color = color;
	[self updateNSObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setHeight:(NSNumber *)height {
	NSNumber *oldValue = _height;
	_height = height;
	[self updateNSObject:oldValue newValue:height propertyName:@"height"];
}

-(void)setId:(NSString *)id {
	NSString *oldValue = _id;
	_id = id;
	[self updateNSObject:oldValue newValue:id propertyName:@"id"];
}

-(void)setImage:(NSString *)image {
	NSString *oldValue = _image;
	_image = image;
	[self updateNSObject:oldValue newValue:image propertyName:@"image"];
}

-(void)setOpacity:(NSNumber *)opacity {
	NSNumber *oldValue = _opacity;
	_opacity = opacity;
	[self updateNSObject:oldValue newValue:opacity propertyName:@"opacity"];
}

-(void)setPath:(HISVGAttributes *)path {
	HISVGAttributes *oldValue = _path;
	_path = path;
	[self updateHIObject:oldValue newValue:path propertyName:@"path"];
}

-(void)setWidth:(NSNumber *)width {
	NSNumber *oldValue = _width;
	_width = width;
	[self updateNSObject:oldValue newValue:width propertyName:@"width"];
}

-(void)setX:(NSNumber *)x {
	NSNumber *oldValue = _x;
	_x = x;
	[self updateNSObject:oldValue newValue:x propertyName:@"x"];
}

-(void)setY:(NSNumber *)y {
	NSNumber *oldValue = _y;
	_y = y;
	[self updateNSObject:oldValue newValue:y propertyName:@"y"];
}

@end