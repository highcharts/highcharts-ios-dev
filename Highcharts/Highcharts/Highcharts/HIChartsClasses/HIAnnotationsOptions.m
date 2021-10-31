#import "HIChartsJSONSerializableSubclass.h"
#import "HIAnnotationsOptions.h"

@implementation HIAnnotationsOptions

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIAnnotationsOptions *copyAnnotationsOptions = [[HIAnnotationsOptions allocWithZone: zone] init];
	copyAnnotationsOptions.labels = [self.labels copyWithZone: zone];
	copyAnnotationsOptions.crop = [self.crop copyWithZone: zone];
	copyAnnotationsOptions.visible = [self.visible copyWithZone: zone];
	copyAnnotationsOptions.id = [self.id copyWithZone: zone];
	copyAnnotationsOptions.controlPointOptions = [self.controlPointOptions copyWithZone: zone];
	copyAnnotationsOptions.draggable = [self.draggable copyWithZone: zone];
	copyAnnotationsOptions.animation = [self.animation copyWithZone: zone];
	copyAnnotationsOptions.events = [self.events copyWithZone: zone];
	copyAnnotationsOptions.labelOptions = [self.labelOptions copyWithZone: zone];
	copyAnnotationsOptions.zIndex = [self.zIndex copyWithZone: zone];
	copyAnnotationsOptions.shapes = [self.shapes copyWithZone: zone];
	copyAnnotationsOptions.shapeOptions = [self.shapeOptions copyWithZone: zone];
	return copyAnnotationsOptions;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.labels) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.labels) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"labels"] = array;
	}
	if (self.crop) {
		params[@"crop"] = self.crop;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.controlPointOptions) {
		params[@"controlPointOptions"] = [self.controlPointOptions getParams];
	}
	if (self.draggable) {
		params[@"draggable"] = self.draggable;
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.labelOptions) {
		params[@"labelOptions"] = [self.labelOptions getParams];
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.shapes) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.shapes) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"shapes"] = array;
	}
	if (self.shapeOptions) {
		params[@"shapeOptions"] = [self.shapeOptions getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setLabels:(NSArray <HILabels *> *)labels {
	NSArray <HILabels *> *oldValue = _labels;
	_labels = labels;
	[self updateArrayObject:oldValue newValue:labels propertyName:@"labels"];
}

-(void)setCrop:(NSNumber *)crop {
	NSNumber *oldValue = _crop;
	_crop = crop;
	[self updateNSObject:oldValue newValue:crop propertyName:@"crop"];
}

-(void)setVisible:(NSNumber *)visible {
	NSNumber *oldValue = _visible;
	_visible = visible;
	[self updateNSObject:oldValue newValue:visible propertyName:@"visible"];
}

-(void)setId:(NSString *)id {
	NSString *oldValue = _id;
	_id = id;
	[self updateNSObject:oldValue newValue:id propertyName:@"id"];
}

-(void)setControlPointOptions:(HIControlPointOptions *)controlPointOptions {
	HIControlPointOptions *oldValue = _controlPointOptions;
	_controlPointOptions = controlPointOptions;
	[self updateHIObject:oldValue newValue:controlPointOptions propertyName:@"controlPointOptions"];
}

-(void)setDraggable:(NSString *)draggable {
	NSString *oldValue = _draggable;
	_draggable = draggable;
	[self updateNSObject:oldValue newValue:draggable propertyName:@"draggable"];
}

-(void)setAnimation:(HIAnimationOptionsObject *)animation {
	HIAnimationOptionsObject *oldValue = _animation;
	_animation = animation;
	[self updateHIObject:oldValue newValue:animation propertyName:@"animation"];
}

-(void)setEvents:(HIEvents *)events {
	HIEvents *oldValue = _events;
	_events = events;
	[self updateHIObject:oldValue newValue:events propertyName:@"events"];
}

-(void)setLabelOptions:(HILabelOptions *)labelOptions {
	HILabelOptions *oldValue = _labelOptions;
	_labelOptions = labelOptions;
	[self updateHIObject:oldValue newValue:labelOptions propertyName:@"labelOptions"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	NSNumber *oldValue = _zIndex;
	_zIndex = zIndex;
	[self updateNSObject:oldValue newValue:zIndex propertyName:@"zIndex"];
}

-(void)setShapes:(NSArray <HIShapes *> *)shapes {
	NSArray <HIShapes *> *oldValue = _shapes;
	_shapes = shapes;
	[self updateArrayObject:oldValue newValue:shapes propertyName:@"shapes"];
}

-(void)setShapeOptions:(HIShapeOptions *)shapeOptions {
	HIShapeOptions *oldValue = _shapeOptions;
	_shapeOptions = shapeOptions;
	[self updateHIObject:oldValue newValue:shapeOptions propertyName:@"shapeOptions"];
}

@end
