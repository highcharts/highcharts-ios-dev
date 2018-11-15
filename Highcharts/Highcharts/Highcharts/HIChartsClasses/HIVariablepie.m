#import "HIChartsJSONSerializableSubclass.h"
#import "HIVariablepie.h"

@implementation HIVariablepie

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"variablepie";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIVariablepie *copyVariablepie = [[HIVariablepie allocWithZone: zone] init];
	copyVariablepie.data = [self.data copyWithZone: zone];
	copyVariablepie.id = [self.id copyWithZone: zone];
	copyVariablepie.index = [self.index copyWithZone: zone];
	copyVariablepie.legendIndex = [self.legendIndex copyWithZone: zone];
	copyVariablepie.name = [self.name copyWithZone: zone];
	copyVariablepie.type = [self.type copyWithZone: zone];
	copyVariablepie.zIndex = [self.zIndex copyWithZone: zone];
	copyVariablepie.zMax = [self.zMax copyWithZone: zone];
	copyVariablepie.minPointSize = [self.minPointSize copyWithZone: zone];
	copyVariablepie.sizeBy = [self.sizeBy copyWithZone: zone];
	copyVariablepie.zMin = [self.zMin copyWithZone: zone];
	copyVariablepie.tooltip = [self.tooltip copyWithZone: zone];
	copyVariablepie.maxPointSize = [self.maxPointSize copyWithZone: zone];
	copyVariablepie.borderColor = [self.borderColor copyWithZone: zone];
	copyVariablepie.endAngle = [self.endAngle copyWithZone: zone];
	copyVariablepie.innerSize = [self.innerSize copyWithZone: zone];
	copyVariablepie.center = [self.center copyWithZone: zone];
	copyVariablepie.clip = [self.clip copyWithZone: zone];
	copyVariablepie.point = [self.point copyWithZone: zone];
	copyVariablepie.slicedOffset = [self.slicedOffset copyWithZone: zone];
	copyVariablepie.depth = [self.depth copyWithZone: zone];
	copyVariablepie.dataLabels = [self.dataLabels copyWithZone: zone];
	copyVariablepie.states = [self.states copyWithZone: zone];
	copyVariablepie.colors = [self.colors copyWithZone: zone];
	copyVariablepie.minSize = [self.minSize copyWithZone: zone];
	copyVariablepie.showInLegend = [self.showInLegend copyWithZone: zone];
	copyVariablepie.borderWidth = [self.borderWidth copyWithZone: zone];
	copyVariablepie.legendType = [self.legendType copyWithZone: zone];
	copyVariablepie.startAngle = [self.startAngle copyWithZone: zone];
	copyVariablepie.size = [self.size copyWithZone: zone];
	copyVariablepie.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyVariablepie.events = [self.events copyWithZone: zone];
	copyVariablepie.ignoreHiddenPoint = [self.ignoreHiddenPoint copyWithZone: zone];
	copyVariablepie.linecap = [self.linecap copyWithZone: zone];
	copyVariablepie.selected = [self.selected copyWithZone: zone];
	copyVariablepie.colorIndex = [self.colorIndex copyWithZone: zone];
	copyVariablepie.color = [self.color copyWithZone: zone];
	copyVariablepie.dragDrop = [self.dragDrop copyWithZone: zone];
	copyVariablepie.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyVariablepie.cursor = [self.cursor copyWithZone: zone];
	copyVariablepie.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyVariablepie.label = [self.label copyWithZone: zone];
	copyVariablepie.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyVariablepie.definition = [self.definition copyWithZone: zone];
	copyVariablepie.keys = [self.keys copyWithZone: zone];
	copyVariablepie.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyVariablepie.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyVariablepie.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyVariablepie.shadow = [self.shadow copyWithZone: zone];
	copyVariablepie.animation = [self.animation copyWithZone: zone];
	copyVariablepie.visible = [self.visible copyWithZone: zone];
	copyVariablepie.linkedTo = [self.linkedTo copyWithZone: zone];
	copyVariablepie.className = [self.className copyWithZone: zone];
	return copyVariablepie;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.zMax) {
		params[@"zMax"] = self.zMax;
	}
	if (self.minPointSize) {
		params[@"minPointSize"] = self.minPointSize;
	}
	if (self.sizeBy) {
		params[@"sizeBy"] = self.sizeBy;
	}
	if (self.zMin) {
		params[@"zMin"] = self.zMin;
	}
	if (self.maxPointSize) {
		params[@"maxPointSize"] = self.maxPointSize;
	}
	if (self.endAngle) {
		params[@"endAngle"] = self.endAngle;
	}
	if (self.innerSize) {
		params[@"innerSize"] = self.innerSize;
	}
	if (self.center) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.center) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"center"] = array;
	}
	if (self.slicedOffset) {
		params[@"slicedOffset"] = self.slicedOffset;
	}
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.colors) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"colors"] = array;
	}
	if (self.minSize) {
		params[@"minSize"] = self.minSize;
	}
	if (self.legendType) {
		params[@"legendType"] = self.legendType;
	}
	if (self.startAngle) {
		params[@"startAngle"] = self.startAngle;
	}
	if (self.size) {
		params[@"size"] = self.size;
	}
	if (self.ignoreHiddenPoint) {
		params[@"ignoreHiddenPoint"] = self.ignoreHiddenPoint;
	}
	return params;
}

