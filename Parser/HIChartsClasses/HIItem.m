#import "HIChartsJSONSerializableSubclass.h"
#import "HIItem.h"

@implementation HIItem

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"item";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIItem *copyItem = [[HIItem allocWithZone: zone] init];
	copyItem.innerSize = [self.innerSize copyWithZone: zone];
	copyItem.rows = [self.rows copyWithZone: zone];
	copyItem.layout = [self.layout copyWithZone: zone];
	copyItem.itemPadding = [self.itemPadding copyWithZone: zone];
	copyItem.endAngle = [self.endAngle copyWithZone: zone];
	copyItem.startAngle = [self.startAngle copyWithZone: zone];
	copyItem.marker = [self.marker copyWithZone: zone];
	copyItem.crisp = [self.crisp copyWithZone: zone];
	copyItem.showInLegend = [self.showInLegend copyWithZone: zone];
	copyItem.ignoreHiddenPoint = [self.ignoreHiddenPoint copyWithZone: zone];
	copyItem.clip = [self.clip copyWithZone: zone];
	copyItem.point = [self.point copyWithZone: zone];
	copyItem.color = [self.color copyWithZone: zone];
	copyItem.states = [self.states copyWithZone: zone];
	copyItem.colors = [self.colors copyWithZone: zone];
	copyItem.size = [self.size copyWithZone: zone];
	copyItem.borderColor = [self.borderColor copyWithZone: zone];
	copyItem.tooltip = [self.tooltip copyWithZone: zone];
	copyItem.thickness = [self.thickness copyWithZone: zone];
	copyItem.minSize = [self.minSize copyWithZone: zone];
	copyItem.fillColor = [self.fillColor copyWithZone: zone];
	copyItem.events = [self.events copyWithZone: zone];
	copyItem.center = [self.center copyWithZone: zone];
	copyItem.slicedOffset = [self.slicedOffset copyWithZone: zone];
	copyItem.dataLabels = [self.dataLabels copyWithZone: zone];
	copyItem.depth = [self.depth copyWithZone: zone];
	copyItem.borderWidth = [self.borderWidth copyWithZone: zone];
	copyItem.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyItem.linecap = [self.linecap copyWithZone: zone];
	copyItem.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyItem.colorIndex = [self.colorIndex copyWithZone: zone];
	copyItem.negativeColor = [self.negativeColor copyWithZone: zone];
	copyItem.pointInterval = [self.pointInterval copyWithZone: zone];
	copyItem.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyItem.colorKey = [self.colorKey copyWithZone: zone];
	copyItem.softThreshold = [self.softThreshold copyWithZone: zone];
	copyItem.dragDrop = [self.dragDrop copyWithZone: zone];
	copyItem.dataSorting = [self.dataSorting copyWithZone: zone];
	copyItem.label = [self.label copyWithZone: zone];
	copyItem.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyItem.cursor = [self.cursor copyWithZone: zone];
	copyItem.dashStyle = [self.dashStyle copyWithZone: zone];
	copyItem.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyItem.connectNulls = [self.connectNulls copyWithZone: zone];
	copyItem.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyItem.custom = [self.custom copyWithZone: zone];
	copyItem.onPoint = [self.onPoint copyWithZone: zone];
	copyItem.stacking = [self.stacking copyWithZone: zone];
	copyItem.animation = [self.animation copyWithZone: zone];
	copyItem.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyItem.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyItem.threshold = [self.threshold copyWithZone: zone];
	copyItem.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyItem.boostBlending = [self.boostBlending copyWithZone: zone];
	copyItem.opacity = [self.opacity copyWithZone: zone];
	copyItem.animationLimit = [self.animationLimit copyWithZone: zone];
	copyItem.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyItem.definition = [self.definition copyWithZone: zone];
	copyItem.keys = [self.keys copyWithZone: zone];
	copyItem.selected = [self.selected copyWithZone: zone];
	copyItem.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyItem.accessibility = [self.accessibility copyWithZone: zone];
	copyItem.step = [self.step copyWithZone: zone];
	copyItem.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyItem.shadow = [self.shadow copyWithZone: zone];
	copyItem.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyItem.colorAxis = [self.colorAxis copyWithZone: zone];
	copyItem.zones = [self.zones copyWithZone: zone];
	copyItem.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyItem.lineWidth = [self.lineWidth copyWithZone: zone];
	copyItem.visible = [self.visible copyWithZone: zone];
	copyItem.linkedTo = [self.linkedTo copyWithZone: zone];
	copyItem.dataAsColumns = [self.dataAsColumns copyWithZone: zone];
	copyItem.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyItem.className = [self.className copyWithZone: zone];
	copyItem.pointStart = [self.pointStart copyWithZone: zone];
	copyItem.connectEnds = [self.connectEnds copyWithZone: zone];
	copyItem.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copyItem.data = [self.data copyWithZone: zone];
	copyItem.id = [self.id copyWithZone: zone];
	copyItem.index = [self.index copyWithZone: zone];
	copyItem.legendIndex = [self.legendIndex copyWithZone: zone];
	copyItem.name = [self.name copyWithZone: zone];
	copyItem.stack = [self.stack copyWithZone: zone];
	copyItem.type = [self.type copyWithZone: zone];
	copyItem.xAxis = [self.xAxis copyWithZone: zone];
	copyItem.yAxis = [self.yAxis copyWithZone: zone];
	copyItem.zIndex = [self.zIndex copyWithZone: zone];
	return copyItem;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.innerSize) {
		params[@"innerSize"] = self.innerSize;
	}
	if (self.rows) {
		params[@"rows"] = self.rows;
	}
	if (self.layout) {
		params[@"layout"] = self.layout;
	}
	if (self.itemPadding) {
		params[@"itemPadding"] = self.itemPadding;
	}
	if (self.endAngle) {
		params[@"endAngle"] = self.endAngle;
	}
	if (self.startAngle) {
		params[@"startAngle"] = self.startAngle;
	}
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

-(void)setInnerSize:(id)innerSize {
	id oldValue = _innerSize;
	_innerSize = innerSize;
	[self updateNSObject:oldValue newValue:innerSize propertyName:@"innerSize"];
}

-(void)setRows:(NSNumber *)rows {
	NSNumber *oldValue = _rows;
	_rows = rows;
	[self updateNSObject:oldValue newValue:rows propertyName:@"rows"];
}

-(void)setLayout:(NSString *)layout {
	NSString *oldValue = _layout;
	_layout = layout;
	[self updateNSObject:oldValue newValue:layout propertyName:@"layout"];
}

-(void)setItemPadding:(NSNumber *)itemPadding {
	NSNumber *oldValue = _itemPadding;
	_itemPadding = itemPadding;
	[self updateNSObject:oldValue newValue:itemPadding propertyName:@"itemPadding"];
}

-(void)setEndAngle:(NSNumber *)endAngle {
	NSNumber *oldValue = _endAngle;
	_endAngle = endAngle;
	[self updateNSObject:oldValue newValue:endAngle propertyName:@"endAngle"];
}

-(void)setStartAngle:(NSNumber *)startAngle {
	NSNumber *oldValue = _startAngle;
	_startAngle = startAngle;
	[self updateNSObject:oldValue newValue:startAngle propertyName:@"startAngle"];
}

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