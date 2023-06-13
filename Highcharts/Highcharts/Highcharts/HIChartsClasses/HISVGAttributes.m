#import "HIChartsJSONSerializableSubclass.h"
#import "HISVGAttributes.h"

@implementation HISVGAttributes

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISVGAttributes *copySVGAttributes = [[HISVGAttributes allocWithZone: zone] init];
	copySVGAttributes.d = [self.d copyWithZone: zone];
	copySVGAttributes.dx = [self.dx copyWithZone: zone];
	copySVGAttributes.dy = [self.dy copyWithZone: zone];
	copySVGAttributes.fill = [self.fill copyWithZone: zone];
	copySVGAttributes.inverted = [self.inverted copyWithZone: zone];
	copySVGAttributes.matrix = [self.matrix copyWithZone: zone];
	copySVGAttributes.rotation = [self.rotation copyWithZone: zone];
	copySVGAttributes.rotationOriginX = [self.rotationOriginX copyWithZone: zone];
	copySVGAttributes.rotationOriginY = [self.rotationOriginY copyWithZone: zone];
	copySVGAttributes.scaleX = [self.scaleX copyWithZone: zone];
	copySVGAttributes.scaleY = [self.scaleY copyWithZone: zone];
	copySVGAttributes.stroke = [self.stroke copyWithZone: zone];
	copySVGAttributes.style = [self.style copyWithZone: zone];
	copySVGAttributes.translateX = [self.translateX copyWithZone: zone];
	copySVGAttributes.translateY = [self.translateY copyWithZone: zone];
	copySVGAttributes.zIndex = [self.zIndex copyWithZone: zone];
	return copySVGAttributes;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.d) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.d) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"d"] = array;
	}
	if (self.dx) {
		params[@"dx"] = self.dx;
	}
	if (self.dy) {
		params[@"dy"] = self.dy;
	}
	if (self.fill) {
		params[@"fill"] = [self.fill getData];
	}
	if (self.inverted) {
		params[@"inverted"] = self.inverted;
	}
	if (self.matrix) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.matrix) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"matrix"] = array;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.rotationOriginX) {
		params[@"rotationOriginX"] = self.rotationOriginX;
	}
	if (self.rotationOriginY) {
		params[@"rotationOriginY"] = self.rotationOriginY;
	}
	if (self.scaleX) {
		params[@"scaleX"] = self.scaleX;
	}
	if (self.scaleY) {
		params[@"scaleY"] = self.scaleY;
	}
	if (self.stroke) {
		params[@"stroke"] = [self.stroke getData];
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.translateX) {
		params[@"translateX"] = self.translateX;
	}
	if (self.translateY) {
		params[@"translateY"] = self.translateY;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	return params;
}

# pragma mark - Setters

-(void)setD:(NSArray *)d {
	NSArray *oldValue = _d;
	_d = d;
	[self updateArrayObject:oldValue newValue:d propertyName:@"d"];
}

-(void)setDx:(NSNumber *)dx {
	NSNumber *oldValue = _dx;
	_dx = dx;
	[self updateNSObject:oldValue newValue:dx propertyName:@"dx"];
}

-(void)setDy:(NSNumber *)dy {
	NSNumber *oldValue = _dy;
	_dy = dy;
	[self updateNSObject:oldValue newValue:dy propertyName:@"dy"];
}

-(void)setFill:(HIColor *)fill {
	HIColor *oldValue = _fill;
	_fill = fill;
	[self updateHIObject:oldValue newValue:fill propertyName:@"fill"];
}

-(void)setInverted:(NSNumber *)inverted {
	NSNumber *oldValue = _inverted;
	_inverted = inverted;
	[self updateNSObject:oldValue newValue:inverted propertyName:@"inverted"];
}

-(void)setMatrix:(NSArray<NSNumber *> *)matrix {
	NSArray<NSNumber *> *oldValue = _matrix;
	_matrix = matrix;
	[self updateArrayObject:oldValue newValue:matrix propertyName:@"matrix"];
}

-(void)setRotation:(NSNumber *)rotation {
	NSNumber *oldValue = _rotation;
	_rotation = rotation;
	[self updateNSObject:oldValue newValue:rotation propertyName:@"rotation"];
}

-(void)setRotationOriginX:(NSNumber *)rotationOriginX {
	NSNumber *oldValue = _rotationOriginX;
	_rotationOriginX = rotationOriginX;
	[self updateNSObject:oldValue newValue:rotationOriginX propertyName:@"rotationOriginX"];
}

-(void)setRotationOriginY:(NSNumber *)rotationOriginY {
	NSNumber *oldValue = _rotationOriginY;
	_rotationOriginY = rotationOriginY;
	[self updateNSObject:oldValue newValue:rotationOriginY propertyName:@"rotationOriginY"];
}

-(void)setScaleX:(NSNumber *)scaleX {
	NSNumber *oldValue = _scaleX;
	_scaleX = scaleX;
	[self updateNSObject:oldValue newValue:scaleX propertyName:@"scaleX"];
}

-(void)setScaleY:(NSNumber *)scaleY {
	NSNumber *oldValue = _scaleY;
	_scaleY = scaleY;
	[self updateNSObject:oldValue newValue:scaleY propertyName:@"scaleY"];
}

-(void)setStroke:(HIColor *)stroke {
	HIColor *oldValue = _stroke;
	_stroke = stroke;
	[self updateHIObject:oldValue newValue:stroke propertyName:@"stroke"];
}

-(void)setStyle:(HICSSObject *)style {
	HICSSObject *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setTranslateX:(NSNumber *)translateX {
	NSNumber *oldValue = _translateX;
	_translateX = translateX;
	[self updateNSObject:oldValue newValue:translateX propertyName:@"translateX"];
}

-(void)setTranslateY:(NSNumber *)translateY {
	NSNumber *oldValue = _translateY;
	_translateY = translateY;
	[self updateNSObject:oldValue newValue:translateY propertyName:@"translateY"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	NSNumber *oldValue = _zIndex;
	_zIndex = zIndex;
	[self updateNSObject:oldValue newValue:zIndex propertyName:@"zIndex"];
}

@end