# pragma mark - Setters

-(void)setZMax:(NSNumber *)zMax {
	_zMax = zMax;
	[self updateNSObject:@"zMax"];
}

-(void)setMinPointSize:(id)minPointSize {
	_minPointSize = minPointSize;
	[self updateNSObject:@"minPointSize"];
}

-(void)setSizeBy:(NSString *)sizeBy {
	_sizeBy = sizeBy;
	[self updateNSObject:@"sizeBy"];
}

-(void)setZMin:(NSNumber *)zMin {
	_zMin = zMin;
	[self updateNSObject:@"zMin"];
}

-(void)setMaxPointSize:(id)maxPointSize {
	_maxPointSize = maxPointSize;
	[self updateNSObject:@"maxPointSize"];
}

-(void)setEndAngle:(NSNumber *)endAngle {
	_endAngle = endAngle;
	[self updateNSObject:@"endAngle"];
}

-(void)setInnerSize:(id)innerSize {
	_innerSize = innerSize;
	[self updateNSObject:@"innerSize"];
}

-(void)setCenter:(NSArray *)center {
	NSArray *oldValue = _center;
	_center = center;
	[self updateArrayObject:oldValue newValue:center propertyName:@"center"];
}

-(void)setSlicedOffset:(NSNumber *)slicedOffset {
	_slicedOffset = slicedOffset;
	[self updateNSObject:@"slicedOffset"];
}

-(void)setDepth:(NSNumber *)depth {
	_depth = depth;
	[self updateNSObject:@"depth"];
}

-(void)setColors:(NSArray<NSString *> *)colors {
	NSArray<NSString *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
}

-(void)setMinSize:(NSNumber *)minSize {
	_minSize = minSize;
	[self updateNSObject:@"minSize"];
}

-(void)setLegendType:(NSString *)legendType {
	_legendType = legendType;
	[self updateNSObject:@"legendType"];
}

-(void)setStartAngle:(NSNumber *)startAngle {
	_startAngle = startAngle;
	[self updateNSObject:@"startAngle"];
}

-(void)setSize:(id)size {
	_size = size;
	[self updateNSObject:@"size"];
}

-(void)setIgnoreHiddenPoint:(NSNumber *)ignoreHiddenPoint {
	_ignoreHiddenPoint = ignoreHiddenPoint;
	[self updateNSObject:@"ignoreHiddenPoint"];
}

@end