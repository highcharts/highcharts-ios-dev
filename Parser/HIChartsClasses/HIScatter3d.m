#import "HIChartsJSONSerializableSubclass.h"
#import "HIScatter3d.h"

@implementation HIScatter3d

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"scatter3d";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIScatter3d *copyScatter3d = [[HIScatter3d allocWithZone: zone] init];
	copyScatter3d.data = [self.data copyWithZone: zone];
	copyScatter3d.id = [self.id copyWithZone: zone];
	copyScatter3d.index = [self.index copyWithZone: zone];
	copyScatter3d.legendIndex = [self.legendIndex copyWithZone: zone];
	copyScatter3d.name = [self.name copyWithZone: zone];
	copyScatter3d.stack = [self.stack copyWithZone: zone];
	copyScatter3d.type = [self.type copyWithZone: zone];
	copyScatter3d.xAxis = [self.xAxis copyWithZone: zone];
	copyScatter3d.yAxis = [self.yAxis copyWithZone: zone];
	copyScatter3d.zIndex = [self.zIndex copyWithZone: zone];
	copyScatter3d.tooltip = [self.tooltip copyWithZone: zone];
	copyScatter3d.jitter = [self.jitter copyWithZone: zone];
	copyScatter3d.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyScatter3d.marker = [self.marker copyWithZone: zone];
	copyScatter3d.lineWidth = [self.lineWidth copyWithZone: zone];
	copyScatter3d.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyScatter3d.linecap = [self.linecap copyWithZone: zone];
	copyScatter3d.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyScatter3d.colorIndex = [self.colorIndex copyWithZone: zone];
	copyScatter3d.clip = [self.clip copyWithZone: zone];
	copyScatter3d.negativeColor = [self.negativeColor copyWithZone: zone];
	copyScatter3d.color = [self.color copyWithZone: zone];
	copyScatter3d.pointInterval = [self.pointInterval copyWithZone: zone];
	copyScatter3d.states = [self.states copyWithZone: zone];
	copyScatter3d.colorKey = [self.colorKey copyWithZone: zone];
	copyScatter3d.softThreshold = [self.softThreshold copyWithZone: zone];
	copyScatter3d.point = [self.point copyWithZone: zone];
	copyScatter3d.dataSorting = [self.dataSorting copyWithZone: zone];
	copyScatter3d.label = [self.label copyWithZone: zone];
	copyScatter3d.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyScatter3d.cursor = [self.cursor copyWithZone: zone];
	copyScatter3d.dashStyle = [self.dashStyle copyWithZone: zone];
	copyScatter3d.connectNulls = [self.connectNulls copyWithZone: zone];
	copyScatter3d.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyScatter3d.custom = [self.custom copyWithZone: zone];
	copyScatter3d.stacking = [self.stacking copyWithZone: zone];
	copyScatter3d.animation = [self.animation copyWithZone: zone];
	copyScatter3d.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyScatter3d.threshold = [self.threshold copyWithZone: zone];
	copyScatter3d.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyScatter3d.events = [self.events copyWithZone: zone];
	copyScatter3d.opacity = [self.opacity copyWithZone: zone];
	copyScatter3d.animationLimit = [self.animationLimit copyWithZone: zone];
	copyScatter3d.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyScatter3d.definition = [self.definition copyWithZone: zone];
	copyScatter3d.keys = [self.keys copyWithZone: zone];
	copyScatter3d.selected = [self.selected copyWithZone: zone];
	copyScatter3d.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyScatter3d.accessibility = [self.accessibility copyWithZone: zone];
	copyScatter3d.step = [self.step copyWithZone: zone];
	copyScatter3d.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyScatter3d.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyScatter3d.colorAxis = [self.colorAxis copyWithZone: zone];
	copyScatter3d.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyScatter3d.zones = [self.zones copyWithZone: zone];
	copyScatter3d.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyScatter3d.crisp = [self.crisp copyWithZone: zone];
	copyScatter3d.visible = [self.visible copyWithZone: zone];
	copyScatter3d.linkedTo = [self.linkedTo copyWithZone: zone];
	copyScatter3d.dataLabels = [self.dataLabels copyWithZone: zone];
	copyScatter3d.className = [self.className copyWithZone: zone];
	copyScatter3d.pointStart = [self.pointStart copyWithZone: zone];
	copyScatter3d.connectEnds = [self.connectEnds copyWithZone: zone];
	copyScatter3d.showInLegend = [self.showInLegend copyWithZone: zone];
	return copyScatter3d;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.jitter) {
		params[@"jitter"] = [self.jitter getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setJitter:(HIJitter *)jitter {
	HIJitter *oldValue = _jitter;
	_jitter = jitter;
	[self updateHIObject:oldValue newValue:jitter propertyName:@"jitter"];
}

@end