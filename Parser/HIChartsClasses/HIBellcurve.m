#import "HIChartsJSONSerializableSubclass.h"
#import "HIBellcurve.h"

@implementation HIBellcurve

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"bellcurve";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIBellcurve *copyBellcurve = [[HIBellcurve allocWithZone: zone] init];
	copyBellcurve.marker = [self.marker copyWithZone: zone];
	copyBellcurve.intervals = [self.intervals copyWithZone: zone];
	copyBellcurve.pointsInInterval = [self.pointsInInterval copyWithZone: zone];
	copyBellcurve.negativeFillColor = [self.negativeFillColor copyWithZone: zone];
	copyBellcurve.lineColor = [self.lineColor copyWithZone: zone];
	copyBellcurve.softThreshold = [self.softThreshold copyWithZone: zone];
	copyBellcurve.fillColor = [self.fillColor copyWithZone: zone];
	copyBellcurve.trackByArea = [self.trackByArea copyWithZone: zone];
	copyBellcurve.threshold = [self.threshold copyWithZone: zone];
	copyBellcurve.fillOpacity = [self.fillOpacity copyWithZone: zone];
	copyBellcurve.linecap = [self.linecap copyWithZone: zone];
	copyBellcurve.selected = [self.selected copyWithZone: zone];
	copyBellcurve.colorIndex = [self.colorIndex copyWithZone: zone];
	copyBellcurve.clip = [self.clip copyWithZone: zone];
	copyBellcurve.point = [self.point copyWithZone: zone];
	copyBellcurve.color = [self.color copyWithZone: zone];
	copyBellcurve.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyBellcurve.states = [self.states copyWithZone: zone];
	copyBellcurve.tooltip = [self.tooltip copyWithZone: zone];
	copyBellcurve.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyBellcurve.borderColor = [self.borderColor copyWithZone: zone];
	copyBellcurve.cursor = [self.cursor copyWithZone: zone];
	copyBellcurve.dashStyle = [self.dashStyle copyWithZone: zone];
	copyBellcurve.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyBellcurve.negativeColor = [self.negativeColor copyWithZone: zone];
	copyBellcurve.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyBellcurve.label = [self.label copyWithZone: zone];
	copyBellcurve.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyBellcurve.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyBellcurve.events = [self.events copyWithZone: zone];
	copyBellcurve.animationLimit = [self.animationLimit copyWithZone: zone];
	copyBellcurve.definition = [self.definition copyWithZone: zone];
	copyBellcurve.keys = [self.keys copyWithZone: zone];
	copyBellcurve.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyBellcurve.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyBellcurve.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyBellcurve.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyBellcurve.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyBellcurve.shadow = [self.shadow copyWithZone: zone];
	copyBellcurve.animation = [self.animation copyWithZone: zone];
	copyBellcurve.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyBellcurve.zones = [self.zones copyWithZone: zone];
	copyBellcurve.connectEnds = [self.connectEnds copyWithZone: zone];
	copyBellcurve.visible = [self.visible copyWithZone: zone];
	copyBellcurve.linkedTo = [self.linkedTo copyWithZone: zone];
	copyBellcurve.dataLabels = [self.dataLabels copyWithZone: zone];
	copyBellcurve.className = [self.className copyWithZone: zone];
	copyBellcurve.pointStart = [self.pointStart copyWithZone: zone];
	copyBellcurve.borderWidth = [self.borderWidth copyWithZone: zone];
	copyBellcurve.lineWidth = [self.lineWidth copyWithZone: zone];
	copyBellcurve.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyBellcurve.showInLegend = [self.showInLegend copyWithZone: zone];
	copyBellcurve.baseSeries = [self.baseSeries copyWithZone: zone];
	copyBellcurve.id = [self.id copyWithZone: zone];
	copyBellcurve.index = [self.index copyWithZone: zone];
	copyBellcurve.legendIndex = [self.legendIndex copyWithZone: zone];
	copyBellcurve.name = [self.name copyWithZone: zone];
	copyBellcurve.stack = [self.stack copyWithZone: zone];
	copyBellcurve.type = [self.type copyWithZone: zone];
	copyBellcurve.xAxis = [self.xAxis copyWithZone: zone];
	copyBellcurve.yAxis = [self.yAxis copyWithZone: zone];
	copyBellcurve.zIndex = [self.zIndex copyWithZone: zone];
	return copyBellcurve;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.intervals) {
		params[@"intervals"] = self.intervals;
	}
	if (self.pointsInInterval) {
		params[@"pointsInInterval"] = self.pointsInInterval;
	}
	if (self.negativeFillColor) {
		params[@"negativeFillColor"] = [self.negativeFillColor getData];
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.trackByArea) {
		params[@"trackByArea"] = self.trackByArea;
	}
	if (self.fillOpacity) {
		params[@"fillOpacity"] = self.fillOpacity;
	}
	if (self.baseSeries) {
		params[@"baseSeries"] = self.baseSeries;
	}
	return params;
}

# pragma mark - Setters

-(void)setIntervals:(NSNumber *)intervals {
	_intervals = intervals;
	[self updateNSObject:@"intervals"];
}

-(void)setPointsInInterval:(NSNumber *)pointsInInterval {
	_pointsInInterval = pointsInInterval;
	[self updateNSObject:@"pointsInInterval"];
}

-(void)setNegativeFillColor:(HIColor *)negativeFillColor {
	HIColor *oldValue = _negativeFillColor;
	if(self.negativeFillColor) {
		[self removeObserver:self forKeyPath:@"negativeFillColor.isUpdated"];
	}
	_negativeFillColor = negativeFillColor;
	[self updateHIObject:oldValue newValue:negativeFillColor propertyName:@"negativeFillColor"];
}

-(void)setLineColor:(HIColor *)lineColor {
	HIColor *oldValue = _lineColor;
	if(self.lineColor) {
		[self removeObserver:self forKeyPath:@"lineColor.isUpdated"];
	}
	_lineColor = lineColor;
	[self updateHIObject:oldValue newValue:lineColor propertyName:@"lineColor"];
}

-(void)setFillColor:(HIColor *)fillColor {
	HIColor *oldValue = _fillColor;
	if(self.fillColor) {
		[self removeObserver:self forKeyPath:@"fillColor.isUpdated"];
	}
	_fillColor = fillColor;
	[self updateHIObject:oldValue newValue:fillColor propertyName:@"fillColor"];
}

-(void)setTrackByArea:(NSNumber *)trackByArea {
	_trackByArea = trackByArea;
	[self updateNSObject:@"trackByArea"];
}

-(void)setFillOpacity:(NSNumber *)fillOpacity {
	_fillOpacity = fillOpacity;
	[self updateNSObject:@"fillOpacity"];
}

-(void)setBaseSeries:(id)baseSeries {
	_baseSeries = baseSeries;
	[self updateNSObject:@"baseSeries"];
}

@end