#import "HIChartsJSONSerializableSubclass.h"
#import "HIHeatmap.h"

@implementation HIHeatmap

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"heatmap";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIHeatmap *copyHeatmap = [[HIHeatmap allocWithZone: zone] init];
	copyHeatmap.data = [self.data copyWithZone: zone];
	copyHeatmap.id = [self.id copyWithZone: zone];
	copyHeatmap.index = [self.index copyWithZone: zone];
	copyHeatmap.legendIndex = [self.legendIndex copyWithZone: zone];
	copyHeatmap.name = [self.name copyWithZone: zone];
	copyHeatmap.type = [self.type copyWithZone: zone];
	copyHeatmap.xAxis = [self.xAxis copyWithZone: zone];
	copyHeatmap.yAxis = [self.yAxis copyWithZone: zone];
	copyHeatmap.zIndex = [self.zIndex copyWithZone: zone];
	copyHeatmap.pointPadding = [self.pointPadding copyWithZone: zone];
	copyHeatmap.colsize = [self.colsize copyWithZone: zone];
	copyHeatmap.color = [self.color copyWithZone: zone];
	copyHeatmap.tooltip = [self.tooltip copyWithZone: zone];
	copyHeatmap.states = [self.states copyWithZone: zone];
	copyHeatmap.rowsize = [self.rowsize copyWithZone: zone];
	copyHeatmap.colorKey = [self.colorKey copyWithZone: zone];
	copyHeatmap.animation = [self.animation copyWithZone: zone];
	copyHeatmap.nullColor = [self.nullColor copyWithZone: zone];
	copyHeatmap.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyHeatmap.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyHeatmap.selected = [self.selected copyWithZone: zone];
	copyHeatmap.colorIndex = [self.colorIndex copyWithZone: zone];
	copyHeatmap.clip = [self.clip copyWithZone: zone];
	copyHeatmap.negativeColor = [self.negativeColor copyWithZone: zone];
	copyHeatmap.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyHeatmap.dragDrop = [self.dragDrop copyWithZone: zone];
	copyHeatmap.point = [self.point copyWithZone: zone];
	copyHeatmap.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyHeatmap.cursor = [self.cursor copyWithZone: zone];
	copyHeatmap.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyHeatmap.label = [self.label copyWithZone: zone];
	copyHeatmap.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyHeatmap.boostBlending = [self.boostBlending copyWithZone: zone];
	copyHeatmap.events = [self.events copyWithZone: zone];
	copyHeatmap.opacity = [self.opacity copyWithZone: zone];
	copyHeatmap.definition = [self.definition copyWithZone: zone];
	copyHeatmap.keys = [self.keys copyWithZone: zone];
	copyHeatmap.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyHeatmap.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyHeatmap.accessibility = [self.accessibility copyWithZone: zone];
	copyHeatmap.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyHeatmap.colorAxis = [self.colorAxis copyWithZone: zone];
	copyHeatmap.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyHeatmap.zones = [self.zones copyWithZone: zone];
	copyHeatmap.visible = [self.visible copyWithZone: zone];
	copyHeatmap.linkedTo = [self.linkedTo copyWithZone: zone];
	copyHeatmap.dataLabels = [self.dataLabels copyWithZone: zone];
	copyHeatmap.className = [self.className copyWithZone: zone];
	copyHeatmap.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copyHeatmap.showInLegend = [self.showInLegend copyWithZone: zone];
	return copyHeatmap;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	if (self.colsize) {
		params[@"colsize"] = self.colsize;
	}
	if (self.rowsize) {
		params[@"rowsize"] = self.rowsize;
	}
	if (self.nullColor) {
		params[@"nullColor"] = [self.nullColor getData];
	}
	return params;
}

# pragma mark - Setters

-(void)setPointPadding:(NSNumber *)pointPadding {
	NSNumber *oldValue = _pointPadding;
	_pointPadding = pointPadding;
	[self updateNSObject:oldValue newValue:pointPadding propertyName:@"pointPadding"];
}

-(void)setColsize:(NSNumber *)colsize {
	NSNumber *oldValue = _colsize;
	_colsize = colsize;
	[self updateNSObject:oldValue newValue:colsize propertyName:@"colsize"];
}

-(void)setRowsize:(NSNumber *)rowsize {
	NSNumber *oldValue = _rowsize;
	_rowsize = rowsize;
	[self updateNSObject:oldValue newValue:rowsize propertyName:@"rowsize"];
}

-(void)setNullColor:(HIColor *)nullColor {
	HIColor *oldValue = _nullColor;
	_nullColor = nullColor;
	[self updateHIObject:oldValue newValue:nullColor propertyName:@"nullColor"];
}

@end