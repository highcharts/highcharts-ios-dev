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
	copyVariablepie.ignoreHiddenPoint = [self.ignoreHiddenPoint copyWithZone: zone];
	copyVariablepie.clip = [self.clip copyWithZone: zone];
	copyVariablepie.point = [self.point copyWithZone: zone];
	copyVariablepie.borderRadius = [self.borderRadius copyWithZone: zone];
	copyVariablepie.states = [self.states copyWithZone: zone];
	copyVariablepie.colors = [self.colors copyWithZone: zone];
	copyVariablepie.size = [self.size copyWithZone: zone];
	copyVariablepie.borderColor = [self.borderColor copyWithZone: zone];
	copyVariablepie.thickness = [self.thickness copyWithZone: zone];
	copyVariablepie.minSize = [self.minSize copyWithZone: zone];
	copyVariablepie.color = [self.color copyWithZone: zone];
	copyVariablepie.fillColor = [self.fillColor copyWithZone: zone];
	copyVariablepie.startAngle = [self.startAngle copyWithZone: zone];
	copyVariablepie.events = [self.events copyWithZone: zone];
	copyVariablepie.endAngle = [self.endAngle copyWithZone: zone];
	copyVariablepie.innerSize = [self.innerSize copyWithZone: zone];
	copyVariablepie.center = [self.center copyWithZone: zone];
	copyVariablepie.slicedOffset = [self.slicedOffset copyWithZone: zone];
	copyVariablepie.dataLabels = [self.dataLabels copyWithZone: zone];
	copyVariablepie.depth = [self.depth copyWithZone: zone];
	copyVariablepie.borderWidth = [self.borderWidth copyWithZone: zone];
	copyVariablepie.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyVariablepie.showInLegend = [self.showInLegend copyWithZone: zone];
	copyVariablepie.linecap = [self.linecap copyWithZone: zone];
	copyVariablepie.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyVariablepie.colorIndex = [self.colorIndex copyWithZone: zone];
	copyVariablepie.colorKey = [self.colorKey copyWithZone: zone];
	copyVariablepie.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyVariablepie.cursor = [self.cursor copyWithZone: zone];
	copyVariablepie.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyVariablepie.custom = [self.custom copyWithZone: zone];
	copyVariablepie.onPoint = [self.onPoint copyWithZone: zone];
	copyVariablepie.animation = [self.animation copyWithZone: zone];
	copyVariablepie.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyVariablepie.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyVariablepie.legendSymbol = [self.legendSymbol copyWithZone: zone];
	copyVariablepie.pointDescriptionFormat = [self.pointDescriptionFormat copyWithZone: zone];
	copyVariablepie.opacity = [self.opacity copyWithZone: zone];
	copyVariablepie.definition = [self.definition copyWithZone: zone];
	copyVariablepie.keys = [self.keys copyWithZone: zone];
	copyVariablepie.selected = [self.selected copyWithZone: zone];
	copyVariablepie.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyVariablepie.accessibility = [self.accessibility copyWithZone: zone];
	copyVariablepie.sonification = [self.sonification copyWithZone: zone];
	copyVariablepie.shadow = [self.shadow copyWithZone: zone];
	copyVariablepie.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyVariablepie.colorAxis = [self.colorAxis copyWithZone: zone];
	copyVariablepie.crisp = [self.crisp copyWithZone: zone];
	copyVariablepie.visible = [self.visible copyWithZone: zone];
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
	if (self.ignoreHiddenPoint) {
		params[@"ignoreHiddenPoint"] = self.ignoreHiddenPoint;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = [self.borderRadius getParams];
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.size) {
		params[@"size"] = self.size;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.thickness) {
		params[@"thickness"] = self.thickness;
	}
	if (self.minSize) {
		params[@"minSize"] = self.minSize;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.startAngle) {
		params[@"startAngle"] = self.startAngle;
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
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	return params;
}

# pragma mark - Setters

-(void)setZMax:(NSNumber *)zMax {
	NSNumber *oldValue = _zMax;
	_zMax = zMax;
	[self updateNSObject:oldValue newValue:zMax propertyName:@"zMax"];
}

