#import "HIChartsJSONSerializableSubclass.h"
#import "HIArearange.h"

@implementation HIArearange

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"arearange";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIArearange *copyArearange = [[HIArearange allocWithZone: zone] init];
	copyArearange.tooltip = [self.tooltip copyWithZone: zone];
	copyArearange.dataLabels = [self.dataLabels copyWithZone: zone];
	copyArearange.trackByArea = [self.trackByArea copyWithZone: zone];
	copyArearange.threshold = [self.threshold copyWithZone: zone];
	copyArearange.shadow = [self.shadow copyWithZone: zone];
	copyArearange.lineWidth = [self.lineWidth copyWithZone: zone];
	copyArearange.negativeFillColor = [self.negativeFillColor copyWithZone: zone];
	copyArearange.softThreshold = [self.softThreshold copyWithZone: zone];
	copyArearange.fillColor = [self.fillColor copyWithZone: zone];
	copyArearange.lineColor = [self.lineColor copyWithZone: zone];
	copyArearange.fillOpacity = [self.fillOpacity copyWithZone: zone];
	copyArearange.linecap = [self.linecap copyWithZone: zone];
	copyArearange.selected = [self.selected copyWithZone: zone];
	copyArearange.colorIndex = [self.colorIndex copyWithZone: zone];
	copyArearange.point = [self.point copyWithZone: zone];
	copyArearange.color = [self.color copyWithZone: zone];
	copyArearange.pointInterval = [self.pointInterval copyWithZone: zone];
	copyArearange.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyArearange.states = [self.states copyWithZone: zone];
	copyArearange.marker = [self.marker copyWithZone: zone];
	copyArearange.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyArearange.cursor = [self.cursor copyWithZone: zone];
	copyArearange.dashStyle = [self.dashStyle copyWithZone: zone];
	copyArearange.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyArearange.connectNulls = [self.connectNulls copyWithZone: zone];
	copyArearange.negativeColor = [self.negativeColor copyWithZone: zone];
	copyArearange.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyArearange.label = [self.label copyWithZone: zone];
	copyArearange.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyArearange.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyArearange.events = [self.events copyWithZone: zone];
	copyArearange.animationLimit = [self.animationLimit copyWithZone: zone];
	copyArearange.definition = [self.definition copyWithZone: zone];
	copyArearange.keys = [self.keys copyWithZone: zone];
	copyArearange.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyArearange.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyArearange.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyArearange.step = [self.step copyWithZone: zone];
	copyArearange.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyArearange.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyArearange.animation = [self.animation copyWithZone: zone];
	copyArearange.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyArearange.zones = [self.zones copyWithZone: zone];
	copyArearange.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyArearange.connectEnds = [self.connectEnds copyWithZone: zone];
	copyArearange.visible = [self.visible copyWithZone: zone];
	copyArearange.linkedTo = [self.linkedTo copyWithZone: zone];
	copyArearange.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copyArearange.className = [self.className copyWithZone: zone];
	copyArearange.pointStart = [self.pointStart copyWithZone: zone];
	copyArearange.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyArearange.showInLegend = [self.showInLegend copyWithZone: zone];
	copyArearange.data = [self.data copyWithZone: zone];
	copyArearange.id = [self.id copyWithZone: zone];
	copyArearange.index = [self.index copyWithZone: zone];
	copyArearange.legendIndex = [self.legendIndex copyWithZone: zone];
	copyArearange.name = [self.name copyWithZone: zone];
	copyArearange.type = [self.type copyWithZone: zone];
	copyArearange.xAxis = [self.xAxis copyWithZone: zone];
	copyArearange.yAxis = [self.yAxis copyWithZone: zone];
	copyArearange.zIndex = [self.zIndex copyWithZone: zone];
	return copyArearange;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.trackByArea) {
		params[@"trackByArea"] = self.trackByArea;
	}
	if (self.negativeFillColor) {
		params[@"negativeFillColor"] = [self.negativeFillColor getData];
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	if (self.fillOpacity) {
		params[@"fillOpacity"] = self.fillOpacity;
	}
	return params;
}

# pragma mark - Setters

-(void)setTrackByArea:(NSNumber *)trackByArea {
	_trackByArea = trackByArea;
	[self updateNSObject:@"trackByArea"];
}

-(void)setNegativeFillColor:(HIColor *)negativeFillColor {
	HIColor *oldValue = _negativeFillColor;
	if(self.negativeFillColor) {
		[self removeObserver:self forKeyPath:@"negativeFillColor.isUpdated"];
	}
	_negativeFillColor = negativeFillColor;
	[self updateHIObject:oldValue newValue:negativeFillColor propertyName:@"negativeFillColor"];
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

-(void)setFillOpacity:(NSNumber *)fillOpacity {
	_fillOpacity = fillOpacity;
	[self updateNSObject:@"fillOpacity"];
}

@end