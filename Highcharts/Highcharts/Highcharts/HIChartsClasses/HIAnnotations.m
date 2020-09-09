#import "HIChartsJSONSerializableSubclass.h"
#import "HIAnnotations.h"

@implementation HIAnnotations

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIAnnotations *copyAnnotations = [[HIAnnotations allocWithZone: zone] init];
	copyAnnotations.controlPointOptions = [self.controlPointOptions copyWithZone: zone];
	copyAnnotations.shapes = [self.shapes copyWithZone: zone];
	copyAnnotations.shapeOptions = [self.shapeOptions copyWithZone: zone];
	copyAnnotations.zIndex = [self.zIndex copyWithZone: zone];
	copyAnnotations.visible = [self.visible copyWithZone: zone];
	copyAnnotations.labels = [self.labels copyWithZone: zone];
	copyAnnotations.labelOptions = [self.labelOptions copyWithZone: zone];
	copyAnnotations.id = [self.id copyWithZone: zone];
	copyAnnotations.draggable = [self.draggable copyWithZone: zone];
	copyAnnotations.animation = [self.animation copyWithZone: zone];
	copyAnnotations.events = [self.events copyWithZone: zone];
	copyAnnotations.descriptionMultiplePoints = [self.descriptionMultiplePoints copyWithZone: zone];
	copyAnnotations.descriptionSinglePoint = [self.descriptionSinglePoint copyWithZone: zone];
	copyAnnotations.descriptionNoPoints = [self.descriptionNoPoints copyWithZone: zone];
	copyAnnotations.heading = [self.heading copyWithZone: zone];
	copyAnnotations.itemDelimiter = [self.itemDelimiter copyWithZone: zone];
	copyAnnotations.join = [self.join copyWithZone: zone];
	return copyAnnotations;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	params[@"_wrapperID"] = self.uuid;
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
	if (self.id) {
		params[@"id"] = self.id;
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
	if (self.descriptionMultiplePoints) {
		params[@"descriptionMultiplePoints"] = self.descriptionMultiplePoints;
	}
	if (self.descriptionSinglePoint) {
		params[@"descriptionSinglePoint"] = self.descriptionSinglePoint;
	}
	if (self.descriptionNoPoints) {
		params[@"descriptionNoPoints"] = self.descriptionNoPoints;
	}
	if (self.heading) {
		params[@"heading"] = self.heading;
	}
	if (self.itemDelimiter) {
		params[@"itemDelimiter"] = self.itemDelimiter;
	}
	if (self.join) {
		params[@"join"] = self.join;
	}
	return params;
}

# pragma mark - Setters

-(void)setControlPointOptions:(HIControlPointOptions *)controlPointOptions {
	HIControlPointOptions *oldValue = _controlPointOptions;
	_controlPointOptions = controlPointOptions;
	[self updateHIObject:oldValue newValue:controlPointOptions propertyName:@"controlPointOptions"];
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

-(void)setId:(NSString *)id {
	NSString *oldValue = _id;
	_id = id;
	[self updateNSObject:oldValue newValue:id propertyName:@"id"];
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

-(void)setDescriptionMultiplePoints:(NSString *)descriptionMultiplePoints {
	NSString *oldValue = _descriptionMultiplePoints;
	_descriptionMultiplePoints = descriptionMultiplePoints;
	[self updateNSObject:oldValue newValue:descriptionMultiplePoints propertyName:@"descriptionMultiplePoints"];
}

-(void)setDescriptionSinglePoint:(NSString *)descriptionSinglePoint {
	NSString *oldValue = _descriptionSinglePoint;
	_descriptionSinglePoint = descriptionSinglePoint;
	[self updateNSObject:oldValue newValue:descriptionSinglePoint propertyName:@"descriptionSinglePoint"];
}

-(void)setDescriptionNoPoints:(NSString *)descriptionNoPoints {
	NSString *oldValue = _descriptionNoPoints;
	_descriptionNoPoints = descriptionNoPoints;
	[self updateNSObject:oldValue newValue:descriptionNoPoints propertyName:@"descriptionNoPoints"];
}

-(void)setHeading:(NSString *)heading {
	NSString *oldValue = _heading;
	_heading = heading;
	[self updateNSObject:oldValue newValue:heading propertyName:@"heading"];
}

-(void)setItemDelimiter:(NSString *)itemDelimiter {
	NSString *oldValue = _itemDelimiter;
	_itemDelimiter = itemDelimiter;
	[self updateNSObject:oldValue newValue:itemDelimiter propertyName:@"itemDelimiter"];
}

-(void)setJoin:(NSNumber *)join {
	NSNumber *oldValue = _join;
	_join = join;
	[self updateNSObject:oldValue newValue:join propertyName:@"join"];
}

- (void)adjustLabelVisibility:(HILabels *)item {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"adjustVisibility", @"id" : self.uuid, @"params" : @[[item getParams]] };
}

- (void)adjustShapeVisibility:(HIShapes *)item {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"adjustVisibility", @"id" : self.uuid, @"params" : @[[item getParams]] };
}