-(void)setMinPointSize:(id)minPointSize {
	id oldValue = _minPointSize;
	_minPointSize = minPointSize;
	[self updateNSObject:oldValue newValue:minPointSize propertyName:@"minPointSize"];
}

-(void)setSizeBy:(NSString *)sizeBy {
	NSString *oldValue = _sizeBy;
	_sizeBy = sizeBy;
	[self updateNSObject:oldValue newValue:sizeBy propertyName:@"sizeBy"];
}

-(void)setZMin:(NSNumber *)zMin {
	NSNumber *oldValue = _zMin;
	_zMin = zMin;
	[self updateNSObject:oldValue newValue:zMin propertyName:@"zMin"];
}

-(void)setMaxPointSize:(id)maxPointSize {
	id oldValue = _maxPointSize;
	_maxPointSize = maxPointSize;
	[self updateNSObject:oldValue newValue:maxPointSize propertyName:@"maxPointSize"];
}

-(void)setIgnoreHiddenPoint:(NSNumber *)ignoreHiddenPoint {
	NSNumber *oldValue = _ignoreHiddenPoint;
	_ignoreHiddenPoint = ignoreHiddenPoint;
	[self updateNSObject:oldValue newValue:ignoreHiddenPoint propertyName:@"ignoreHiddenPoint"];
}

-(void)setBorderRadius:(HIBorderRadiusOptionsObject *)borderRadius {
	HIBorderRadiusOptionsObject *oldValue = _borderRadius;
	_borderRadius = borderRadius;
	[self updateHIObject:oldValue newValue:borderRadius propertyName:@"borderRadius"];
}

-(void)setColors:(NSArray<HIColor *> *)colors {
	NSArray<HIColor *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
}

-(void)setSize:(id)size {
	id oldValue = _size;
	_size = size;
	[self updateNSObject:oldValue newValue:size propertyName:@"size"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setThickness:(NSNumber *)thickness {
	NSNumber *oldValue = _thickness;
	_thickness = thickness;
	[self updateNSObject:oldValue newValue:thickness propertyName:@"thickness"];
}

-(void)setMinSize:(id)minSize {
	id oldValue = _minSize;
	_minSize = minSize;
	[self updateNSObject:oldValue newValue:minSize propertyName:@"minSize"];
}

-(void)setFillColor:(HIColor *)fillColor {
	HIColor *oldValue = _fillColor;
	_fillColor = fillColor;
	[self updateHIObject:oldValue newValue:fillColor propertyName:@"fillColor"];
}

-(void)setStartAngle:(NSNumber *)startAngle {
	NSNumber *oldValue = _startAngle;
	_startAngle = startAngle;
	[self updateNSObject:oldValue newValue:startAngle propertyName:@"startAngle"];
}

-(void)setEndAngle:(NSNumber *)endAngle {
	NSNumber *oldValue = _endAngle;
	_endAngle = endAngle;
	[self updateNSObject:oldValue newValue:endAngle propertyName:@"endAngle"];
}

-(void)setInnerSize:(id)innerSize {
	id oldValue = _innerSize;
	_innerSize = innerSize;
	[self updateNSObject:oldValue newValue:innerSize propertyName:@"innerSize"];
}

-(void)setCenter:(NSArray *)center {
	NSArray *oldValue = _center;
	_center = center;
	[self updateArrayObject:oldValue newValue:center propertyName:@"center"];
}

-(void)setSlicedOffset:(NSNumber *)slicedOffset {
	NSNumber *oldValue = _slicedOffset;
	_slicedOffset = slicedOffset;
	[self updateNSObject:oldValue newValue:slicedOffset propertyName:@"slicedOffset"];
}

-(void)setDepth:(NSNumber *)depth {
	NSNumber *oldValue = _depth;
	_depth = depth;
	[self updateNSObject:oldValue newValue:depth propertyName:@"depth"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	NSNumber *oldValue = _borderWidth;
	_borderWidth = borderWidth;
	[self updateNSObject:oldValue newValue:borderWidth propertyName:@"borderWidth"];
}

@end