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
	copyScatter.marker = [self.marker copyWithZone: zone];
	copyScatter.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyScatter.lineWidth = [self.lineWidth copyWithZone: zone];
	copyScatter.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyScatter.tooltip = [self.tooltip copyWithZone: zone];
	copyScatter.linecap = [self.linecap copyWithZone: zone];
	copyScatter.point = [self.point copyWithZone: zone];
	copyScatter.selected = [self.selected copyWithZone: zone];
	copyScatter.colorIndex = [self.colorIndex copyWithZone: zone];
	copyScatter.clip = [self.clip copyWithZone: zone];
	copyScatter.negativeColor = [self.negativeColor copyWithZone: zone];
	copyScatter.color = [self.color copyWithZone: zone];
	copyScatter.pointInterval = [self.pointInterval copyWithZone: zone];
	copyScatter.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyScatter.states = [self.states copyWithZone: zone];
	copyScatter.softThreshold = [self.softThreshold copyWithZone: zone];
	copyScatter.dragDrop = [self.dragDrop copyWithZone: zone];
	copyScatter.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyScatter.borderColor = [self.borderColor copyWithZone: zone];
	copyScatter.className = [self.className copyWithZone: zone];
	copyScatter.dashStyle = [self.dashStyle copyWithZone: zone];
	copyScatter.connectNulls = [self.connectNulls copyWithZone: zone];
	copyScatter.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyScatter.label = [self.label copyWithZone: zone];
	copyScatter.stacking = [self.stacking copyWithZone: zone];
	copyScatter.animation = [self.animation copyWithZone: zone];
	copyScatter.threshold = [self.threshold copyWithZone: zone];
	copyScatter.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyScatter.events = [self.events copyWithZone: zone];
	copyScatter.animationLimit = [self.animationLimit copyWithZone: zone];
	copyScatter.definition = [self.definition copyWithZone: zone];
	copyScatter.keys = [self.keys copyWithZone: zone];
	copyScatter.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyScatter.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyScatter.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyScatter.step = [self.step copyWithZone: zone];
	copyScatter.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyScatter.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyScatter.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyScatter.zones = [self.zones copyWithZone: zone];
	copyScatter.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyScatter.visible = [self.visible copyWithZone: zone];
	copyScatter.linkedTo = [self.linkedTo copyWithZone: zone];
	copyScatter.dataLabels = [self.dataLabels copyWithZone: zone];
	copyScatter.cursor = [self.cursor copyWithZone: zone];
	copyScatter.pointStart = [self.pointStart copyWithZone: zone];
	copyScatter.borderWidth = [self.borderWidth copyWithZone: zone];
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
	return params;
}

@end