#import "HIChartsJSONSerializableSubclass.h"
#import "HILollipop.h"

@implementation HILollipop

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"lollipop";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HILollipop *copyLollipop = [[HILollipop allocWithZone: zone] init];
	copyLollipop.data = [self.data copyWithZone: zone];
	copyLollipop.id = [self.id copyWithZone: zone];
	copyLollipop.index = [self.index copyWithZone: zone];
	copyLollipop.legendIndex = [self.legendIndex copyWithZone: zone];
	copyLollipop.name = [self.name copyWithZone: zone];
	copyLollipop.stack = [self.stack copyWithZone: zone];
	copyLollipop.type = [self.type copyWithZone: zone];
	copyLollipop.xAxis = [self.xAxis copyWithZone: zone];
	copyLollipop.yAxis = [self.yAxis copyWithZone: zone];
	copyLollipop.zIndex = [self.zIndex copyWithZone: zone];
	copyLollipop.pointRange = [self.pointRange copyWithZone: zone];
	copyLollipop.dataLabels = [self.dataLabels copyWithZone: zone];
	copyLollipop.connectorColor = [self.connectorColor copyWithZone: zone];
	copyLollipop.connectorWidth = [self.connectorWidth copyWithZone: zone];
	copyLollipop.crisp = [self.crisp copyWithZone: zone];
	copyLollipop.pointPadding = [self.pointPadding copyWithZone: zone];
	copyLollipop.groupPadding = [self.groupPadding copyWithZone: zone];
	copyLollipop.color = [self.color copyWithZone: zone];
	copyLollipop.tooltip = [self.tooltip copyWithZone: zone];
	copyLollipop.dragDrop = [self.dragDrop copyWithZone: zone];
	copyLollipop.colorKey = [self.colorKey copyWithZone: zone];
	copyLollipop.threshold = [self.threshold copyWithZone: zone];
	copyLollipop.shadow = [self.shadow copyWithZone: zone];
	copyLollipop.negativeFillColor = [self.negativeFillColor copyWithZone: zone];
	copyLollipop.legendSymbol = [self.legendSymbol copyWithZone: zone];
	copyLollipop.lineColor = [self.lineColor copyWithZone: zone];
	copyLollipop.linecap = [self.linecap copyWithZone: zone];
	copyLollipop.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyLollipop.colorIndex = [self.colorIndex copyWithZone: zone];
	copyLollipop.clip = [self.clip copyWithZone: zone];
	copyLollipop.negativeColor = [self.negativeColor copyWithZone: zone];
	copyLollipop.pointInterval = [self.pointInterval copyWithZone: zone];
	copyLollipop.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyLollipop.states = [self.states copyWithZone: zone];
	copyLollipop.softThreshold = [self.softThreshold copyWithZone: zone];
	copyLollipop.point = [self.point copyWithZone: zone];
	copyLollipop.dataSorting = [self.dataSorting copyWithZone: zone];
	copyLollipop.marker = [self.marker copyWithZone: zone];
	copyLollipop.label = [self.label copyWithZone: zone];
	copyLollipop.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyLollipop.cursor = [self.cursor copyWithZone: zone];
	copyLollipop.dashStyle = [self.dashStyle copyWithZone: zone];
	copyLollipop.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyLollipop.connectNulls = [self.connectNulls copyWithZone: zone];
	copyLollipop.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyLollipop.custom = [self.custom copyWithZone: zone];
	copyLollipop.onPoint = [self.onPoint copyWithZone: zone];
	copyLollipop.animation = [self.animation copyWithZone: zone];
	copyLollipop.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyLollipop.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyLollipop.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyLollipop.events = [self.events copyWithZone: zone];
	copyLollipop.opacity = [self.opacity copyWithZone: zone];
	copyLollipop.animationLimit = [self.animationLimit copyWithZone: zone];
	copyLollipop.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyLollipop.definition = [self.definition copyWithZone: zone];
	copyLollipop.keys = [self.keys copyWithZone: zone];
	copyLollipop.selected = [self.selected copyWithZone: zone];
	copyLollipop.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyLollipop.accessibility = [self.accessibility copyWithZone: zone];
	copyLollipop.step = [self.step copyWithZone: zone];
	copyLollipop.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyLollipop.sonification = [self.sonification copyWithZone: zone];
	copyLollipop.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyLollipop.colorAxis = [self.colorAxis copyWithZone: zone];
	copyLollipop.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyLollipop.zones = [self.zones copyWithZone: zone];
	copyLollipop.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyLollipop.visible = [self.visible copyWithZone: zone];
	copyLollipop.linkedTo = [self.linkedTo copyWithZone: zone];
	copyLollipop.className = [self.className copyWithZone: zone];
	copyLollipop.pointStart = [self.pointStart copyWithZone: zone];
	copyLollipop.connectEnds = [self.connectEnds copyWithZone: zone];
	copyLollipop.showInLegend = [self.showInLegend copyWithZone: zone];
	return copyLollipop;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.pointRange) {
		params[@"pointRange"] = self.pointRange;
	}
	if (self.connectorColor) {
		params[@"connectorColor"] = self.connectorColor;
	}
	if (self.connectorWidth) {
		params[@"connectorWidth"] = self.connectorWidth;
	}
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	if (self.groupPadding) {
		params[@"groupPadding"] = self.groupPadding;
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

-(void)setPointRange:(NSNumber *)pointRange {
	NSNumber *oldValue = _pointRange;
	_pointRange = pointRange;
	[self updateNSObject:oldValue newValue:pointRange propertyName:@"pointRange"];
}

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

-(void)setGroupPadding:(NSNumber *)groupPadding {
	NSNumber *oldValue = _groupPadding;
	_groupPadding = groupPadding;
	[self updateNSObject:oldValue newValue:groupPadding propertyName:@"groupPadding"];
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