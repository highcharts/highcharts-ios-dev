#import "HIChartsJSONSerializableSubclass.h"
#import "HIScatter.h"

@implementation HIScatter

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"scatter";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIScatter *copyScatter = [[HIScatter allocWithZone: zone] init];
	copyScatter.jitter = [self.jitter copyWithZone: zone];
	copyScatter.tooltip = [self.tooltip copyWithZone: zone];
	copyScatter.cluster = [self.cluster copyWithZone: zone];
	copyScatter.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyScatter.marker = [self.marker copyWithZone: zone];
	copyScatter.lineWidth = [self.lineWidth copyWithZone: zone];
	copyScatter.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyScatter.linecap = [self.linecap copyWithZone: zone];
	copyScatter.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyScatter.colorIndex = [self.colorIndex copyWithZone: zone];
	copyScatter.clip = [self.clip copyWithZone: zone];
	copyScatter.negativeColor = [self.negativeColor copyWithZone: zone];
	copyScatter.color = [self.color copyWithZone: zone];
	copyScatter.pointInterval = [self.pointInterval copyWithZone: zone];
	copyScatter.states = [self.states copyWithZone: zone];
	copyScatter.colorKey = [self.colorKey copyWithZone: zone];
	copyScatter.softThreshold = [self.softThreshold copyWithZone: zone];
	copyScatter.dragDrop = [self.dragDrop copyWithZone: zone];
	copyScatter.point = [self.point copyWithZone: zone];
	copyScatter.dataSorting = [self.dataSorting copyWithZone: zone];
	copyScatter.label = [self.label copyWithZone: zone];
	copyScatter.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyScatter.cursor = [self.cursor copyWithZone: zone];
	copyScatter.dashStyle = [self.dashStyle copyWithZone: zone];
	copyScatter.connectNulls = [self.connectNulls copyWithZone: zone];
	copyScatter.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyScatter.custom = [self.custom copyWithZone: zone];
	copyScatter.onPoint = [self.onPoint copyWithZone: zone];
	copyScatter.stacking = [self.stacking copyWithZone: zone];
	copyScatter.animation = [self.animation copyWithZone: zone];
	copyScatter.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyScatter.threshold = [self.threshold copyWithZone: zone];
	copyScatter.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyScatter.boostBlending = [self.boostBlending copyWithZone: zone];
	copyScatter.events = [self.events copyWithZone: zone];
	copyScatter.opacity = [self.opacity copyWithZone: zone];
	copyScatter.animationLimit = [self.animationLimit copyWithZone: zone];
	copyScatter.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyScatter.definition = [self.definition copyWithZone: zone];
	copyScatter.keys = [self.keys copyWithZone: zone];
	copyScatter.selected = [self.selected copyWithZone: zone];
	copyScatter.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyScatter.accessibility = [self.accessibility copyWithZone: zone];
	copyScatter.step = [self.step copyWithZone: zone];
	copyScatter.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyScatter.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyScatter.colorAxis = [self.colorAxis copyWithZone: zone];
	copyScatter.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyScatter.zones = [self.zones copyWithZone: zone];
	copyScatter.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyScatter.crisp = [self.crisp copyWithZone: zone];
	copyScatter.visible = [self.visible copyWithZone: zone];
	copyScatter.linkedTo = [self.linkedTo copyWithZone: zone];
	copyScatter.dataLabels = [self.dataLabels copyWithZone: zone];
	copyScatter.className = [self.className copyWithZone: zone];
	copyScatter.pointStart = [self.pointStart copyWithZone: zone];
	copyScatter.connectEnds = [self.connectEnds copyWithZone: zone];
	copyScatter.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copyScatter.showInLegend = [self.showInLegend copyWithZone: zone];
	copyScatter.data = [self.data copyWithZone: zone];
	copyScatter.id = [self.id copyWithZone: zone];
	copyScatter.index = [self.index copyWithZone: zone];
	copyScatter.legendIndex = [self.legendIndex copyWithZone: zone];
	copyScatter.name = [self.name copyWithZone: zone];
	copyScatter.stack = [self.stack copyWithZone: zone];
	copyScatter.type = [self.type copyWithZone: zone];
	copyScatter.xAxis = [self.xAxis copyWithZone: zone];
	copyScatter.yAxis = [self.yAxis copyWithZone: zone];
	copyScatter.zIndex = [self.zIndex copyWithZone: zone];
	return copyScatter;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.jitter) {
		params[@"jitter"] = [self.jitter getParams];
	}
	if (self.cluster) {
		params[@"cluster"] = [self.cluster getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setJitter:(HIJitter *)jitter {
	HIJitter *oldValue = _jitter;
	_jitter = jitter;
	[self updateHIObject:oldValue newValue:jitter propertyName:@"jitter"];
}

-(void)setCluster:(HICluster *)cluster {
	HICluster *oldValue = _cluster;
	_cluster = cluster;
	[self updateHIObject:oldValue newValue:cluster propertyName:@"cluster"];
}

@end