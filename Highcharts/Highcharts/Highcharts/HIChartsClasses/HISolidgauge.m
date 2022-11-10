#import "HIChartsJSONSerializableSubclass.h"
#import "HISolidgauge.h"

@implementation HISolidgauge

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"solidgauge";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISolidgauge *copySolidgauge = [[HISolidgauge allocWithZone: zone] init];
	copySolidgauge.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copySolidgauge.rounded = [self.rounded copyWithZone: zone];
	copySolidgauge.innerRadius = [self.innerRadius copyWithZone: zone];
	copySolidgauge.overshoot = [self.overshoot copyWithZone: zone];
	copySolidgauge.dataLabels = [self.dataLabels copyWithZone: zone];
	copySolidgauge.radius = [self.radius copyWithZone: zone];
	copySolidgauge.linecap = [self.linecap copyWithZone: zone];
	copySolidgauge.threshold = [self.threshold copyWithZone: zone];
	copySolidgauge.dial = [self.dial copyWithZone: zone];
	copySolidgauge.tooltip = [self.tooltip copyWithZone: zone];
	copySolidgauge.wrap = [self.wrap copyWithZone: zone];
	copySolidgauge.pivot = [self.pivot copyWithZone: zone];
	copySolidgauge.showInLegend = [self.showInLegend copyWithZone: zone];
	copySolidgauge.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copySolidgauge.colorIndex = [self.colorIndex copyWithZone: zone];
	copySolidgauge.clip = [self.clip copyWithZone: zone];
	copySolidgauge.negativeColor = [self.negativeColor copyWithZone: zone];
	copySolidgauge.color = [self.color copyWithZone: zone];
	copySolidgauge.pointInterval = [self.pointInterval copyWithZone: zone];
	copySolidgauge.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copySolidgauge.states = [self.states copyWithZone: zone];
	copySolidgauge.colorKey = [self.colorKey copyWithZone: zone];
	copySolidgauge.softThreshold = [self.softThreshold copyWithZone: zone];
	copySolidgauge.dragDrop = [self.dragDrop copyWithZone: zone];
	copySolidgauge.point = [self.point copyWithZone: zone];
	copySolidgauge.dataSorting = [self.dataSorting copyWithZone: zone];
	copySolidgauge.marker = [self.marker copyWithZone: zone];
	copySolidgauge.label = [self.label copyWithZone: zone];
	copySolidgauge.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copySolidgauge.cursor = [self.cursor copyWithZone: zone];
	copySolidgauge.dashStyle = [self.dashStyle copyWithZone: zone];
	copySolidgauge.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copySolidgauge.connectNulls = [self.connectNulls copyWithZone: zone];
	copySolidgauge.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copySolidgauge.custom = [self.custom copyWithZone: zone];
	copySolidgauge.onPoint = [self.onPoint copyWithZone: zone];
	copySolidgauge.stacking = [self.stacking copyWithZone: zone];
	copySolidgauge.animation = [self.animation copyWithZone: zone];
	copySolidgauge.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copySolidgauge.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copySolidgauge.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copySolidgauge.boostBlending = [self.boostBlending copyWithZone: zone];
	copySolidgauge.events = [self.events copyWithZone: zone];
	copySolidgauge.opacity = [self.opacity copyWithZone: zone];
	copySolidgauge.animationLimit = [self.animationLimit copyWithZone: zone];
	copySolidgauge.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copySolidgauge.definition = [self.definition copyWithZone: zone];
	copySolidgauge.keys = [self.keys copyWithZone: zone];
	copySolidgauge.selected = [self.selected copyWithZone: zone];
	copySolidgauge.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copySolidgauge.accessibility = [self.accessibility copyWithZone: zone];
	copySolidgauge.step = [self.step copyWithZone: zone];
	copySolidgauge.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copySolidgauge.shadow = [self.shadow copyWithZone: zone];
	copySolidgauge.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copySolidgauge.colorAxis = [self.colorAxis copyWithZone: zone];
	copySolidgauge.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copySolidgauge.zones = [self.zones copyWithZone: zone];
	copySolidgauge.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copySolidgauge.lineWidth = [self.lineWidth copyWithZone: zone];
	copySolidgauge.crisp = [self.crisp copyWithZone: zone];
	copySolidgauge.visible = [self.visible copyWithZone: zone];
	copySolidgauge.linkedTo = [self.linkedTo copyWithZone: zone];
	copySolidgauge.dataAsColumns = [self.dataAsColumns copyWithZone: zone];
	copySolidgauge.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copySolidgauge.className = [self.className copyWithZone: zone];
	copySolidgauge.pointStart = [self.pointStart copyWithZone: zone];
	copySolidgauge.connectEnds = [self.connectEnds copyWithZone: zone];
	copySolidgauge.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copySolidgauge.data = [self.data copyWithZone: zone];
	copySolidgauge.id = [self.id copyWithZone: zone];
	copySolidgauge.index = [self.index copyWithZone: zone];
	copySolidgauge.legendIndex = [self.legendIndex copyWithZone: zone];
	copySolidgauge.name = [self.name copyWithZone: zone];
	copySolidgauge.stack = [self.stack copyWithZone: zone];
	copySolidgauge.type = [self.type copyWithZone: zone];
	copySolidgauge.xAxis = [self.xAxis copyWithZone: zone];
	copySolidgauge.yAxis = [self.yAxis copyWithZone: zone];
	copySolidgauge.zIndex = [self.zIndex copyWithZone: zone];
	return copySolidgauge;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.rounded) {
		params[@"rounded"] = self.rounded;
	}
	if (self.innerRadius) {
		params[@"innerRadius"] = self.innerRadius;
	}
	if (self.overshoot) {
		params[@"overshoot"] = self.overshoot;
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.dial) {
		params[@"dial"] = [self.dial getParams];
	}
	if (self.wrap) {
		params[@"wrap"] = self.wrap;
	}
	if (self.pivot) {
		params[@"pivot"] = [self.pivot getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	NSNumber *oldValue = _colorByPoint;
	_colorByPoint = colorByPoint;
	[self updateNSObject:oldValue newValue:colorByPoint propertyName:@"colorByPoint"];
}

-(void)setRounded:(NSNumber *)rounded {
	NSNumber *oldValue = _rounded;
	_rounded = rounded;
	[self updateNSObject:oldValue newValue:rounded propertyName:@"rounded"];
}

-(void)setInnerRadius:(NSString *)innerRadius {
	NSString *oldValue = _innerRadius;
	_innerRadius = innerRadius;
	[self updateNSObject:oldValue newValue:innerRadius propertyName:@"innerRadius"];
}

-(void)setOvershoot:(NSNumber *)overshoot {
	NSNumber *oldValue = _overshoot;
	_overshoot = overshoot;
	[self updateNSObject:oldValue newValue:overshoot propertyName:@"overshoot"];
}

-(void)setRadius:(NSString *)radius {
	NSString *oldValue = _radius;
	_radius = radius;
	[self updateNSObject:oldValue newValue:radius propertyName:@"radius"];
}

-(void)setDial:(HIDial *)dial {
	HIDial *oldValue = _dial;
	_dial = dial;
	[self updateHIObject:oldValue newValue:dial propertyName:@"dial"];
}

-(void)setWrap:(NSNumber *)wrap {
	NSNumber *oldValue = _wrap;
	_wrap = wrap;
	[self updateNSObject:oldValue newValue:wrap propertyName:@"wrap"];
}

-(void)setPivot:(HIPivot *)pivot {
	HIPivot *oldValue = _pivot;
	_pivot = pivot;
	[self updateHIObject:oldValue newValue:pivot propertyName:@"pivot"];
}

@end