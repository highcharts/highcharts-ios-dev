#import "HIChartsJSONSerializableSubclass.h"
#import "HIDumbbell.h"

@implementation HIDumbbell

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"dumbbell";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDumbbell *copyDumbbell = [[HIDumbbell allocWithZone: zone] init];
	copyDumbbell.connectorColor = [self.connectorColor copyWithZone: zone];
	copyDumbbell.connectorWidth = [self.connectorWidth copyWithZone: zone];
	copyDumbbell.pointPadding = [self.pointPadding copyWithZone: zone];
	copyDumbbell.pointRange = [self.pointRange copyWithZone: zone];
	copyDumbbell.crisp = [self.crisp copyWithZone: zone];
	copyDumbbell.lowMarker = [self.lowMarker copyWithZone: zone];
	copyDumbbell.legendSymbol = [self.legendSymbol copyWithZone: zone];
	copyDumbbell.states = [self.states copyWithZone: zone];
	copyDumbbell.groupPadding = [self.groupPadding copyWithZone: zone];
	copyDumbbell.lowColor = [self.lowColor copyWithZone: zone];
	copyDumbbell.color = [self.color copyWithZone: zone];
	copyDumbbell.tooltip = [self.tooltip copyWithZone: zone];
	copyDumbbell.dataLabels = [self.dataLabels copyWithZone: zone];
	copyDumbbell.dragDrop = [self.dragDrop copyWithZone: zone];
	copyDumbbell.colorKey = [self.colorKey copyWithZone: zone];
	copyDumbbell.fillColor = [self.fillColor copyWithZone: zone];
	copyDumbbell.threshold = [self.threshold copyWithZone: zone];
	copyDumbbell.shadow = [self.shadow copyWithZone: zone];
	copyDumbbell.negativeFillColor = [self.negativeFillColor copyWithZone: zone];
	copyDumbbell.lineColor = [self.lineColor copyWithZone: zone];
	copyDumbbell.linecap = [self.linecap copyWithZone: zone];
	copyDumbbell.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyDumbbell.colorIndex = [self.colorIndex copyWithZone: zone];
	copyDumbbell.clip = [self.clip copyWithZone: zone];
	copyDumbbell.negativeColor = [self.negativeColor copyWithZone: zone];
	copyDumbbell.pointInterval = [self.pointInterval copyWithZone: zone];
	copyDumbbell.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyDumbbell.softThreshold = [self.softThreshold copyWithZone: zone];
	copyDumbbell.point = [self.point copyWithZone: zone];
	copyDumbbell.dataSorting = [self.dataSorting copyWithZone: zone];
	copyDumbbell.marker = [self.marker copyWithZone: zone];
	copyDumbbell.label = [self.label copyWithZone: zone];
	copyDumbbell.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyDumbbell.cursor = [self.cursor copyWithZone: zone];
	copyDumbbell.dashStyle = [self.dashStyle copyWithZone: zone];
	copyDumbbell.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyDumbbell.connectNulls = [self.connectNulls copyWithZone: zone];
	copyDumbbell.inactiveOtherPoints = [self.inactiveOtherPoints copyWithZone: zone];
	copyDumbbell.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyDumbbell.custom = [self.custom copyWithZone: zone];
	copyDumbbell.onPoint = [self.onPoint copyWithZone: zone];
	copyDumbbell.animation = [self.animation copyWithZone: zone];
	copyDumbbell.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyDumbbell.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyDumbbell.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyDumbbell.boostBlending = [self.boostBlending copyWithZone: zone];
	copyDumbbell.events = [self.events copyWithZone: zone];
	copyDumbbell.pointDescriptionFormat = [self.pointDescriptionFormat copyWithZone: zone];
	copyDumbbell.opacity = [self.opacity copyWithZone: zone];
	copyDumbbell.animationLimit = [self.animationLimit copyWithZone: zone];
	copyDumbbell.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyDumbbell.definition = [self.definition copyWithZone: zone];
	copyDumbbell.keys = [self.keys copyWithZone: zone];
	copyDumbbell.selected = [self.selected copyWithZone: zone];
	copyDumbbell.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyDumbbell.accessibility = [self.accessibility copyWithZone: zone];
	copyDumbbell.step = [self.step copyWithZone: zone];
	copyDumbbell.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyDumbbell.sonification = [self.sonification copyWithZone: zone];
	copyDumbbell.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyDumbbell.colorAxis = [self.colorAxis copyWithZone: zone];
	copyDumbbell.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyDumbbell.zones = [self.zones copyWithZone: zone];
	copyDumbbell.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyDumbbell.visible = [self.visible copyWithZone: zone];
	copyDumbbell.linkedTo = [self.linkedTo copyWithZone: zone];
	copyDumbbell.className = [self.className copyWithZone: zone];
	copyDumbbell.pointStart = [self.pointStart copyWithZone: zone];
	copyDumbbell.connectEnds = [self.connectEnds copyWithZone: zone];
	copyDumbbell.showInLegend = [self.showInLegend copyWithZone: zone];
	copyDumbbell.data = [self.data copyWithZone: zone];
	copyDumbbell.id = [self.id copyWithZone: zone];
	copyDumbbell.index = [self.index copyWithZone: zone];
	copyDumbbell.legendIndex = [self.legendIndex copyWithZone: zone];
	copyDumbbell.name = [self.name copyWithZone: zone];
	copyDumbbell.stack = [self.stack copyWithZone: zone];
	copyDumbbell.type = [self.type copyWithZone: zone];
	copyDumbbell.xAxis = [self.xAxis copyWithZone: zone];
	copyDumbbell.yAxis = [self.yAxis copyWithZone: zone];
	copyDumbbell.zIndex = [self.zIndex copyWithZone: zone];
	return copyDumbbell;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.connectorColor) {
		params[@"connectorColor"] = self.connectorColor;
	}
	if (self.connectorWidth) {
		params[@"connectorWidth"] = self.connectorWidth;
	}
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	if (self.pointRange) {
		params[@"pointRange"] = self.pointRange;
	}
	if (self.lowMarker) {
		params[@"lowMarker"] = [self.lowMarker getParams];
	}
	if (self.groupPadding) {
		params[@"groupPadding"] = self.groupPadding;
	}
	if (self.lowColor) {
		params[@"lowColor"] = [self.lowColor getData];
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
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

-(void)setConnectorColor:(NSString *)connectorColor {
	NSString *oldValue = _connectorColor;
	_connectorColor = connectorColor;
	[self updateNSObject:oldValue newValue:connectorColor propertyName:@"connectorColor"];
}

-(void)setConnectorWidth:(NSNumber *)connectorWidth {
	NSNumber *oldValue = _connectorWidth;
	_connectorWidth = connectorWidth;
	[self updateNSObject:oldValue newValue:connectorWidth propertyName:@"connectorWidth"];
}

-(void)setPointPadding:(NSNumber *)pointPadding {
	NSNumber *oldValue = _pointPadding;
	_pointPadding = pointPadding;
	[self updateNSObject:oldValue newValue:pointPadding propertyName:@"pointPadding"];
}

-(void)setPointRange:(NSNumber *)pointRange {
	NSNumber *oldValue = _pointRange;
	_pointRange = pointRange;
	[self updateNSObject:oldValue newValue:pointRange propertyName:@"pointRange"];
}

-(void)setLowMarker:(HILowMarker *)lowMarker {
	HILowMarker *oldValue = _lowMarker;
	_lowMarker = lowMarker;
	[self updateHIObject:oldValue newValue:lowMarker propertyName:@"lowMarker"];
}

-(void)setGroupPadding:(NSNumber *)groupPadding {
	NSNumber *oldValue = _groupPadding;
	_groupPadding = groupPadding;
	[self updateNSObject:oldValue newValue:groupPadding propertyName:@"groupPadding"];
}

-(void)setLowColor:(HIColor *)lowColor {
	HIColor *oldValue = _lowColor;
	_lowColor = lowColor;
	[self updateHIObject:oldValue newValue:lowColor propertyName:@"lowColor"];
}

-(void)setFillColor:(HIColor *)fillColor {
	HIColor *oldValue = _fillColor;
	_fillColor = fillColor;
	[self updateHIObject:oldValue newValue:fillColor propertyName:@"fillColor"];
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