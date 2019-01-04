#import "HIChartsJSONSerializableSubclass.h"
#import "HIShapes.h"

@implementation HIShapes

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIShapes *copyShapes = [[HIShapes allocWithZone: zone] init];
	copyShapes.points = [self.points copyWithZone: zone];
	copyShapes.markerEnd = [self.markerEnd copyWithZone: zone];
	copyShapes.markerStart = [self.markerStart copyWithZone: zone];
	copyShapes.point = [self.point copyWithZone: zone];
	copyShapes.strokeWidth = [self.strokeWidth copyWithZone: zone];
	copyShapes.height = [self.height copyWithZone: zone];
	copyShapes.width = [self.width copyWithZone: zone];
	copyShapes.stroke = [self.stroke copyWithZone: zone];
	copyShapes.r = [self.r copyWithZone: zone];
	copyShapes.type = [self.type copyWithZone: zone];
	copyShapes.fill = [self.fill copyWithZone: zone];
	return copyShapes;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.points) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.points) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"points"] = array;
	}
	if (self.markerEnd) {
		params[@"markerEnd"] = self.markerEnd;
	}
	if (self.markerStart) {
		params[@"markerStart"] = self.markerStart;
	}
	if (self.point) {
		params[@"point"] = [self.point getParams];
	}
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
	return params;
}

# pragma mark - Setters

-(void)setPoints:(NSArray <HIPoints *> *)points {
	NSArray <HIPoints *> *oldValue = _points;
	_points = points;
	[self updateArrayObject:oldValue newValue:points propertyName:@"points"];
}

-(void)setMarkerEnd:(NSString *)markerEnd {
	_markerEnd = markerEnd;
	[self updateNSObject:@"markerEnd"];
}

-(void)setMarkerStart:(NSString *)markerStart {
	_markerStart = markerStart;
	[self updateNSObject:@"markerStart"];
}

-(void)setPoint:(HIPoint *)point {
	HIPoint *oldValue = _point;
	if(self.point) {
		[self removeObserver:self forKeyPath:@"point.isUpdated"];
	}
	_point = point;
	[self updateHIObject:oldValue newValue:point propertyName:@"point"];
}

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

@end