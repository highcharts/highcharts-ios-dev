#import "HIChartsJSONSerializableSubclass.h"
#import "HIPie.h"

@implementation HIPie

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"pie";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPie *copyPie = [[HIPie allocWithZone: zone] init];
	copyPie.ignoreHiddenPoint = [self.ignoreHiddenPoint copyWithZone: zone];
	copyPie.clip = [self.clip copyWithZone: zone];
	copyPie.point = [self.point copyWithZone: zone];
	copyPie.color = [self.color copyWithZone: zone];
	copyPie.states = [self.states copyWithZone: zone];
	copyPie.colors = [self.colors copyWithZone: zone];
	copyPie.size = [self.size copyWithZone: zone];
	copyPie.borderColor = [self.borderColor copyWithZone: zone];
	copyPie.tooltip = [self.tooltip copyWithZone: zone];
	copyPie.thickness = [self.thickness copyWithZone: zone];
	copyPie.minSize = [self.minSize copyWithZone: zone];
	copyPie.fillColor = [self.fillColor copyWithZone: zone];
	copyPie.startAngle = [self.startAngle copyWithZone: zone];
	copyPie.events = [self.events copyWithZone: zone];
	copyPie.endAngle = [self.endAngle copyWithZone: zone];
	copyPie.innerSize = [self.innerSize copyWithZone: zone];
	copyPie.center = [self.center copyWithZone: zone];
	copyPie.slicedOffset = [self.slicedOffset copyWithZone: zone];
	copyPie.dataLabels = [self.dataLabels copyWithZone: zone];
	copyPie.depth = [self.depth copyWithZone: zone];
	copyPie.borderWidth = [self.borderWidth copyWithZone: zone];
	copyPie.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyPie.showInLegend = [self.showInLegend copyWithZone: zone];
	copyPie.linecap = [self.linecap copyWithZone: zone];
	copyPie.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyPie.colorIndex = [self.colorIndex copyWithZone: zone];
	copyPie.colorKey = [self.colorKey copyWithZone: zone];
	copyPie.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyPie.cursor = [self.cursor copyWithZone: zone];
	copyPie.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyPie.custom = [self.custom copyWithZone: zone];
	copyPie.onPoint = [self.onPoint copyWithZone: zone];
	copyPie.animation = [self.animation copyWithZone: zone];
	copyPie.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyPie.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyPie.opacity = [self.opacity copyWithZone: zone];
	copyPie.definition = [self.definition copyWithZone: zone];
	copyPie.keys = [self.keys copyWithZone: zone];
	copyPie.selected = [self.selected copyWithZone: zone];
	copyPie.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyPie.accessibility = [self.accessibility copyWithZone: zone];
	copyPie.shadow = [self.shadow copyWithZone: zone];
	copyPie.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyPie.colorAxis = [self.colorAxis copyWithZone: zone];
	copyPie.crisp = [self.crisp copyWithZone: zone];
	copyPie.visible = [self.visible copyWithZone: zone];
	copyPie.linkedTo = [self.linkedTo copyWithZone: zone];
	copyPie.dataAsColumns = [self.dataAsColumns copyWithZone: zone];
	copyPie.className = [self.className copyWithZone: zone];
	copyPie.data = [self.data copyWithZone: zone];
	copyPie.id = [self.id copyWithZone: zone];
	copyPie.index = [self.index copyWithZone: zone];
	copyPie.legendIndex = [self.legendIndex copyWithZone: zone];
	copyPie.name = [self.name copyWithZone: zone];
	copyPie.type = [self.type copyWithZone: zone];
	copyPie.zIndex = [self.zIndex copyWithZone: zone];
	return copyPie;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.ignoreHiddenPoint) {
		params[@"ignoreHiddenPoint"] = self.ignoreHiddenPoint;
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

-(void)setIgnoreHiddenPoint:(NSNumber *)ignoreHiddenPoint {
	NSNumber *oldValue = _ignoreHiddenPoint;
	_ignoreHiddenPoint = ignoreHiddenPoint;
	[self updateNSObject:oldValue newValue:ignoreHiddenPoint propertyName:@"ignoreHiddenPoint"];
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