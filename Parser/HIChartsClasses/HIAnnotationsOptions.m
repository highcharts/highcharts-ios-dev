#import "HIChartsJSONSerializableSubclass.h"
#import "HIAnnotationsOptions.h"

@implementation HIAnnotationsOptions

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIAnnotationsOptions *copyAnnotationsOptions = [[HIAnnotationsOptions allocWithZone: zone] init];
	copyAnnotationsOptions.shapes = [self.shapes copyWithZone: zone];
	copyAnnotationsOptions.shapeOptions = [self.shapeOptions copyWithZone: zone];
	copyAnnotationsOptions.zIndex = [self.zIndex copyWithZone: zone];
	copyAnnotationsOptions.visible = [self.visible copyWithZone: zone];
	copyAnnotationsOptions.labels = [self.labels copyWithZone: zone];
	copyAnnotationsOptions.labelOptions = [self.labelOptions copyWithZone: zone];
	copyAnnotationsOptions.events = [self.events copyWithZone: zone];
	copyAnnotationsOptions.draggable = [self.draggable copyWithZone: zone];
	copyAnnotationsOptions.id = [self.id copyWithZone: zone];
	return copyAnnotationsOptions;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
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
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
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
	if (self.labelOptions) {
		params[@"labelOptions"] = [self.labelOptions getParams];
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.draggable) {
		params[@"draggable"] = self.draggable;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	return params;
}

# pragma mark - Setters

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

-(void)setZIndex:(NSNumber *)zIndex {
	NSNumber *oldValue = _zIndex;
	_zIndex = zIndex;
	[self updateNSObject:oldValue newValue:zIndex propertyName:@"zIndex"];
}

-(void)setVisible:(NSNumber *)visible {
	NSNumber *oldValue = _visible;
	_visible = visible;
	[self updateNSObject:oldValue newValue:visible propertyName:@"visible"];
}

-(void)setLabels:(NSArray <HILabels *> *)labels {
	NSArray <HILabels *> *oldValue = _labels;
	_labels = labels;
	[self updateArrayObject:oldValue newValue:labels propertyName:@"labels"];
}

-(void)setLabelOptions:(HILabelOptions *)labelOptions {
	HILabelOptions *oldValue = _labelOptions;
	_labelOptions = labelOptions;
	[self updateHIObject:oldValue newValue:labelOptions propertyName:@"labelOptions"];
}

-(void)setEvents:(HIEvents *)events {
	HIEvents *oldValue = _events;
	_events = events;
	[self updateHIObject:oldValue newValue:events propertyName:@"events"];
}

-(void)setDraggable:(NSString *)draggable {
	NSString *oldValue = _draggable;
	_draggable = draggable;
	[self updateNSObject:oldValue newValue:draggable propertyName:@"draggable"];
}

-(void)setId:(NSString *)id {
	NSString *oldValue = _id;
	_id = id;
	[self updateNSObject:oldValue newValue:id propertyName:@"id"];
}

@end