-(void)destroy {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"destroy", @"id" : self.uuid };
}

- (void)destroyLabelItem:(HILabels *)item {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"destroyItem", @"id" : self.uuid, @"params" : @[[item getParams]] };
}

- (void)destroyShapeItem:(HIShapes *)item {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"destroyItem", @"id" : self.uuid, @"params" : @[[item getParams]] };
}

- (void)initLabel:(HILabels *)labelOptions {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"initLabel", @"id" : self.uuid, @"params" : @[[labelOptions getParams]] };
}

- (void)initShape:(HIShapes *)shapeOptions {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"initShape", @"id" : self.uuid, @"params" : @[[shapeOptions getParams]] };
}

- (void)redrawLabelItem:(HILabels *)item {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"redrawItem0", @"id" : self.uuid, @"params" : @[[item getParams]] };
}

- (void)redrawLabelItem:(HILabels *)item animation:(NSNumber *)animation {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"redrawItem1", @"id" : self.uuid, @"params" : @[[item getParams], animation] };
}

- (void)redrawShapeItem:(HIShapes *)item {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"redrawItem0", @"id" : self.uuid, @"params" : @[[item getParams]] };
}

- (void)redrawShapeItem:(HIShapes *)item animation:(NSNumber *)animation {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"redrawItem1", @"id" : self.uuid, @"params" : @[[item getParams], animation] };
}

- (void)redrawLabelItems:(NSArray<HILabels *> *)items {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (id obj in items) {
        if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
            [array addObject:[(HIChartsJSONSerializable *)obj getParams]];
        }
        else {
            [array addObject: obj];
        }
    }
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"redrawItems0", @"id" : self.uuid, @"params" : @[array] };
}

- (void)redrawLabelItems:(NSArray<HILabels *> *)items animation:(NSNumber *)animation {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (id obj in items) {
        if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
            [array addObject:[(HIChartsJSONSerializable *)obj getParams]];
        }
        else {
            [array addObject: obj];
        }
    }
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"redrawItems1", @"id" : self.uuid, @"params" : @[array, animation] };
}

- (void)redrawShapeItems:(NSArray<HIShapes *> *)items {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (id obj in items) {
        if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
            [array addObject:[(HIChartsJSONSerializable *)obj getParams]];
        }
        else {
            [array addObject: obj];
        }
    }
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"redrawItems0", @"id" : self.uuid, @"params" : @[array] };
}

- (void)redrawShapeItems:(NSArray<HIShapes *> *)items animation:(NSNumber *)animation {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (id obj in items) {
        if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
            [array addObject:[(HIChartsJSONSerializable *)obj getParams]];
        }
        else {
            [array addObject: obj];
        }
    }
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"redrawItems1", @"id" : self.uuid, @"params" : @[array, animation] };
}


-(void)remove {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"remove", @"id" : self.uuid };
}

-(void)setOptions {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"setOptions", @"id" : self.uuid };
}

- (void)setVisibility {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"setVisible0", @"id" : self.uuid };
}

-(void)setVisibility:(NSNumber *)visible {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"setVisible1", @"id" : self.uuid, @"params" : @[visible] };
}

@end
