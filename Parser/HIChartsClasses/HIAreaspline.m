#import "HIChartsJSONSerializableSubclass.h"
#import "HIAreaspline.h"

@implementation HIAreaspline

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"areaspline";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIAreaspline *copyAreaspline = [[HIAreaspline allocWithZone: zone] init];
	copyAreaspline.color = [self.color copyWithZone: zone];
	copyAreaspline.fillColor = [self.fillColor copyWithZone: zone];
	copyAreaspline.fillOpacity = [self.fillOpacity copyWithZone: zone];
	copyAreaspline.negativeFillColor = [self.negativeFillColor copyWithZone: zone];
	copyAreaspline.trackByArea = [self.trackByArea copyWithZone: zone];
	copyAreaspline.lineColor = [self.lineColor copyWithZone: zone];
	copyAreaspline.threshold = [self.threshold copyWithZone: zone];
	copyAreaspline.linecap = [self.linecap copyWithZone: zone];
	copyAreaspline.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyAreaspline.colorIndex = [self.colorIndex copyWithZone: zone];
	copyAreaspline.clip = [self.clip copyWithZone: zone];
	copyAreaspline.negativeColor = [self.negativeColor copyWithZone: zone];
	copyAreaspline.pointInterval = [self.pointInterval copyWithZone: zone];
	copyAreaspline.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyAreaspline.states = [self.states copyWithZone: zone];
	copyAreaspline.colorKey = [self.colorKey copyWithZone: zone];
	copyAreaspline.softThreshold = [self.softThreshold copyWithZone: zone];
	copyAreaspline.dragDrop = [self.dragDrop copyWithZone: zone];
	copyAreaspline.point = [self.point copyWithZone: zone];
	copyAreaspline.dataSorting = [self.dataSorting copyWithZone: zone];
	copyAreaspline.marker = [self.marker copyWithZone: zone];
	copyAreaspline.tooltip = [self.tooltip copyWithZone: zone];
	copyAreaspline.label = [self.label copyWithZone: zone];
	copyAreaspline.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyAreaspline.cursor = [self.cursor copyWithZone: zone];
	copyAreaspline.dashStyle = [self.dashStyle copyWithZone: zone];
	copyAreaspline.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyAreaspline.connectNulls = [self.connectNulls copyWithZone: zone];
	copyAreaspline.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyAreaspline.custom = [self.custom copyWithZone: zone];
	copyAreaspline.onPoint = [self.onPoint copyWithZone: zone];
	copyAreaspline.stacking = [self.stacking copyWithZone: zone];
	copyAreaspline.animation = [self.animation copyWithZone: zone];
	copyAreaspline.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyAreaspline.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyAreaspline.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyAreaspline.events = [self.events copyWithZone: zone];
	copyAreaspline.opacity = [self.opacity copyWithZone: zone];
	copyAreaspline.animationLimit = [self.animationLimit copyWithZone: zone];
	copyAreaspline.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyAreaspline.definition = [self.definition copyWithZone: zone];
	copyAreaspline.keys = [self.keys copyWithZone: zone];
	copyAreaspline.selected = [self.selected copyWithZone: zone];
	copyAreaspline.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyAreaspline.accessibility = [self.accessibility copyWithZone: zone];
	copyAreaspline.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyAreaspline.shadow = [self.shadow copyWithZone: zone];
	copyAreaspline.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyAreaspline.colorAxis = [self.colorAxis copyWithZone: zone];
	copyAreaspline.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyAreaspline.zones = [self.zones copyWithZone: zone];
	copyAreaspline.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyAreaspline.lineWidth = [self.lineWidth copyWithZone: zone];
	copyAreaspline.crisp = [self.crisp copyWithZone: zone];
	copyAreaspline.visible = [self.visible copyWithZone: zone];
	copyAreaspline.linkedTo = [self.linkedTo copyWithZone: zone];
	copyAreaspline.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyAreaspline.dataLabels = [self.dataLabels copyWithZone: zone];
	copyAreaspline.className = [self.className copyWithZone: zone];
	copyAreaspline.pointStart = [self.pointStart copyWithZone: zone];
	copyAreaspline.connectEnds = [self.connectEnds copyWithZone: zone];
	copyAreaspline.showInLegend = [self.showInLegend copyWithZone: zone];
	copyAreaspline.data = [self.data copyWithZone: zone];
	copyAreaspline.id = [self.id copyWithZone: zone];
	copyAreaspline.index = [self.index copyWithZone: zone];
	copyAreaspline.legendIndex = [self.legendIndex copyWithZone: zone];
	copyAreaspline.name = [self.name copyWithZone: zone];
	copyAreaspline.stack = [self.stack copyWithZone: zone];
	copyAreaspline.type = [self.type copyWithZone: zone];
	copyAreaspline.xAxis = [self.xAxis copyWithZone: zone];
	copyAreaspline.yAxis = [self.yAxis copyWithZone: zone];
	copyAreaspline.zIndex = [self.zIndex copyWithZone: zone];
	return copyAreaspline;
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
	if (self.negativeFillColor) {
		params[@"negativeFillColor"] = [self.negativeFillColor getData];
	}
	if (self.trackByArea) {
		params[@"trackByArea"] = self.trackByArea;
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

-(void)setFillOpacity:(id)fillOpacity {
	id oldValue = _fillOpacity;
	_fillOpacity = fillOpacity;
	[self updateNSObject:oldValue newValue:fillOpacity propertyName:@"fillOpacity"];
}

-(void)setNegativeFillColor:(HIColor *)negativeFillColor {
	HIColor *oldValue = _negativeFillColor;
	_negativeFillColor = negativeFillColor;
	[self updateHIObject:oldValue newValue:negativeFillColor propertyName:@"negativeFillColor"];
}

-(void)setTrackByArea:(NSNumber *)trackByArea {
	NSNumber *oldValue = _trackByArea;
	_trackByArea = trackByArea;
	[self updateNSObject:oldValue newValue:trackByArea propertyName:@"trackByArea"];
}

-(void)setLineColor:(HIColor *)lineColor {
	HIColor *oldValue = _lineColor;
	_lineColor = lineColor;
	[self updateHIObject:oldValue newValue:lineColor propertyName:@"lineColor"];
}

@end