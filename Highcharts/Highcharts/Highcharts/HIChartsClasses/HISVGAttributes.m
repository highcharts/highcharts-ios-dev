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
	copySVGAttributes.inverted = [self.inverted copyWithZone: zone];
	copySVGAttributes.matrix = [self.matrix copyWithZone: zone];
	copySVGAttributes.rotation = [self.rotation copyWithZone: zone];
	copySVGAttributes.rotationOriginX = [self.rotationOriginX copyWithZone: zone];
	copySVGAttributes.rotationOriginY = [self.rotationOriginY copyWithZone: zone];
	copySVGAttributes.scaleX = [self.scaleX copyWithZone: zone];
	copySVGAttributes.scaleY = [self.scaleY copyWithZone: zone];
	copySVGAttributes.stroke = [self.stroke copyWithZone: zone];
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
		params[@"stroke"] = self.stroke;
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

-(void)setInverted:(NSNumber *)inverted {
	_inverted = inverted;
	[self updateNSObject:@"inverted"];
}

-(void)setMatrix:(NSArray<NSNumber *> *)matrix {
	NSArray<NSNumber *> *oldValue = _matrix;
	_matrix = matrix;
	[self updateArrayObject:oldValue newValue:matrix propertyName:@"matrix"];
}

-(void)setRotation:(NSString *)rotation {
	_rotation = rotation;
	[self updateNSObject:@"rotation"];
}

-(void)setRotationOriginX:(NSNumber *)rotationOriginX {
	_rotationOriginX = rotationOriginX;
	[self updateNSObject:@"rotationOriginX"];
}

-(void)setRotationOriginY:(NSNumber *)rotationOriginY {
	_rotationOriginY = rotationOriginY;
	[self updateNSObject:@"rotationOriginY"];
}

-(void)setScaleX:(NSNumber *)scaleX {
	_scaleX = scaleX;
	[self updateNSObject:@"scaleX"];
}

-(void)setScaleY:(NSNumber *)scaleY {
	_scaleY = scaleY;
	[self updateNSObject:@"scaleY"];
}

-(void)setStroke:(NSString *)stroke {
	_stroke = stroke;
	[self updateNSObject:@"stroke"];
}

-(void)setTranslateX:(NSNumber *)translateX {
	_translateX = translateX;
	[self updateNSObject:@"translateX"];
}

-(void)setTranslateY:(NSNumber *)translateY {
	_translateY = translateY;
	[self updateNSObject:@"translateY"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	_zIndex = zIndex;
	[self updateNSObject:@"zIndex"];
}

@end