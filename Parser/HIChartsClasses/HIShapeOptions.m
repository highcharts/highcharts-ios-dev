#import "HIChartsJSONSerializableSubclass.h"
#import "HIShapeOptions.h"

@implementation HIShapeOptions

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIShapeOptions *copyShapeOptions = [[HIShapeOptions allocWithZone: zone] init];
	copyShapeOptions.strokeWidth = [self.strokeWidth copyWithZone: zone];
	copyShapeOptions.height = [self.height copyWithZone: zone];
	copyShapeOptions.width = [self.width copyWithZone: zone];
	copyShapeOptions.stroke = [self.stroke copyWithZone: zone];
	copyShapeOptions.r = [self.r copyWithZone: zone];
	copyShapeOptions.type = [self.type copyWithZone: zone];
	copyShapeOptions.fill = [self.fill copyWithZone: zone];
	copyShapeOptions.snap = [self.snap copyWithZone: zone];
	return copyShapeOptions;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.strokeWidth) {
		params[@"strokeWidth"] = self.strokeWidth;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.stroke) {
		params[@"stroke"] = [self.stroke getData];
	}
	if (self.r) {
		params[@"r"] = self.r;
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.fill) {
		params[@"fill"] = [self.fill getData];
	}
	if (self.snap) {
		params[@"snap"] = self.snap;
	}
	return params;
}

# pragma mark - Setters

-(void)setStrokeWidth:(NSNumber *)strokeWidth {
	_strokeWidth = strokeWidth;
	[self updateNSObject:@"strokeWidth"];
}

-(void)setHeight:(NSNumber *)height {
	_height = height;
	[self updateNSObject:@"height"];
}

-(void)setWidth:(NSNumber *)width {
	_width = width;
	[self updateNSObject:@"width"];
}

-(void)setStroke:(HIColor *)stroke {
	HIColor *oldValue = _stroke;
	if(self.stroke) {
		[self removeObserver:self forKeyPath:@"stroke.isUpdated"];
	}
	_stroke = stroke;
	[self updateHIObject:oldValue newValue:stroke propertyName:@"stroke"];
}

-(void)setR:(NSNumber *)r {
	_r = r;
	[self updateNSObject:@"r"];
}

-(void)setType:(NSString *)type {
	_type = type;
	[self updateNSObject:@"type"];
}

-(void)setFill:(HIColor *)fill {
	HIColor *oldValue = _fill;
	if(self.fill) {
		[self removeObserver:self forKeyPath:@"fill.isUpdated"];
	}
	_fill = fill;
	[self updateHIObject:oldValue newValue:fill propertyName:@"fill"];
}

-(void)setSnap:(NSNumber *)snap {
	_snap = snap;
	[self updateNSObject:@"snap"];
}

@end