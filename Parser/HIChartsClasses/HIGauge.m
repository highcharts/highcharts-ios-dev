#import "HIChartsJSONSerializableSubclass.h"
#import "HIGauge.h"

@implementation HIGauge

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"gauge";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIGauge *copyGauge = [[HIGauge allocWithZone: zone] init];
	copyGauge.dial = [self.dial copyWithZone: zone];
	copyGauge.overshoot = [self.overshoot copyWithZone: zone];
	copyGauge.tooltip = [self.tooltip copyWithZone: zone];
	copyGauge.dataLabels = [self.dataLabels copyWithZone: zone];
	copyGauge.wrap = [self.wrap copyWithZone: zone];
	copyGauge.pivot = [self.pivot copyWithZone: zone];
	copyGauge.showInLegend = [self.showInLegend copyWithZone: zone];
	copyGauge.linecap = [self.linecap copyWithZone: zone];
	copyGauge.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyGauge.colorIndex = [self.colorIndex copyWithZone: zone];
	copyGauge.clip = [self.clip copyWithZone: zone];
	copyGauge.negativeColor = [self.negativeColor copyWithZone: zone];
	copyGauge.color = [self.color copyWithZone: zone];
	copyGauge.pointInterval = [self.pointInterval copyWithZone: zone];
	copyGauge.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyGauge.states = [self.states copyWithZone: zone];
	copyGauge.colorKey = [self.colorKey copyWithZone: zone];
	copyGauge.softThreshold = [self.softThreshold copyWithZone: zone];
	copyGauge.dragDrop = [self.dragDrop copyWithZone: zone];
	copyGauge.point = [self.point copyWithZone: zone];
	copyGauge.dataSorting = [self.dataSorting copyWithZone: zone];
	copyGauge.marker = [self.marker copyWithZone: zone];
	copyGauge.label = [self.label copyWithZone: zone];
	copyGauge.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyGauge.cursor = [self.cursor copyWithZone: zone];
	copyGauge.dashStyle = [self.dashStyle copyWithZone: zone];
	copyGauge.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyGauge.connectNulls = [self.connectNulls copyWithZone: zone];
	copyGauge.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyGauge.custom = [self.custom copyWithZone: zone];
	copyGauge.onPoint = [self.onPoint copyWithZone: zone];
	copyGauge.stacking = [self.stacking copyWithZone: zone];
	copyGauge.animation = [self.animation copyWithZone: zone];
	copyGauge.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyGauge.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyGauge.threshold = [self.threshold copyWithZone: zone];
	copyGauge.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyGauge.boostBlending = [self.boostBlending copyWithZone: zone];
	copyGauge.events = [self.events copyWithZone: zone];
	copyGauge.opacity = [self.opacity copyWithZone: zone];
	copyGauge.animationLimit = [self.animationLimit copyWithZone: zone];
	copyGauge.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyGauge.definition = [self.definition copyWithZone: zone];
	copyGauge.keys = [self.keys copyWithZone: zone];
	copyGauge.selected = [self.selected copyWithZone: zone];
	copyGauge.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyGauge.accessibility = [self.accessibility copyWithZone: zone];
	copyGauge.step = [self.step copyWithZone: zone];
	copyGauge.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyGauge.shadow = [self.shadow copyWithZone: zone];
	copyGauge.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyGauge.colorAxis = [self.colorAxis copyWithZone: zone];
	copyGauge.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyGauge.zones = [self.zones copyWithZone: zone];
	copyGauge.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyGauge.lineWidth = [self.lineWidth copyWithZone: zone];
	copyGauge.crisp = [self.crisp copyWithZone: zone];
	copyGauge.visible = [self.visible copyWithZone: zone];
	copyGauge.linkedTo = [self.linkedTo copyWithZone: zone];
	copyGauge.dataAsColumns = [self.dataAsColumns copyWithZone: zone];
	copyGauge.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyGauge.className = [self.className copyWithZone: zone];
	copyGauge.pointStart = [self.pointStart copyWithZone: zone];
	copyGauge.connectEnds = [self.connectEnds copyWithZone: zone];
	copyGauge.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copyGauge.data = [self.data copyWithZone: zone];
	copyGauge.id = [self.id copyWithZone: zone];
	copyGauge.index = [self.index copyWithZone: zone];
	copyGauge.legendIndex = [self.legendIndex copyWithZone: zone];
	copyGauge.name = [self.name copyWithZone: zone];
	copyGauge.stack = [self.stack copyWithZone: zone];
	copyGauge.type = [self.type copyWithZone: zone];
	copyGauge.xAxis = [self.xAxis copyWithZone: zone];
	copyGauge.yAxis = [self.yAxis copyWithZone: zone];
	copyGauge.zIndex = [self.zIndex copyWithZone: zone];
	return copyGauge;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.dial) {
		params[@"dial"] = [self.dial getParams];
	}
	if (self.overshoot) {
		params[@"overshoot"] = self.overshoot;
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

-(void)setDial:(HIDial *)dial {
	HIDial *oldValue = _dial;
	_dial = dial;
	[self updateHIObject:oldValue newValue:dial propertyName:@"dial"];
}

-(void)setOvershoot:(NSNumber *)overshoot {
	NSNumber *oldValue = _overshoot;
	_overshoot = overshoot;
	[self updateNSObject:oldValue newValue:overshoot propertyName:@"overshoot"];
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