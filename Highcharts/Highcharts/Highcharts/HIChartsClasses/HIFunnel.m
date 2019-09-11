#import "HIChartsJSONSerializableSubclass.h"
#import "HIFunnel.h"

@implementation HIFunnel

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"funnel";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIFunnel *copyFunnel = [[HIFunnel allocWithZone: zone] init];
	copyFunnel.data = [self.data copyWithZone: zone];
	copyFunnel.id = [self.id copyWithZone: zone];
	copyFunnel.index = [self.index copyWithZone: zone];
	copyFunnel.legendIndex = [self.legendIndex copyWithZone: zone];
	copyFunnel.name = [self.name copyWithZone: zone];
	copyFunnel.type = [self.type copyWithZone: zone];
	copyFunnel.zIndex = [self.zIndex copyWithZone: zone];
	copyFunnel.center = [self.center copyWithZone: zone];
	copyFunnel.reversed = [self.reversed copyWithZone: zone];
	copyFunnel.neckWidth = [self.neckWidth copyWithZone: zone];
	copyFunnel.height = [self.height copyWithZone: zone];
	copyFunnel.states = [self.states copyWithZone: zone];
	copyFunnel.width = [self.width copyWithZone: zone];
	copyFunnel.animation = [self.animation copyWithZone: zone];
	copyFunnel.neckHeight = [self.neckHeight copyWithZone: zone];
	copyFunnel.ignoreHiddenPoint = [self.ignoreHiddenPoint copyWithZone: zone];
	copyFunnel.clip = [self.clip copyWithZone: zone];
	copyFunnel.point = [self.point copyWithZone: zone];
	copyFunnel.color = [self.color copyWithZone: zone];
	copyFunnel.colors = [self.colors copyWithZone: zone];
	copyFunnel.borderColor = [self.borderColor copyWithZone: zone];
	copyFunnel.tooltip = [self.tooltip copyWithZone: zone];
	copyFunnel.minSize = [self.minSize copyWithZone: zone];
	copyFunnel.fillColor = [self.fillColor copyWithZone: zone];
	copyFunnel.startAngle = [self.startAngle copyWithZone: zone];
	copyFunnel.events = [self.events copyWithZone: zone];
	copyFunnel.endAngle = [self.endAngle copyWithZone: zone];
	copyFunnel.slicedOffset = [self.slicedOffset copyWithZone: zone];
	copyFunnel.dataLabels = [self.dataLabels copyWithZone: zone];
	copyFunnel.depth = [self.depth copyWithZone: zone];
	copyFunnel.borderWidth = [self.borderWidth copyWithZone: zone];
	copyFunnel.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyFunnel.showInLegend = [self.showInLegend copyWithZone: zone];
	copyFunnel.linecap = [self.linecap copyWithZone: zone];
	copyFunnel.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyFunnel.selected = [self.selected copyWithZone: zone];
	copyFunnel.colorIndex = [self.colorIndex copyWithZone: zone];
	copyFunnel.colorKey = [self.colorKey copyWithZone: zone];
	copyFunnel.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyFunnel.cursor = [self.cursor copyWithZone: zone];
	copyFunnel.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyFunnel.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyFunnel.boostBlending = [self.boostBlending copyWithZone: zone];
	copyFunnel.opacity = [self.opacity copyWithZone: zone];
	copyFunnel.definition = [self.definition copyWithZone: zone];
	copyFunnel.keys = [self.keys copyWithZone: zone];
	copyFunnel.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyFunnel.accessibility = [self.accessibility copyWithZone: zone];
	copyFunnel.shadow = [self.shadow copyWithZone: zone];
	copyFunnel.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyFunnel.colorAxis = [self.colorAxis copyWithZone: zone];
	copyFunnel.visible = [self.visible copyWithZone: zone];
	copyFunnel.linkedTo = [self.linkedTo copyWithZone: zone];
	copyFunnel.className = [self.className copyWithZone: zone];
	return copyFunnel;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
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
	if (self.reversed) {
		params[@"reversed"] = self.reversed;
	}
	if (self.neckWidth) {
		params[@"neckWidth"] = self.neckWidth;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.neckHeight) {
		params[@"neckHeight"] = self.neckHeight;
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
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
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

-(void)setCenter:(NSArray *)center {
	NSArray *oldValue = _center;
	_center = center;
	[self updateArrayObject:oldValue newValue:center propertyName:@"center"];
}

-(void)setReversed:(NSNumber *)reversed {
	NSNumber *oldValue = _reversed;
	_reversed = reversed;
	[self updateNSObject:oldValue newValue:reversed propertyName:@"reversed"];
}

-(void)setNeckWidth:(id)neckWidth {
	id oldValue = _neckWidth;
	_neckWidth = neckWidth;
	[self updateNSObject:oldValue newValue:neckWidth propertyName:@"neckWidth"];
}

-(void)setHeight:(id)height {
	id oldValue = _height;
	_height = height;
	[self updateNSObject:oldValue newValue:height propertyName:@"height"];
}

-(void)setWidth:(id)width {
	id oldValue = _width;
	_width = width;
	[self updateNSObject:oldValue newValue:width propertyName:@"width"];
}

-(void)setNeckHeight:(id)neckHeight {
	id oldValue = _neckHeight;
	_neckHeight = neckHeight;
	[self updateNSObject:oldValue newValue:neckHeight propertyName:@"neckHeight"];
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

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
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