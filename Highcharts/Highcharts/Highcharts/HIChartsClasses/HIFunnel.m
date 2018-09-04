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
	copyFunnel.dataLabels = [self.dataLabels copyWithZone: zone];
	copyFunnel.borderColor = [self.borderColor copyWithZone: zone];
	copyFunnel.minSize = [self.minSize copyWithZone: zone];
	copyFunnel.innerSize = [self.innerSize copyWithZone: zone];
	copyFunnel.clip = [self.clip copyWithZone: zone];
	copyFunnel.point = [self.point copyWithZone: zone];
	copyFunnel.showInLegend = [self.showInLegend copyWithZone: zone];
	copyFunnel.slicedOffset = [self.slicedOffset copyWithZone: zone];
	copyFunnel.depth = [self.depth copyWithZone: zone];
	copyFunnel.tooltip = [self.tooltip copyWithZone: zone];
	copyFunnel.endAngle = [self.endAngle copyWithZone: zone];
	copyFunnel.colors = [self.colors copyWithZone: zone];
	copyFunnel.borderWidth = [self.borderWidth copyWithZone: zone];
	copyFunnel.startAngle = [self.startAngle copyWithZone: zone];
	copyFunnel.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyFunnel.events = [self.events copyWithZone: zone];
	copyFunnel.ignoreHiddenPoint = [self.ignoreHiddenPoint copyWithZone: zone];
	copyFunnel.linecap = [self.linecap copyWithZone: zone];
	copyFunnel.selected = [self.selected copyWithZone: zone];
	copyFunnel.colorIndex = [self.colorIndex copyWithZone: zone];
	copyFunnel.color = [self.color copyWithZone: zone];
	copyFunnel.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyFunnel.className = [self.className copyWithZone: zone];
	copyFunnel.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyFunnel.label = [self.label copyWithZone: zone];
	copyFunnel.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyFunnel.definition = [self.definition copyWithZone: zone];
	copyFunnel.keys = [self.keys copyWithZone: zone];
	copyFunnel.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyFunnel.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyFunnel.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyFunnel.shadow = [self.shadow copyWithZone: zone];
	copyFunnel.visible = [self.visible copyWithZone: zone];
	copyFunnel.linkedTo = [self.linkedTo copyWithZone: zone];
	copyFunnel.cursor = [self.cursor copyWithZone: zone];
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
	if (self.minSize) {
		params[@"minSize"] = self.minSize;
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
	if (self.endAngle) {
		params[@"endAngle"] = self.endAngle;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
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

-(void)setCenter:(NSArray *)center {
	NSArray *oldValue = _center;
	_center = center;
	[self updateArrayObject:oldValue newValue:center propertyName:@"center"];
}

-(void)setReversed:(NSNumber *)reversed {
	_reversed = reversed;
	[self updateNSObject:@"reversed"];
}

-(void)setNeckWidth:(id)neckWidth {
	_neckWidth = neckWidth;
	[self updateNSObject:@"neckWidth"];
}

-(void)setHeight:(id)height {
	_height = height;
	[self updateNSObject:@"height"];
}

-(void)setWidth:(id)width {
	_width = width;
	[self updateNSObject:@"width"];
}

-(void)setNeckHeight:(id)neckHeight {
	_neckHeight = neckHeight;
	[self updateNSObject:@"neckHeight"];
}

-(void)setMinSize:(NSNumber *)minSize {
	_minSize = minSize;
	[self updateNSObject:@"minSize"];
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

-(void)setEndAngle:(NSNumber *)endAngle {
	_endAngle = endAngle;
	[self updateNSObject:@"endAngle"];
}

-(void)setColors:(NSArray<HIColor *> *)colors {
	NSArray<HIColor *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
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