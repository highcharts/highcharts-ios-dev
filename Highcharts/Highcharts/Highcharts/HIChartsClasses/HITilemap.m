#import "HIChartsJSONSerializableSubclass.h"
#import "HITilemap.h"

@implementation HITilemap

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"tilemap";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HITilemap *copyTilemap = [[HITilemap allocWithZone: zone] init];
	copyTilemap.pointPadding = [self.pointPadding copyWithZone: zone];
	copyTilemap.colsize = [self.colsize copyWithZone: zone];
	copyTilemap.rowsize = [self.rowsize copyWithZone: zone];
	copyTilemap.states = [self.states copyWithZone: zone];
	copyTilemap.marker = [self.marker copyWithZone: zone];
	copyTilemap.tileShape = [self.tileShape copyWithZone: zone];
	copyTilemap.clip = [self.clip copyWithZone: zone];
	copyTilemap.borderRadius = [self.borderRadius copyWithZone: zone];
	copyTilemap.tooltip = [self.tooltip copyWithZone: zone];
	copyTilemap.dataLabels = [self.dataLabels copyWithZone: zone];
	copyTilemap.color = [self.color copyWithZone: zone];
	copyTilemap.colorKey = [self.colorKey copyWithZone: zone];
	copyTilemap.animation = [self.animation copyWithZone: zone];
	copyTilemap.nullColor = [self.nullColor copyWithZone: zone];
	copyTilemap.jitter = [self.jitter copyWithZone: zone];
	copyTilemap.cluster = [self.cluster copyWithZone: zone];
	copyTilemap.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyTilemap.lineWidth = [self.lineWidth copyWithZone: zone];
	copyTilemap.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyTilemap.linecap = [self.linecap copyWithZone: zone];
	copyTilemap.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyTilemap.colorIndex = [self.colorIndex copyWithZone: zone];
	copyTilemap.negativeColor = [self.negativeColor copyWithZone: zone];
	copyTilemap.pointInterval = [self.pointInterval copyWithZone: zone];
	copyTilemap.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyTilemap.softThreshold = [self.softThreshold copyWithZone: zone];
	copyTilemap.dragDrop = [self.dragDrop copyWithZone: zone];
	copyTilemap.point = [self.point copyWithZone: zone];
	copyTilemap.dataSorting = [self.dataSorting copyWithZone: zone];
	copyTilemap.label = [self.label copyWithZone: zone];
	copyTilemap.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyTilemap.cursor = [self.cursor copyWithZone: zone];
	copyTilemap.dashStyle = [self.dashStyle copyWithZone: zone];
	copyTilemap.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyTilemap.connectNulls = [self.connectNulls copyWithZone: zone];
	copyTilemap.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyTilemap.custom = [self.custom copyWithZone: zone];
	copyTilemap.onPoint = [self.onPoint copyWithZone: zone];
	copyTilemap.stacking = [self.stacking copyWithZone: zone];
	copyTilemap.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyTilemap.threshold = [self.threshold copyWithZone: zone];
	copyTilemap.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyTilemap.boostBlending = [self.boostBlending copyWithZone: zone];
	copyTilemap.events = [self.events copyWithZone: zone];
	copyTilemap.opacity = [self.opacity copyWithZone: zone];
	copyTilemap.animationLimit = [self.animationLimit copyWithZone: zone];
	copyTilemap.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyTilemap.definition = [self.definition copyWithZone: zone];
	copyTilemap.keys = [self.keys copyWithZone: zone];
	copyTilemap.selected = [self.selected copyWithZone: zone];
	copyTilemap.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyTilemap.accessibility = [self.accessibility copyWithZone: zone];
	copyTilemap.step = [self.step copyWithZone: zone];
	copyTilemap.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyTilemap.shadow = [self.shadow copyWithZone: zone];
	copyTilemap.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyTilemap.colorAxis = [self.colorAxis copyWithZone: zone];
	copyTilemap.zones = [self.zones copyWithZone: zone];
	copyTilemap.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyTilemap.crisp = [self.crisp copyWithZone: zone];
	copyTilemap.visible = [self.visible copyWithZone: zone];
	copyTilemap.linkedTo = [self.linkedTo copyWithZone: zone];
	copyTilemap.dataAsColumns = [self.dataAsColumns copyWithZone: zone];
	copyTilemap.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyTilemap.className = [self.className copyWithZone: zone];
	copyTilemap.pointStart = [self.pointStart copyWithZone: zone];
	copyTilemap.connectEnds = [self.connectEnds copyWithZone: zone];
	copyTilemap.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copyTilemap.showInLegend = [self.showInLegend copyWithZone: zone];
	copyTilemap.data = [self.data copyWithZone: zone];
	copyTilemap.id = [self.id copyWithZone: zone];
	copyTilemap.index = [self.index copyWithZone: zone];
	copyTilemap.legendIndex = [self.legendIndex copyWithZone: zone];
	copyTilemap.name = [self.name copyWithZone: zone];
	copyTilemap.stack = [self.stack copyWithZone: zone];
	copyTilemap.type = [self.type copyWithZone: zone];
	copyTilemap.xAxis = [self.xAxis copyWithZone: zone];
	copyTilemap.yAxis = [self.yAxis copyWithZone: zone];
	copyTilemap.zIndex = [self.zIndex copyWithZone: zone];
	return copyTilemap;
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
	if (self.tileShape) {
		params[@"tileShape"] = self.tileShape;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.nullColor) {
		params[@"nullColor"] = [self.nullColor getData];
	}
	if (self.jitter) {
		params[@"jitter"] = [self.jitter getParams];
	}
	if (self.cluster) {
		params[@"cluster"] = [self.cluster getParams];
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

-(void)setTileShape:(NSString *)tileShape {
	NSString *oldValue = _tileShape;
	_tileShape = tileShape;
	[self updateNSObject:oldValue newValue:tileShape propertyName:@"tileShape"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	NSNumber *oldValue = _borderRadius;
	_borderRadius = borderRadius;
	[self updateNSObject:oldValue newValue:borderRadius propertyName:@"borderRadius"];
}

-(void)setNullColor:(HIColor *)nullColor {
	HIColor *oldValue = _nullColor;
	_nullColor = nullColor;
	[self updateHIObject:oldValue newValue:nullColor propertyName:@"nullColor"];
}

-(void)setJitter:(HIJitter *)jitter {
	HIJitter *oldValue = _jitter;
	_jitter = jitter;
	[self updateHIObject:oldValue newValue:jitter propertyName:@"jitter"];
}

-(void)setCluster:(HICluster *)cluster {
	HICluster *oldValue = _cluster;
	_cluster = cluster;
	[self updateHIObject:oldValue newValue:cluster propertyName:@"cluster"];
}

@end