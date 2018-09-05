#import "HIChartsJSONSerializableSubclass.h"
#import "HIPareto.h"

@implementation HIPareto

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"pareto";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPareto *copyPareto = [[HIPareto allocWithZone: zone] init];
	copyPareto.linecap = [self.linecap copyWithZone: zone];
	copyPareto.point = [self.point copyWithZone: zone];
	copyPareto.selected = [self.selected copyWithZone: zone];
	copyPareto.colorIndex = [self.colorIndex copyWithZone: zone];
	copyPareto.clip = [self.clip copyWithZone: zone];
	copyPareto.color = [self.color copyWithZone: zone];
	copyPareto.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyPareto.states = [self.states copyWithZone: zone];
	copyPareto.tooltip = [self.tooltip copyWithZone: zone];
	copyPareto.marker = [self.marker copyWithZone: zone];
	copyPareto.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyPareto.className = [self.className copyWithZone: zone];
	copyPareto.dashStyle = [self.dashStyle copyWithZone: zone];
	copyPareto.connectNulls = [self.connectNulls copyWithZone: zone];
	copyPareto.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyPareto.label = [self.label copyWithZone: zone];
	copyPareto.animation = [self.animation copyWithZone: zone];
	copyPareto.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyPareto.events = [self.events copyWithZone: zone];
	copyPareto.animationLimit = [self.animationLimit copyWithZone: zone];
	copyPareto.definition = [self.definition copyWithZone: zone];
	copyPareto.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyPareto.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyPareto.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyPareto.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyPareto.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyPareto.lineWidth = [self.lineWidth copyWithZone: zone];
	copyPareto.visible = [self.visible copyWithZone: zone];
	copyPareto.linkedTo = [self.linkedTo copyWithZone: zone];
	copyPareto.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyPareto.dataLabels = [self.dataLabels copyWithZone: zone];
	copyPareto.cursor = [self.cursor copyWithZone: zone];
	copyPareto.connectEnds = [self.connectEnds copyWithZone: zone];
	copyPareto.showInLegend = [self.showInLegend copyWithZone: zone];
	copyPareto.baseSeries = [self.baseSeries copyWithZone: zone];
	copyPareto.id = [self.id copyWithZone: zone];
	copyPareto.index = [self.index copyWithZone: zone];
	copyPareto.legendIndex = [self.legendIndex copyWithZone: zone];
	copyPareto.name = [self.name copyWithZone: zone];
	copyPareto.stack = [self.stack copyWithZone: zone];
	copyPareto.type = [self.type copyWithZone: zone];
	copyPareto.xAxis = [self.xAxis copyWithZone: zone];
	copyPareto.yAxis = [self.yAxis copyWithZone: zone];
	copyPareto.zIndex = [self.zIndex copyWithZone: zone];
	return copyPareto;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.baseSeries) {
		params[@"baseSeries"] = self.baseSeries;
	}
	return params;
}

# pragma mark - Setters

-(void)setBaseSeries:(id)baseSeries {
	_baseSeries = baseSeries;
	[self updateNSObject:@"baseSeries"];
}

@end