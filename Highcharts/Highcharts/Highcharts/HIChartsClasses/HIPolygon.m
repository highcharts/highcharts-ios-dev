#import "HIChartsJSONSerializableSubclass.h"
#import "HIPolygon.h"

@implementation HIPolygon

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"polygon";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPolygon *copyPolygon = [[HIPolygon allocWithZone: zone] init];
	copyPolygon.marker = [self.marker copyWithZone: zone];
	copyPolygon.legendSymbol = [self.legendSymbol copyWithZone: zone];
	copyPolygon.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyPolygon.trackByArea = [self.trackByArea copyWithZone: zone];
	copyPolygon.tooltip = [self.tooltip copyWithZone: zone];
	copyPolygon.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyPolygon.lineWidth = [self.lineWidth copyWithZone: zone];
	copyPolygon.linecap = [self.linecap copyWithZone: zone];
	copyPolygon.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyPolygon.colorIndex = [self.colorIndex copyWithZone: zone];
	copyPolygon.clip = [self.clip copyWithZone: zone];
	copyPolygon.negativeColor = [self.negativeColor copyWithZone: zone];
	copyPolygon.color = [self.color copyWithZone: zone];
	copyPolygon.pointInterval = [self.pointInterval copyWithZone: zone];
	copyPolygon.states = [self.states copyWithZone: zone];
	copyPolygon.colorKey = [self.colorKey copyWithZone: zone];
	copyPolygon.dragDrop = [self.dragDrop copyWithZone: zone];
	copyPolygon.point = [self.point copyWithZone: zone];
	copyPolygon.dataSorting = [self.dataSorting copyWithZone: zone];
	copyPolygon.label = [self.label copyWithZone: zone];
	copyPolygon.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyPolygon.cursor = [self.cursor copyWithZone: zone];
	copyPolygon.dashStyle = [self.dashStyle copyWithZone: zone];
	copyPolygon.connectNulls = [self.connectNulls copyWithZone: zone];
	copyPolygon.inactiveOtherPoints = [self.inactiveOtherPoints copyWithZone: zone];
	copyPolygon.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyPolygon.custom = [self.custom copyWithZone: zone];
	copyPolygon.onPoint = [self.onPoint copyWithZone: zone];
	copyPolygon.stacking = [self.stacking copyWithZone: zone];
	copyPolygon.animation = [self.animation copyWithZone: zone];
	copyPolygon.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyPolygon.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyPolygon.events = [self.events copyWithZone: zone];
	copyPolygon.pointDescriptionFormat = [self.pointDescriptionFormat copyWithZone: zone];
	copyPolygon.opacity = [self.opacity copyWithZone: zone];
	copyPolygon.animationLimit = [self.animationLimit copyWithZone: zone];
	copyPolygon.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyPolygon.definition = [self.definition copyWithZone: zone];
	copyPolygon.keys = [self.keys copyWithZone: zone];
	copyPolygon.selected = [self.selected copyWithZone: zone];
	copyPolygon.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyPolygon.accessibility = [self.accessibility copyWithZone: zone];
	copyPolygon.step = [self.step copyWithZone: zone];
	copyPolygon.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyPolygon.sonification = [self.sonification copyWithZone: zone];
	copyPolygon.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyPolygon.colorAxis = [self.colorAxis copyWithZone: zone];
	copyPolygon.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyPolygon.zones = [self.zones copyWithZone: zone];
	copyPolygon.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyPolygon.crisp = [self.crisp copyWithZone: zone];
	copyPolygon.visible = [self.visible copyWithZone: zone];
	copyPolygon.linkedTo = [self.linkedTo copyWithZone: zone];
	copyPolygon.dataLabels = [self.dataLabels copyWithZone: zone];
	copyPolygon.className = [self.className copyWithZone: zone];
	copyPolygon.pointStart = [self.pointStart copyWithZone: zone];
	copyPolygon.connectEnds = [self.connectEnds copyWithZone: zone];
	copyPolygon.showInLegend = [self.showInLegend copyWithZone: zone];
	copyPolygon.data = [self.data copyWithZone: zone];
	copyPolygon.id = [self.id copyWithZone: zone];
	copyPolygon.index = [self.index copyWithZone: zone];
	copyPolygon.legendIndex = [self.legendIndex copyWithZone: zone];
	copyPolygon.name = [self.name copyWithZone: zone];
	copyPolygon.type = [self.type copyWithZone: zone];
	copyPolygon.xAxis = [self.xAxis copyWithZone: zone];
	copyPolygon.yAxis = [self.yAxis copyWithZone: zone];
	copyPolygon.zIndex = [self.zIndex copyWithZone: zone];
	return copyPolygon;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.trackByArea) {
		params[@"trackByArea"] = self.trackByArea;
	}
	return params;
}

# pragma mark - Setters

-(void)setTrackByArea:(NSNumber *)trackByArea {
	NSNumber *oldValue = _trackByArea;
	_trackByArea = trackByArea;
	[self updateNSObject:oldValue newValue:trackByArea propertyName:@"trackByArea"];
}

@end