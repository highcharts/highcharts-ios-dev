#import "HIChartsJSONSerializableSubclass.h"
#import "HIStreamgraph.h"

@implementation HIStreamgraph

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"streamgraph";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIStreamgraph *copyStreamgraph = [[HIStreamgraph allocWithZone: zone] init];
	copyStreamgraph.data = [self.data copyWithZone: zone];
	copyStreamgraph.id = [self.id copyWithZone: zone];
	copyStreamgraph.index = [self.index copyWithZone: zone];
	copyStreamgraph.legendIndex = [self.legendIndex copyWithZone: zone];
	copyStreamgraph.name = [self.name copyWithZone: zone];
	copyStreamgraph.stack = [self.stack copyWithZone: zone];
	copyStreamgraph.type = [self.type copyWithZone: zone];
	copyStreamgraph.xAxis = [self.xAxis copyWithZone: zone];
	copyStreamgraph.yAxis = [self.yAxis copyWithZone: zone];
	copyStreamgraph.zIndex = [self.zIndex copyWithZone: zone];
	copyStreamgraph.marker = [self.marker copyWithZone: zone];
	copyStreamgraph.stacking = [self.stacking copyWithZone: zone];
	copyStreamgraph.lineWidth = [self.lineWidth copyWithZone: zone];
	copyStreamgraph.fillOpacity = [self.fillOpacity copyWithZone: zone];
	copyStreamgraph.negativeFillColor = [self.negativeFillColor copyWithZone: zone];
	copyStreamgraph.trackByArea = [self.trackByArea copyWithZone: zone];
	copyStreamgraph.softThreshold = [self.softThreshold copyWithZone: zone];
	copyStreamgraph.fillColor = [self.fillColor copyWithZone: zone];
	copyStreamgraph.lineColor = [self.lineColor copyWithZone: zone];
	copyStreamgraph.threshold = [self.threshold copyWithZone: zone];
	copyStreamgraph.linecap = [self.linecap copyWithZone: zone];
	copyStreamgraph.point = [self.point copyWithZone: zone];
	copyStreamgraph.selected = [self.selected copyWithZone: zone];
	copyStreamgraph.colorIndex = [self.colorIndex copyWithZone: zone];
	copyStreamgraph.clip = [self.clip copyWithZone: zone];
	copyStreamgraph.negativeColor = [self.negativeColor copyWithZone: zone];
	copyStreamgraph.color = [self.color copyWithZone: zone];
	copyStreamgraph.pointInterval = [self.pointInterval copyWithZone: zone];
	copyStreamgraph.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyStreamgraph.states = [self.states copyWithZone: zone];
	copyStreamgraph.dragDrop = [self.dragDrop copyWithZone: zone];
	copyStreamgraph.tooltip = [self.tooltip copyWithZone: zone];
	copyStreamgraph.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyStreamgraph.borderColor = [self.borderColor copyWithZone: zone];
	copyStreamgraph.className = [self.className copyWithZone: zone];
	copyStreamgraph.dashStyle = [self.dashStyle copyWithZone: zone];
	copyStreamgraph.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyStreamgraph.connectNulls = [self.connectNulls copyWithZone: zone];
	copyStreamgraph.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyStreamgraph.label = [self.label copyWithZone: zone];
	copyStreamgraph.animation = [self.animation copyWithZone: zone];
	copyStreamgraph.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyStreamgraph.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyStreamgraph.events = [self.events copyWithZone: zone];
	copyStreamgraph.animationLimit = [self.animationLimit copyWithZone: zone];
	copyStreamgraph.definition = [self.definition copyWithZone: zone];
	copyStreamgraph.keys = [self.keys copyWithZone: zone];
	copyStreamgraph.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyStreamgraph.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyStreamgraph.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyStreamgraph.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyStreamgraph.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyStreamgraph.shadow = [self.shadow copyWithZone: zone];
	copyStreamgraph.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyStreamgraph.zones = [self.zones copyWithZone: zone];
	copyStreamgraph.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyStreamgraph.visible = [self.visible copyWithZone: zone];
	copyStreamgraph.linkedTo = [self.linkedTo copyWithZone: zone];
	copyStreamgraph.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyStreamgraph.dataLabels = [self.dataLabels copyWithZone: zone];
	copyStreamgraph.cursor = [self.cursor copyWithZone: zone];
	copyStreamgraph.pointStart = [self.pointStart copyWithZone: zone];
	copyStreamgraph.borderWidth = [self.borderWidth copyWithZone: zone];
	copyStreamgraph.connectEnds = [self.connectEnds copyWithZone: zone];
	copyStreamgraph.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copyStreamgraph.showInLegend = [self.showInLegend copyWithZone: zone];
	return copyStreamgraph;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.fillOpacity) {
		params[@"fillOpacity"] = self.fillOpacity;
	}
	if (self.negativeFillColor) {
		params[@"negativeFillColor"] = [self.negativeFillColor getData];
	}
	if (self.trackByArea) {
		params[@"trackByArea"] = self.trackByArea;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	return params;
}

# pragma mark - Setters

-(void)setFillOpacity:(NSNumber *)fillOpacity {
	_fillOpacity = fillOpacity;
	[self updateNSObject:@"fillOpacity"];
}

-(void)setNegativeFillColor:(HIColor *)negativeFillColor {
	HIColor *oldValue = _negativeFillColor;
	if(self.negativeFillColor) {
		[self removeObserver:self forKeyPath:@"negativeFillColor.isUpdated"];
	}
	_negativeFillColor = negativeFillColor;
	[self updateHIObject:oldValue newValue:negativeFillColor propertyName:@"negativeFillColor"];
}

-(void)setTrackByArea:(NSNumber *)trackByArea {
	_trackByArea = trackByArea;
	[self updateNSObject:@"trackByArea"];
}

-(void)setFillColor:(HIColor *)fillColor {
	HIColor *oldValue = _fillColor;
	if(self.fillColor) {
		[self removeObserver:self forKeyPath:@"fillColor.isUpdated"];
	}
	_fillColor = fillColor;
	[self updateHIObject:oldValue newValue:fillColor propertyName:@"fillColor"];
}

-(void)setLineColor:(HIColor *)lineColor {
	HIColor *oldValue = _lineColor;
	if(self.lineColor) {
		[self removeObserver:self forKeyPath:@"lineColor.isUpdated"];
	}
	_lineColor = lineColor;
	[self updateHIObject:oldValue newValue:lineColor propertyName:@"lineColor"];
}

@end