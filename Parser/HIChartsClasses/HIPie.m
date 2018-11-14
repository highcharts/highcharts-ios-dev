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
	copyPie.data = [self.data copyWithZone: zone];
	copyPie.id = [self.id copyWithZone: zone];
	copyPie.index = [self.index copyWithZone: zone];
	copyPie.legendIndex = [self.legendIndex copyWithZone: zone];
	copyPie.name = [self.name copyWithZone: zone];
	copyPie.type = [self.type copyWithZone: zone];
	copyPie.zIndex = [self.zIndex copyWithZone: zone];
	copyPie.borderColor = [self.borderColor copyWithZone: zone];
	copyPie.endAngle = [self.endAngle copyWithZone: zone];
	copyPie.innerSize = [self.innerSize copyWithZone: zone];
	copyPie.center = [self.center copyWithZone: zone];
	copyPie.clip = [self.clip copyWithZone: zone];
	copyPie.point = [self.point copyWithZone: zone];
	copyPie.slicedOffset = [self.slicedOffset copyWithZone: zone];
	copyPie.depth = [self.depth copyWithZone: zone];
	copyPie.tooltip = [self.tooltip copyWithZone: zone];
	copyPie.dataLabels = [self.dataLabels copyWithZone: zone];
	copyPie.states = [self.states copyWithZone: zone];
	copyPie.colors = [self.colors copyWithZone: zone];
	copyPie.minSize = [self.minSize copyWithZone: zone];
	copyPie.showInLegend = [self.showInLegend copyWithZone: zone];
	copyPie.borderWidth = [self.borderWidth copyWithZone: zone];
	copyPie.legendType = [self.legendType copyWithZone: zone];
	copyPie.startAngle = [self.startAngle copyWithZone: zone];
	copyPie.size = [self.size copyWithZone: zone];
	copyPie.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyPie.events = [self.events copyWithZone: zone];
	copyPie.ignoreHiddenPoint = [self.ignoreHiddenPoint copyWithZone: zone];
	copyPie.linecap = [self.linecap copyWithZone: zone];
	copyPie.selected = [self.selected copyWithZone: zone];
	copyPie.colorIndex = [self.colorIndex copyWithZone: zone];
	copyPie.color = [self.color copyWithZone: zone];
	copyPie.dragDrop = [self.dragDrop copyWithZone: zone];
	copyPie.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyPie.cursor = [self.cursor copyWithZone: zone];
	copyPie.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyPie.label = [self.label copyWithZone: zone];
	copyPie.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyPie.definition = [self.definition copyWithZone: zone];
	copyPie.keys = [self.keys copyWithZone: zone];
	copyPie.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyPie.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyPie.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyPie.shadow = [self.shadow copyWithZone: zone];
	copyPie.animation = [self.animation copyWithZone: zone];
	copyPie.visible = [self.visible copyWithZone: zone];
	copyPie.linkedTo = [self.linkedTo copyWithZone: zone];
	copyPie.className = [self.className copyWithZone: zone];
	return copyPie;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
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