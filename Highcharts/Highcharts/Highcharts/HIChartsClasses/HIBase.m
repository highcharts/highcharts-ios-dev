#import "HIChartsJSONSerializableSubclass.h"
#import "HIBase.h"

@implementation HIBase

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIBase *copyBase = [[HIBase allocWithZone: zone] init];
	copyBase.controlPointOptions = [self.controlPointOptions copyWithZone: zone];
	copyBase.shapes = [self.shapes copyWithZone: zone];
	copyBase.zIndex = [self.zIndex copyWithZone: zone];
	copyBase.labels = [self.labels copyWithZone: zone];
	copyBase.labelOptions = [self.labelOptions copyWithZone: zone];
	copyBase.draggable = [self.draggable copyWithZone: zone];
	copyBase.visible = [self.visible copyWithZone: zone];
	copyBase.shapeOptions = [self.shapeOptions copyWithZone: zone];
	copyBase.events = [self.events copyWithZone: zone];
	return copyBase;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.controlPointOptions) {
		params[@"controlPointOptions"] = [self.controlPointOptions getParams];
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
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
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
	if (self.draggable) {
		params[@"draggable"] = self.draggable;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.shapeOptions) {
		params[@"shapeOptions"] = [self.shapeOptions getParams];
	}
	if (self.events) {
		params[@"events"] = self.events;
	}
	return params;
}

# pragma mark - Setters

-(void)setControlPointOptions:(HIControlPointOptions *)controlPointOptions {
	HIControlPointOptions *oldValue = _controlPointOptions;
	if(self.controlPointOptions) {
		[self removeObserver:self forKeyPath:@"controlPointOptions.isUpdated"];
	}
	_controlPointOptions = controlPointOptions;
	[self updateHIObject:oldValue newValue:controlPointOptions propertyName:@"controlPointOptions"];
}

-(void)setShapes:(NSArray <HIShapes *> *)shapes {
	NSArray <HIShapes *> *oldValue = _shapes;
	_shapes = shapes;
	[self updateArrayObject:oldValue newValue:shapes propertyName:@"shapes"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	_zIndex = zIndex;
	[self updateNSObject:@"zIndex"];
}

-(void)setLabels:(NSArray <HILabels *> *)labels {
	NSArray <HILabels *> *oldValue = _labels;
	_labels = labels;
	[self updateArrayObject:oldValue newValue:labels propertyName:@"labels"];
}

-(void)setLabelOptions:(HILabelOptions *)labelOptions {
	HILabelOptions *oldValue = _labelOptions;
	if(self.labelOptions) {
		[self removeObserver:self forKeyPath:@"labelOptions.isUpdated"];
	}
	_labelOptions = labelOptions;
	[self updateHIObject:oldValue newValue:labelOptions propertyName:@"labelOptions"];
}

-(void)setDraggable:(NSString *)draggable {
	_draggable = draggable;
	[self updateNSObject:@"draggable"];
}

-(void)setVisible:(NSNumber *)visible {
	_visible = visible;
	[self updateNSObject:@"visible"];
}

-(void)setShapeOptions:(HIShapeOptions *)shapeOptions {
	HIShapeOptions *oldValue = _shapeOptions;
	if(self.shapeOptions) {
		[self removeObserver:self forKeyPath:@"shapeOptions.isUpdated"];
	}
	_shapeOptions = shapeOptions;
	[self updateHIObject:oldValue newValue:shapeOptions propertyName:@"shapeOptions"];
}

-(void)setEvents:(id)events {
	_events = events;
	[self updateNSObject:@"events"];
}

@end