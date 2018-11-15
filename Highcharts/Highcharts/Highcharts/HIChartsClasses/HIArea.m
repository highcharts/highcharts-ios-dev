#import "HIChartsJSONSerializableSubclass.h"
#import "HIArea.h"

@implementation HIArea

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"area";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIArea *copyArea = [[HIArea allocWithZone: zone] init];
	copyArea.data = [self.data copyWithZone: zone];
	copyArea.id = [self.id copyWithZone: zone];
	copyArea.index = [self.index copyWithZone: zone];
	copyArea.legendIndex = [self.legendIndex copyWithZone: zone];
	copyArea.name = [self.name copyWithZone: zone];
	copyArea.stack = [self.stack copyWithZone: zone];
	copyArea.type = [self.type copyWithZone: zone];
	copyArea.xAxis = [self.xAxis copyWithZone: zone];
	copyArea.yAxis = [self.yAxis copyWithZone: zone];
	copyArea.zIndex = [self.zIndex copyWithZone: zone];
	copyArea.negativeFillColor = [self.negativeFillColor copyWithZone: zone];
	copyArea.trackByArea = [self.trackByArea copyWithZone: zone];
	copyArea.softThreshold = [self.softThreshold copyWithZone: zone];
	copyArea.fillColor = [self.fillColor copyWithZone: zone];
	copyArea.lineColor = [self.lineColor copyWithZone: zone];
	copyArea.threshold = [self.threshold copyWithZone: zone];
	copyArea.fillOpacity = [self.fillOpacity copyWithZone: zone];
	copyArea.linecap = [self.linecap copyWithZone: zone];
	copyArea.selected = [self.selected copyWithZone: zone];
	copyArea.colorIndex = [self.colorIndex copyWithZone: zone];
	copyArea.clip = [self.clip copyWithZone: zone];
	copyArea.point = [self.point copyWithZone: zone];
	copyArea.color = [self.color copyWithZone: zone];
	copyArea.pointInterval = [self.pointInterval copyWithZone: zone];
	copyArea.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyArea.states = [self.states copyWithZone: zone];
	copyArea.dragDrop = [self.dragDrop copyWithZone: zone];
	copyArea.marker = [self.marker copyWithZone: zone];
	copyArea.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyArea.borderColor = [self.borderColor copyWithZone: zone];
	copyArea.cursor = [self.cursor copyWithZone: zone];
	copyArea.dashStyle = [self.dashStyle copyWithZone: zone];
	copyArea.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyArea.connectNulls = [self.connectNulls copyWithZone: zone];
	copyArea.negativeColor = [self.negativeColor copyWithZone: zone];
	copyArea.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyArea.label = [self.label copyWithZone: zone];
	copyArea.stacking = [self.stacking copyWithZone: zone];
	copyArea.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyArea.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyArea.events = [self.events copyWithZone: zone];
	copyArea.animationLimit = [self.animationLimit copyWithZone: zone];
	copyArea.definition = [self.definition copyWithZone: zone];
	copyArea.keys = [self.keys copyWithZone: zone];
	copyArea.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyArea.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyArea.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyArea.step = [self.step copyWithZone: zone];
	copyArea.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyArea.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyArea.shadow = [self.shadow copyWithZone: zone];
	copyArea.animation = [self.animation copyWithZone: zone];
	copyArea.tooltip = [self.tooltip copyWithZone: zone];
	copyArea.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyArea.zones = [self.zones copyWithZone: zone];
	copyArea.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyArea.connectEnds = [self.connectEnds copyWithZone: zone];
	copyArea.visible = [self.visible copyWithZone: zone];
	copyArea.linkedTo = [self.linkedTo copyWithZone: zone];
	copyArea.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copyArea.dataLabels = [self.dataLabels copyWithZone: zone];
	copyArea.className = [self.className copyWithZone: zone];
	copyArea.pointStart = [self.pointStart copyWithZone: zone];
	copyArea.borderWidth = [self.borderWidth copyWithZone: zone];
	copyArea.lineWidth = [self.lineWidth copyWithZone: zone];
	copyArea.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyArea.showInLegend = [self.showInLegend copyWithZone: zone];
	return copyArea;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.negativeFillColor) {
		params[@"negativeFillColor"] = self.negativeFillColor;
	}
	if (self.trackByArea) {
		params[@"trackByArea"] = self.trackByArea;
	}
	if (self.fillColor) {
		params[@"fillColor"] = self.fillColor;
	}
	if (self.lineColor) {
		params[@"lineColor"] = self.lineColor;
	}
	if (self.fillOpacity) {
		params[@"fillOpacity"] = self.fillOpacity;
	}
	return params;
}

# pragma mark - Setters

-(void)setNegativeFillColor:(NSString *)negativeFillColor {
	_negativeFillColor = negativeFillColor;
	[self updateNSObject:@"negativeFillColor"];
}

-(void)setTrackByArea:(NSNumber *)trackByArea {
	_trackByArea = trackByArea;
	[self updateNSObject:@"trackByArea"];
}

-(void)setFillColor:(NSString *)fillColor {
	_fillColor = fillColor;
	[self updateNSObject:@"fillColor"];
}

-(void)setLineColor:(NSString *)lineColor {
	_lineColor = lineColor;
	[self updateNSObject:@"lineColor"];
}

-(void)setFillOpacity:(NSNumber *)fillOpacity {
	_fillOpacity = fillOpacity;
	[self updateNSObject:@"fillOpacity"];
}

@end