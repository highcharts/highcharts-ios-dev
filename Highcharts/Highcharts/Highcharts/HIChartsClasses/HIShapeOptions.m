#import "HIChartsJSONSerializableSubclass.h"
#import "HIShapeOptions.h"

@implementation HIShapeOptions

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.strokeWidth) {
		params[@"strokeWidth"] = self.strokeWidth;
	}
	if (self.stroke) {
		params[@"stroke"] = [self.stroke getData];
	}
	if (self.r) {
		params[@"r"] = self.r;
	}
	if (self.fill) {
		params[@"fill"] = [self.fill getData];
	}
	return params;
}

# pragma mark - Setters

-(void)setHeight:(NSNumber *)height {
	_height = height;
	[self updateNSObject:@"height"];
}

-(void)setType:(NSString *)type {
	_type = type;
	[self updateNSObject:@"type"];
}

-(void)setWidth:(NSNumber *)width {
	_width = width;
	[self updateNSObject:@"width"];
}

-(void)setStrokeWidth:(NSNumber *)strokeWidth {
	_strokeWidth = strokeWidth;
	[self updateNSObject:@"strokeWidth"];
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

-(void)setFill:(HIColor *)fill {
	HIColor *oldValue = _fill;
	if(self.fill) {
		[self removeObserver:self forKeyPath:@"fill.isUpdated"];
	}
	_fill = fill;
	[self updateHIObject:oldValue newValue:fill propertyName:@"fill"];
}

@end