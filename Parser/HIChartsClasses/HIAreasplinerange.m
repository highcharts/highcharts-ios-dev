#import "HIChartsJSONSerializableSubclass.h"
#import "HIAreasplinerange.h"

@implementation HIAreasplinerange

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"areasplinerange";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIAreasplinerange *copyAreasplinerange = [[HIAreasplinerange allocWithZone: zone] init];
	copyAreasplinerange.color = [self.color copyWithZone: zone];
	copyAreasplinerange.data = [self.data copyWithZone: zone];
	copyAreasplinerange.fillColor = [self.fillColor copyWithZone: zone];
	copyAreasplinerange.fillOpacity = [self.fillOpacity copyWithZone: zone];
	copyAreasplinerange.id = [self.id copyWithZone: zone];
	copyAreasplinerange.index = [self.index copyWithZone: zone];
	copyAreasplinerange.legendIndex = [self.legendIndex copyWithZone: zone];
	copyAreasplinerange.name = [self.name copyWithZone: zone];
	copyAreasplinerange.type = [self.type copyWithZone: zone];
	copyAreasplinerange.xAxis = [self.xAxis copyWithZone: zone];
	copyAreasplinerange.yAxis = [self.yAxis copyWithZone: zone];
	copyAreasplinerange.zIndex = [self.zIndex copyWithZone: zone];
	copyAreasplinerange.tooltip = [self.tooltip copyWithZone: zone];
	copyAreasplinerange.dataLabels = [self.dataLabels copyWithZone: zone];
	copyAreasplinerange.dragDrop = [self.dragDrop copyWithZone: zone];
	copyAreasplinerange.colorKey = [self.colorKey copyWithZone: zone];
	copyAreasplinerange.trackByArea = [self.trackByArea copyWithZone: zone];
	copyAreasplinerange.threshold = [self.threshold copyWithZone: zone];
	copyAreasplinerange.shadow = [self.shadow copyWithZone: zone];
	copyAreasplinerange.lineWidth = [self.lineWidth copyWithZone: zone];
	copyAreasplinerange.negativeFillColor = [self.negativeFillColor copyWithZone: zone];
	copyAreasplinerange.lineColor = [self.lineColor copyWithZone: zone];
	copyAreasplinerange.linecap = [self.linecap copyWithZone: zone];
	copyAreasplinerange.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyAreasplinerange.selected = [self.selected copyWithZone: zone];
	copyAreasplinerange.colorIndex = [self.colorIndex copyWithZone: zone];
	copyAreasplinerange.clip = [self.clip copyWithZone: zone];
	copyAreasplinerange.negativeColor = [self.negativeColor copyWithZone: zone];
	copyAreasplinerange.pointInterval = [self.pointInterval copyWithZone: zone];
	copyAreasplinerange.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyAreasplinerange.states = [self.states copyWithZone: zone];
	copyAreasplinerange.softThreshold = [self.softThreshold copyWithZone: zone];
	copyAreasplinerange.point = [self.point copyWithZone: zone];
	copyAreasplinerange.dataSorting = [self.dataSorting copyWithZone: zone];
	copyAreasplinerange.marker = [self.marker copyWithZone: zone];
	copyAreasplinerange.label = [self.label copyWithZone: zone];
	copyAreasplinerange.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyAreasplinerange.cursor = [self.cursor copyWithZone: zone];
	copyAreasplinerange.dashStyle = [self.dashStyle copyWithZone: zone];
	copyAreasplinerange.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyAreasplinerange.connectNulls = [self.connectNulls copyWithZone: zone];
	copyAreasplinerange.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyAreasplinerange.custom = [self.custom copyWithZone: zone];
	copyAreasplinerange.animation = [self.animation copyWithZone: zone];
	copyAreasplinerange.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyAreasplinerange.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyAreasplinerange.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyAreasplinerange.events = [self.events copyWithZone: zone];
	copyAreasplinerange.opacity = [self.opacity copyWithZone: zone];
	copyAreasplinerange.animationLimit = [self.animationLimit copyWithZone: zone];
	copyAreasplinerange.definition = [self.definition copyWithZone: zone];
	copyAreasplinerange.keys = [self.keys copyWithZone: zone];
	copyAreasplinerange.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyAreasplinerange.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyAreasplinerange.accessibility = [self.accessibility copyWithZone: zone];
	copyAreasplinerange.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyAreasplinerange.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyAreasplinerange.colorAxis = [self.colorAxis copyWithZone: zone];
	copyAreasplinerange.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyAreasplinerange.zones = [self.zones copyWithZone: zone];
	copyAreasplinerange.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyAreasplinerange.crisp = [self.crisp copyWithZone: zone];
	copyAreasplinerange.visible = [self.visible copyWithZone: zone];
	copyAreasplinerange.linkedTo = [self.linkedTo copyWithZone: zone];
	copyAreasplinerange.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyAreasplinerange.className = [self.className copyWithZone: zone];
	copyAreasplinerange.pointStart = [self.pointStart copyWithZone: zone];
	copyAreasplinerange.connectEnds = [self.connectEnds copyWithZone: zone];
	copyAreasplinerange.showInLegend = [self.showInLegend copyWithZone: zone];
	return copyAreasplinerange;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.fillOpacity) {
		params[@"fillOpacity"] = self.fillOpacity;
	}
	if (self.trackByArea) {
		params[@"trackByArea"] = self.trackByArea;
	}
	if (self.negativeFillColor) {
		params[@"negativeFillColor"] = [self.negativeFillColor getData];
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	return params;
}

# pragma mark - Setters

-(void)setFillColor:(HIColor *)fillColor {
	HIColor *oldValue = _fillColor;
	_fillColor = fillColor;
	[self updateHIObject:oldValue newValue:fillColor propertyName:@"fillColor"];
}

-(void)setFillOpacity:(NSNumber *)fillOpacity {
	NSNumber *oldValue = _fillOpacity;
	_fillOpacity = fillOpacity;
	[self updateNSObject:oldValue newValue:fillOpacity propertyName:@"fillOpacity"];
}

-(void)setTrackByArea:(NSNumber *)trackByArea {
	NSNumber *oldValue = _trackByArea;
	_trackByArea = trackByArea;
	[self updateNSObject:oldValue newValue:trackByArea propertyName:@"trackByArea"];
}

-(void)setNegativeFillColor:(HIColor *)negativeFillColor {
	HIColor *oldValue = _negativeFillColor;
	_negativeFillColor = negativeFillColor;
	[self updateHIObject:oldValue newValue:negativeFillColor propertyName:@"negativeFillColor"];
}

-(void)setLineColor:(HIColor *)lineColor {
	HIColor *oldValue = _lineColor;
	_lineColor = lineColor;
	[self updateHIObject:oldValue newValue:lineColor propertyName:@"lineColor"];
}

@end