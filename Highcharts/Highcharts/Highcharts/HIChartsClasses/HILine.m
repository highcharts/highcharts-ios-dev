#import "HIChartsJSONSerializableSubclass.h"
#import "HILine.h"

@implementation HILine

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"line";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HILine *copyLine = [[HILine allocWithZone: zone] init];
	copyLine.linecap = [self.linecap copyWithZone: zone];
	copyLine.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyLine.selected = [self.selected copyWithZone: zone];
	copyLine.colorIndex = [self.colorIndex copyWithZone: zone];
	copyLine.clip = [self.clip copyWithZone: zone];
	copyLine.negativeColor = [self.negativeColor copyWithZone: zone];
	copyLine.color = [self.color copyWithZone: zone];
	copyLine.pointInterval = [self.pointInterval copyWithZone: zone];
	copyLine.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyLine.states = [self.states copyWithZone: zone];
	copyLine.colorKey = [self.colorKey copyWithZone: zone];
	copyLine.softThreshold = [self.softThreshold copyWithZone: zone];
	copyLine.dragDrop = [self.dragDrop copyWithZone: zone];
	copyLine.point = [self.point copyWithZone: zone];
	copyLine.dataSorting = [self.dataSorting copyWithZone: zone];
	copyLine.marker = [self.marker copyWithZone: zone];
	copyLine.tooltip = [self.tooltip copyWithZone: zone];
	copyLine.label = [self.label copyWithZone: zone];
	copyLine.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyLine.cursor = [self.cursor copyWithZone: zone];
	copyLine.dashStyle = [self.dashStyle copyWithZone: zone];
	copyLine.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyLine.connectNulls = [self.connectNulls copyWithZone: zone];
	copyLine.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyLine.custom = [self.custom copyWithZone: zone];
	copyLine.stacking = [self.stacking copyWithZone: zone];
	copyLine.animation = [self.animation copyWithZone: zone];
	copyLine.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyLine.threshold = [self.threshold copyWithZone: zone];
	copyLine.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyLine.boostBlending = [self.boostBlending copyWithZone: zone];
	copyLine.events = [self.events copyWithZone: zone];
	copyLine.opacity = [self.opacity copyWithZone: zone];
	copyLine.animationLimit = [self.animationLimit copyWithZone: zone];
	copyLine.definition = [self.definition copyWithZone: zone];
	copyLine.keys = [self.keys copyWithZone: zone];
	copyLine.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyLine.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyLine.accessibility = [self.accessibility copyWithZone: zone];
	copyLine.step = [self.step copyWithZone: zone];
	copyLine.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyLine.shadow = [self.shadow copyWithZone: zone];
	copyLine.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyLine.colorAxis = [self.colorAxis copyWithZone: zone];
	copyLine.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyLine.zones = [self.zones copyWithZone: zone];
	copyLine.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyLine.lineWidth = [self.lineWidth copyWithZone: zone];
	copyLine.visible = [self.visible copyWithZone: zone];
	copyLine.linkedTo = [self.linkedTo copyWithZone: zone];
	copyLine.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyLine.dataLabels = [self.dataLabels copyWithZone: zone];
	copyLine.className = [self.className copyWithZone: zone];
	copyLine.pointStart = [self.pointStart copyWithZone: zone];
	copyLine.connectEnds = [self.connectEnds copyWithZone: zone];
	copyLine.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copyLine.showInLegend = [self.showInLegend copyWithZone: zone];
	copyLine.data = [self.data copyWithZone: zone];
	copyLine.id = [self.id copyWithZone: zone];
	copyLine.index = [self.index copyWithZone: zone];
	copyLine.legendIndex = [self.legendIndex copyWithZone: zone];
	copyLine.name = [self.name copyWithZone: zone];
	copyLine.stack = [self.stack copyWithZone: zone];
	copyLine.type = [self.type copyWithZone: zone];
	copyLine.xAxis = [self.xAxis copyWithZone: zone];
	copyLine.yAxis = [self.yAxis copyWithZone: zone];
	copyLine.zIndex = [self.zIndex copyWithZone: zone];
	return copyLine;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	return params;
}

@end