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
	copyPyramid.neckHeight = [self.neckHeight copyWithZone: zone];
	copyPyramid.neckWidth = [self.neckWidth copyWithZone: zone];
	copyPyramid.center = [self.center copyWithZone: zone];
	copyPyramid.height = [self.height copyWithZone: zone];
	copyPyramid.states = [self.states copyWithZone: zone];
	copyPyramid.width = [self.width copyWithZone: zone];
	copyPyramid.animation = [self.animation copyWithZone: zone];
	copyPyramid.dataLabels = [self.dataLabels copyWithZone: zone];
	copyPyramid.borderColor = [self.borderColor copyWithZone: zone];
	copyPyramid.endAngle = [self.endAngle copyWithZone: zone];
	copyPyramid.innerSize = [self.innerSize copyWithZone: zone];
	copyPyramid.clip = [self.clip copyWithZone: zone];
	copyPyramid.point = [self.point copyWithZone: zone];
	copyPyramid.slicedOffset = [self.slicedOffset copyWithZone: zone];
	copyPyramid.depth = [self.depth copyWithZone: zone];
	copyPyramid.tooltip = [self.tooltip copyWithZone: zone];
	copyPyramid.colors = [self.colors copyWithZone: zone];
	copyPyramid.minSize = [self.minSize copyWithZone: zone];
	copyPyramid.showInLegend = [self.showInLegend copyWithZone: zone];
	copyPyramid.borderWidth = [self.borderWidth copyWithZone: zone];
	copyPyramid.legendType = [self.legendType copyWithZone: zone];
	copyPyramid.startAngle = [self.startAngle copyWithZone: zone];
	copyPyramid.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyPyramid.events = [self.events copyWithZone: zone];
	copyPyramid.ignoreHiddenPoint = [self.ignoreHiddenPoint copyWithZone: zone];
	copyPyramid.linecap = [self.linecap copyWithZone: zone];
	copyPyramid.selected = [self.selected copyWithZone: zone];
	copyPyramid.colorIndex = [self.colorIndex copyWithZone: zone];
	copyPyramid.color = [self.color copyWithZone: zone];
	copyPyramid.dragDrop = [self.dragDrop copyWithZone: zone];
	copyPyramid.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyPyramid.cursor = [self.cursor copyWithZone: zone];
	copyPyramid.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyPyramid.label = [self.label copyWithZone: zone];
	copyPyramid.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyPyramid.definition = [self.definition copyWithZone: zone];
	copyPyramid.keys = [self.keys copyWithZone: zone];
	copyPyramid.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyPyramid.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyPyramid.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyPyramid.shadow = [self.shadow copyWithZone: zone];
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
	if (self.neckHeight) {
		params[@"neckHeight"] = self.neckHeight;
	}
	if (self.neckWidth) {
		params[@"neckWidth"] = self.neckWidth;
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
	if (self.endAngle) {
		params[@"endAngle"] = self.endAngle;
	}
	if (self.innerSize) {
		params[@"innerSize"] = self.innerSize;
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
	if (self.ignoreHiddenPoint) {
		params[@"ignoreHiddenPoint"] = self.ignoreHiddenPoint;
	}
	return params;
}

# pragma mark - Setters

-(void)setReversed:(NSNumber *)reversed {
	_reversed = reversed;
	[self updateNSObject:@"reversed"];
}

-(void)setNeckHeight:(NSString *)neckHeight {
	_neckHeight = neckHeight;
	[self updateNSObject:@"neckHeight"];
}

-(void)setNeckWidth:(NSString *)neckWidth {
	_neckWidth = neckWidth;
	[self updateNSObject:@"neckWidth"];
}

-(void)setCenter:(NSArray *)center {
	NSArray *oldValue = _center;
	_center = center;
	[self updateArrayObject:oldValue newValue:center propertyName:@"center"];
}

-(void)setHeight:(id)height {
	_height = height;
	[self updateNSObject:@"height"];
}

-(void)setWidth:(id)width {
	_width = width;
	[self updateNSObject:@"width"];
}

-(void)setEndAngle:(NSNumber *)endAngle {
	_endAngle = endAngle;
	[self updateNSObject:@"endAngle"];
}

-(void)setInnerSize:(id)innerSize {
	_innerSize = innerSize;
	[self updateNSObject:@"innerSize"];
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

-(void)setIgnoreHiddenPoint:(NSNumber *)ignoreHiddenPoint {
	_ignoreHiddenPoint = ignoreHiddenPoint;
	[self updateNSObject:@"ignoreHiddenPoint"];
}

@end