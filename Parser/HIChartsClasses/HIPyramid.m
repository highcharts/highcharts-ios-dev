#import "HIChartsJSONSerializableSubclass.h"
#import "HIPyramid.h"

@implementation HIPyramid

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"pyramid";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPyramid *copyPyramid = [[HIPyramid allocWithZone: zone] init];
	copyPyramid.data = [self.data copyWithZone: zone];
	copyPyramid.id = [self.id copyWithZone: zone];
	copyPyramid.index = [self.index copyWithZone: zone];
	copyPyramid.legendIndex = [self.legendIndex copyWithZone: zone];
	copyPyramid.name = [self.name copyWithZone: zone];
	copyPyramid.type = [self.type copyWithZone: zone];
	copyPyramid.zIndex = [self.zIndex copyWithZone: zone];
	copyPyramid.reversed = [self.reversed copyWithZone: zone];
	copyPyramid.neckWidth = [self.neckWidth copyWithZone: zone];
	copyPyramid.neckHeight = [self.neckHeight copyWithZone: zone];
	copyPyramid.center = [self.center copyWithZone: zone];
	copyPyramid.height = [self.height copyWithZone: zone];
	copyPyramid.states = [self.states copyWithZone: zone];
	copyPyramid.width = [self.width copyWithZone: zone];
	copyPyramid.animation = [self.animation copyWithZone: zone];
	copyPyramid.dataLabels = [self.dataLabels copyWithZone: zone];
	copyPyramid.ignoreHiddenPoint = [self.ignoreHiddenPoint copyWithZone: zone];
	copyPyramid.clip = [self.clip copyWithZone: zone];
	copyPyramid.point = [self.point copyWithZone: zone];
	copyPyramid.color = [self.color copyWithZone: zone];
	copyPyramid.colors = [self.colors copyWithZone: zone];
	copyPyramid.borderColor = [self.borderColor copyWithZone: zone];
	copyPyramid.tooltip = [self.tooltip copyWithZone: zone];
	copyPyramid.minSize = [self.minSize copyWithZone: zone];
	copyPyramid.fillColor = [self.fillColor copyWithZone: zone];
	copyPyramid.startAngle = [self.startAngle copyWithZone: zone];
	copyPyramid.events = [self.events copyWithZone: zone];
	copyPyramid.endAngle = [self.endAngle copyWithZone: zone];
	copyPyramid.slicedOffset = [self.slicedOffset copyWithZone: zone];
	copyPyramid.depth = [self.depth copyWithZone: zone];
	copyPyramid.borderWidth = [self.borderWidth copyWithZone: zone];
	copyPyramid.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyPyramid.showInLegend = [self.showInLegend copyWithZone: zone];
	copyPyramid.linecap = [self.linecap copyWithZone: zone];
	copyPyramid.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyPyramid.selected = [self.selected copyWithZone: zone];
	copyPyramid.colorIndex = [self.colorIndex copyWithZone: zone];
	copyPyramid.colorKey = [self.colorKey copyWithZone: zone];
	copyPyramid.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyPyramid.cursor = [self.cursor copyWithZone: zone];
	copyPyramid.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyPyramid.custom = [self.custom copyWithZone: zone];
	copyPyramid.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyPyramid.opacity = [self.opacity copyWithZone: zone];
	copyPyramid.definition = [self.definition copyWithZone: zone];
	copyPyramid.keys = [self.keys copyWithZone: zone];
	copyPyramid.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyPyramid.accessibility = [self.accessibility copyWithZone: zone];
	copyPyramid.shadow = [self.shadow copyWithZone: zone];
	copyPyramid.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyPyramid.colorAxis = [self.colorAxis copyWithZone: zone];
	copyPyramid.crisp = [self.crisp copyWithZone: zone];
	copyPyramid.visible = [self.visible copyWithZone: zone];
	copyPyramid.linkedTo = [self.linkedTo copyWithZone: zone];
	copyPyramid.className = [self.className copyWithZone: zone];
	return copyPyramid;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.reversed) {
		params[@"reversed"] = self.reversed;
	}
	if (self.neckWidth) {
		params[@"neckWidth"] = self.neckWidth;
	}
	if (self.neckHeight) {
		params[@"neckHeight"] = self.neckHeight;
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
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.width) {
		params[@"width"] = self.width;
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

-(void)setReversed:(NSNumber *)reversed {
	NSNumber *oldValue = _reversed;
	_reversed = reversed;
	[self updateNSObject:oldValue newValue:reversed propertyName:@"reversed"];
}

-(void)setNeckWidth:(NSString *)neckWidth {
	NSString *oldValue = _neckWidth;
	_neckWidth = neckWidth;
	[self updateNSObject:oldValue newValue:neckWidth propertyName:@"neckWidth"];
}

-(void)setNeckHeight:(NSString *)neckHeight {
	NSString *oldValue = _neckHeight;
	_neckHeight = neckHeight;
	[self updateNSObject:oldValue newValue:neckHeight propertyName:@"neckHeight"];
}

-(void)setCenter:(NSArray *)center {
	NSArray *oldValue = _center;
	_center = center;
	[self updateArrayObject:oldValue newValue:center propertyName:@"center"];
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