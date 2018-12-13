#import "HIChartsJSONSerializableSubclass.h"
#import "HIAnnotations.h"

@implementation HIAnnotations

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIAnnotations *copyAnnotations = [[HIAnnotations allocWithZone: zone] init];
	copyAnnotations.zIndex = [self.zIndex copyWithZone: zone];
	copyAnnotations.visible = [self.visible copyWithZone: zone];
	copyAnnotations.labelOptions = [self.labelOptions copyWithZone: zone];
	copyAnnotations.labels = [self.labels copyWithZone: zone];
	copyAnnotations.shapes = [self.shapes copyWithZone: zone];
	copyAnnotations.base = [self.base copyWithZone: zone];
	copyAnnotations.shapeOptions = [self.shapeOptions copyWithZone: zone];
	copyAnnotations.id = [self.id copyWithZone: zone];
	return copyAnnotations;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.labelOptions) {
		params[@"labelOptions"] = [self.labelOptions getParams];
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
	if (self.base) {
		params[@"base"] = [self.base getParams];
	}
	if (self.shapeOptions) {
		params[@"shapeOptions"] = [self.shapeOptions getParams];
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	return params;
}

# pragma mark - Setters

-(void)setZIndex:(NSNumber *)zIndex {
	_zIndex = zIndex;
	[self updateNSObject:@"zIndex"];
}

-(void)setVisible:(NSNumber *)visible {
	_visible = visible;
	[self updateNSObject:@"visible"];
}

-(void)setLabelOptions:(HILabelOptions *)labelOptions {
	HILabelOptions *oldValue = _labelOptions;
	if(self.labelOptions) {
		[self removeObserver:self forKeyPath:@"labelOptions.isUpdated"];
	}
	_labelOptions = labelOptions;
	[self updateHIObject:oldValue newValue:labelOptions propertyName:@"labelOptions"];
}

-(void)setLabels:(NSArray <HILabels *> *)labels {
	NSArray <HILabels *> *oldValue = _labels;
	_labels = labels;
	[self updateArrayObject:oldValue newValue:labels propertyName:@"labels"];
}

-(void)setShapes:(NSArray <HIShapes *> *)shapes {
	NSArray <HIShapes *> *oldValue = _shapes;
	_shapes = shapes;
	[self updateArrayObject:oldValue newValue:shapes propertyName:@"shapes"];
}

-(void)setBase:(HIBase *)base {
	HIBase *oldValue = _base;
	if(self.base) {
		[self removeObserver:self forKeyPath:@"base.isUpdated"];
	}
	_base = base;
	[self updateHIObject:oldValue newValue:base propertyName:@"base"];
}

-(void)setShapeOptions:(HIShapeOptions *)shapeOptions {
	HIShapeOptions *oldValue = _shapeOptions;
	if(self.shapeOptions) {
		[self removeObserver:self forKeyPath:@"shapeOptions.isUpdated"];
	}
	_shapeOptions = shapeOptions;
	[self updateHIObject:oldValue newValue:shapeOptions propertyName:@"shapeOptions"];
}

-(void)setId:(NSString *)id {
	_id = id;
	[self updateNSObject:@"id"];
}

@end