#import "HIChartsJSONSerializableSubclass.h"
#import "HIColumnpyramid.h"

@implementation HIColumnpyramid

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"columnpyramid";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIColumnpyramid *copyColumnpyramid = [[HIColumnpyramid allocWithZone: zone] init];
	copyColumnpyramid.states = [self.states copyWithZone: zone];
	copyColumnpyramid.data = [self.data copyWithZone: zone];
	copyColumnpyramid.id = [self.id copyWithZone: zone];
	copyColumnpyramid.index = [self.index copyWithZone: zone];
	copyColumnpyramid.legendIndex = [self.legendIndex copyWithZone: zone];
	copyColumnpyramid.name = [self.name copyWithZone: zone];
	copyColumnpyramid.stack = [self.stack copyWithZone: zone];
	copyColumnpyramid.type = [self.type copyWithZone: zone];
	copyColumnpyramid.xAxis = [self.xAxis copyWithZone: zone];
	copyColumnpyramid.yAxis = [self.yAxis copyWithZone: zone];
	copyColumnpyramid.zIndex = [self.zIndex copyWithZone: zone];
	copyColumnpyramid.pointPadding = [self.pointPadding copyWithZone: zone];
	copyColumnpyramid.pointRange = [self.pointRange copyWithZone: zone];
	copyColumnpyramid.minPointLength = [self.minPointLength copyWithZone: zone];
	copyColumnpyramid.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyColumnpyramid.colors = [self.colors copyWithZone: zone];
	copyColumnpyramid.borderColor = [self.borderColor copyWithZone: zone];
	copyColumnpyramid.tooltip = [self.tooltip copyWithZone: zone];
	copyColumnpyramid.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyColumnpyramid.pointWidth = [self.pointWidth copyWithZone: zone];
	copyColumnpyramid.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyColumnpyramid.groupPadding = [self.groupPadding copyWithZone: zone];
	copyColumnpyramid.dataLabels = [self.dataLabels copyWithZone: zone];
	copyColumnpyramid.borderWidth = [self.borderWidth copyWithZone: zone];
	copyColumnpyramid.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyColumnpyramid.grouping = [self.grouping copyWithZone: zone];
	copyColumnpyramid.point = [self.point copyWithZone: zone];
	copyColumnpyramid.selected = [self.selected copyWithZone: zone];
	copyColumnpyramid.colorIndex = [self.colorIndex copyWithZone: zone];
	copyColumnpyramid.clip = [self.clip copyWithZone: zone];
	copyColumnpyramid.color = [self.color copyWithZone: zone];
	copyColumnpyramid.pointInterval = [self.pointInterval copyWithZone: zone];
	copyColumnpyramid.dragDrop = [self.dragDrop copyWithZone: zone];
	copyColumnpyramid.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyColumnpyramid.className = [self.className copyWithZone: zone];
	copyColumnpyramid.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyColumnpyramid.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyColumnpyramid.label = [self.label copyWithZone: zone];
	copyColumnpyramid.stacking = [self.stacking copyWithZone: zone];
	copyColumnpyramid.animation = [self.animation copyWithZone: zone];
	copyColumnpyramid.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyColumnpyramid.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyColumnpyramid.events = [self.events copyWithZone: zone];
	copyColumnpyramid.animationLimit = [self.animationLimit copyWithZone: zone];
	copyColumnpyramid.definition = [self.definition copyWithZone: zone];
	copyColumnpyramid.keys = [self.keys copyWithZone: zone];
	copyColumnpyramid.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyColumnpyramid.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyColumnpyramid.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyColumnpyramid.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyColumnpyramid.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyColumnpyramid.shadow = [self.shadow copyWithZone: zone];
	copyColumnpyramid.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyColumnpyramid.visible = [self.visible copyWithZone: zone];
	copyColumnpyramid.linkedTo = [self.linkedTo copyWithZone: zone];
	copyColumnpyramid.cursor = [self.cursor copyWithZone: zone];
	copyColumnpyramid.pointStart = [self.pointStart copyWithZone: zone];
	copyColumnpyramid.showInLegend = [self.showInLegend copyWithZone: zone];
	return copyColumnpyramid;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	if (self.pointRange) {
		params[@"pointRange"] = self.pointRange;
	}
	if (self.minPointLength) {
		params[@"minPointLength"] = self.minPointLength;
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
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.maxPointWidth) {
		params[@"maxPointWidth"] = self.maxPointWidth;
	}
	if (self.pointWidth) {
		params[@"pointWidth"] = self.pointWidth;
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.groupPadding) {
		params[@"groupPadding"] = self.groupPadding;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.grouping) {
		params[@"grouping"] = self.grouping;
	}
	return params;
}

# pragma mark - Setters

-(void)setPointPadding:(NSNumber *)pointPadding {
	_pointPadding = pointPadding;
	[self updateNSObject:@"pointPadding"];
}

-(void)setPointRange:(NSNumber *)pointRange {
	_pointRange = pointRange;
	[self updateNSObject:@"pointRange"];
}

-(void)setMinPointLength:(NSNumber *)minPointLength {
	_minPointLength = minPointLength;
	[self updateNSObject:@"minPointLength"];
}

-(void)setColors:(NSArray<NSString *> *)colors {
	NSArray<NSString *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setMaxPointWidth:(NSNumber *)maxPointWidth {
	_maxPointWidth = maxPointWidth;
	[self updateNSObject:@"maxPointWidth"];
}

-(void)setPointWidth:(NSNumber *)pointWidth {
	_pointWidth = pointWidth;
	[self updateNSObject:@"pointWidth"];
}

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	_colorByPoint = colorByPoint;
	[self updateNSObject:@"colorByPoint"];
}

-(void)setGroupPadding:(NSNumber *)groupPadding {
	_groupPadding = groupPadding;
	[self updateNSObject:@"groupPadding"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setGrouping:(NSNumber *)grouping {
	_grouping = grouping;
	[self updateNSObject:@"grouping"];
}

@end