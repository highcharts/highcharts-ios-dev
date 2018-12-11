#import "HIChartsJSONSerializableSubclass.h"
#import "HIAnnotations.h"

@implementation HIAnnotations

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIAnnotations *copyAnnotations = [[HIAnnotations allocWithZone: zone] init];
	copyAnnotations.shapes = [self.shapes copyWithZone: zone];
	copyAnnotations.labels = [self.labels copyWithZone: zone];
	copyAnnotations.labelOptions = [self.labelOptions copyWithZone: zone];
	copyAnnotations.zIndex = [self.zIndex copyWithZone: zone];
	copyAnnotations.visible = [self.visible copyWithZone: zone];
	copyAnnotations.shapeOptions = [self.shapeOptions copyWithZone: zone];
	return copyAnnotations;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
    params[@"_wrapperID"] = self.uuid;
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
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.shapeOptions) {
		params[@"shapeOptions"] = [self.shapeOptions getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setShapes:(NSArray <HIShapes *> *)shapes {
	NSArray <HIShapes *> *oldValue = _shapes;
	_shapes = shapes;
	[self updateArrayObject:oldValue newValue:shapes propertyName:@"shapes"];
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

-(void)setShapeOptions:(HIShapeOptions *)shapeOptions {
	HIShapeOptions *oldValue = _shapeOptions;
	_shapeOptions = shapeOptions;
	[self updateHIObject:oldValue newValue:shapeOptions propertyName:@"shapeOptions"];
}

-(void)destroy {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"destroy", @"id" : self.uuid };
}

-(void)redraw {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"redraw", @"id" : self.uuid };
}

-(void)render {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"render", @"id" : self.uuid };
}

- (void)setVisibility {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"setVisible0", @"id" : self.uuid };
}

-(void)setVisibility:(NSNumber *)visibility {
    self.jsClassMethod = @{ @"class" : @"Annotation", @"method" : @"setVisible1", @"id" : self.uuid, @"params" : @[visibility] };
}

@end
