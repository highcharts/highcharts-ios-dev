#import "HIChartsJSONSerializableSubclass.h"
#import "HISpline.h"

@implementation HISpline

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"spline";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISpline *copySpline = [[HISpline allocWithZone: zone] init];
	copySpline.data = [self.data copyWithZone: zone];
	copySpline.id = [self.id copyWithZone: zone];
	copySpline.index = [self.index copyWithZone: zone];
	copySpline.legendIndex = [self.legendIndex copyWithZone: zone];
	copySpline.name = [self.name copyWithZone: zone];
	copySpline.stack = [self.stack copyWithZone: zone];
	copySpline.type = [self.type copyWithZone: zone];
	copySpline.xAxis = [self.xAxis copyWithZone: zone];
	copySpline.yAxis = [self.yAxis copyWithZone: zone];
	copySpline.zIndex = [self.zIndex copyWithZone: zone];
	copySpline.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copySpline.selected = [self.selected copyWithZone: zone];
	copySpline.colorIndex = [self.colorIndex copyWithZone: zone];
	copySpline.clip = [self.clip copyWithZone: zone];
	copySpline.negativeColor = [self.negativeColor copyWithZone: zone];
	copySpline.color = [self.color copyWithZone: zone];
	copySpline.pointInterval = [self.pointInterval copyWithZone: zone];
	copySpline.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copySpline.states = [self.states copyWithZone: zone];
	copySpline.colorKey = [self.colorKey copyWithZone: zone];
	copySpline.softThreshold = [self.softThreshold copyWithZone: zone];
	copySpline.dragDrop = [self.dragDrop copyWithZone: zone];
	copySpline.point = [self.point copyWithZone: zone];
	copySpline.dataSorting = [self.dataSorting copyWithZone: zone];
	copySpline.marker = [self.marker copyWithZone: zone];
	copySpline.tooltip = [self.tooltip copyWithZone: zone];
	copySpline.label = [self.label copyWithZone: zone];
	copySpline.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copySpline.cursor = [self.cursor copyWithZone: zone];
	copySpline.dashStyle = [self.dashStyle copyWithZone: zone];
	copySpline.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copySpline.connectNulls = [self.connectNulls copyWithZone: zone];
	copySpline.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copySpline.custom = [self.custom copyWithZone: zone];
	copySpline.stacking = [self.stacking copyWithZone: zone];
	copySpline.animation = [self.animation copyWithZone: zone];
	copySpline.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copySpline.threshold = [self.threshold copyWithZone: zone];
	copySpline.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copySpline.events = [self.events copyWithZone: zone];
	copySpline.opacity = [self.opacity copyWithZone: zone];
	copySpline.animationLimit = [self.animationLimit copyWithZone: zone];
	copySpline.definition = [self.definition copyWithZone: zone];
	copySpline.keys = [self.keys copyWithZone: zone];
	copySpline.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copySpline.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copySpline.accessibility = [self.accessibility copyWithZone: zone];
	copySpline.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copySpline.shadow = [self.shadow copyWithZone: zone];
	copySpline.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copySpline.colorAxis = [self.colorAxis copyWithZone: zone];
	copySpline.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copySpline.zones = [self.zones copyWithZone: zone];
	copySpline.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copySpline.lineWidth = [self.lineWidth copyWithZone: zone];
	copySpline.crisp = [self.crisp copyWithZone: zone];
	copySpline.visible = [self.visible copyWithZone: zone];
	copySpline.linkedTo = [self.linkedTo copyWithZone: zone];
	copySpline.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copySpline.dataLabels = [self.dataLabels copyWithZone: zone];
	copySpline.className = [self.className copyWithZone: zone];
	copySpline.pointStart = [self.pointStart copyWithZone: zone];
	copySpline.linecap = [self.linecap copyWithZone: zone];
	copySpline.connectEnds = [self.connectEnds copyWithZone: zone];
	copySpline.showInLegend = [self.showInLegend copyWithZone: zone];
	return copySpline;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	return params;
}

@end