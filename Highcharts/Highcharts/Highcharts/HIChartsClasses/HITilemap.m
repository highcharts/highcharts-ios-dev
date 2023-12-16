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
	copyTilemap.tileShape = [self.tileShape copyWithZone: zone];
	copyTilemap.clip = [self.clip copyWithZone: zone];
	copyTilemap.borderRadius = [self.borderRadius copyWithZone: zone];
	copyTilemap.legendSymbol = [self.legendSymbol copyWithZone: zone];
	copyTilemap.tooltip = [self.tooltip copyWithZone: zone];
	copyTilemap.dataLabels = [self.dataLabels copyWithZone: zone];
	copyTilemap.color = [self.color copyWithZone: zone];
	copyTilemap.colorKey = [self.colorKey copyWithZone: zone];
	copyTilemap.animation = [self.animation copyWithZone: zone];
	copyTilemap.nullColor = [self.nullColor copyWithZone: zone];
	copyTilemap.interpolation = [self.interpolation copyWithZone: zone];
	copyTilemap.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyTilemap.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyTilemap.colorIndex = [self.colorIndex copyWithZone: zone];
	copyTilemap.negativeColor = [self.negativeColor copyWithZone: zone];
	copyTilemap.point = [self.point copyWithZone: zone];
	copyTilemap.label = [self.label copyWithZone: zone];
	copyTilemap.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyTilemap.cursor = [self.cursor copyWithZone: zone];
	copyTilemap.inactiveOtherPoints = [self.inactiveOtherPoints copyWithZone: zone];
	copyTilemap.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyTilemap.custom = [self.custom copyWithZone: zone];
	copyTilemap.onPoint = [self.onPoint copyWithZone: zone];
	copyTilemap.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyTilemap.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyTilemap.events = [self.events copyWithZone: zone];
	copyTilemap.pointDescriptionFormat = [self.pointDescriptionFormat copyWithZone: zone];
	copyTilemap.opacity = [self.opacity copyWithZone: zone];
	copyTilemap.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyTilemap.definition = [self.definition copyWithZone: zone];
	copyTilemap.keys = [self.keys copyWithZone: zone];
	copyTilemap.selected = [self.selected copyWithZone: zone];
	copyTilemap.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyTilemap.accessibility = [self.accessibility copyWithZone: zone];
	copyTilemap.sonification = [self.sonification copyWithZone: zone];
	copyTilemap.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyTilemap.colorAxis = [self.colorAxis copyWithZone: zone];
	copyTilemap.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyTilemap.zones = [self.zones copyWithZone: zone];
	copyTilemap.crisp = [self.crisp copyWithZone: zone];
	copyTilemap.visible = [self.visible copyWithZone: zone];
	copyTilemap.linkedTo = [self.linkedTo copyWithZone: zone];
	copyTilemap.className = [self.className copyWithZone: zone];
	copyTilemap.showInLegend = [self.showInLegend copyWithZone: zone];
	copyTilemap.data = [self.data copyWithZone: zone];
	copyTilemap.id = [self.id copyWithZone: zone];
	copyTilemap.index = [self.index copyWithZone: zone];
	copyTilemap.legendIndex = [self.legendIndex copyWithZone: zone];
	copyTilemap.name = [self.name copyWithZone: zone];
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
	if (self.interpolation) {
		params[@"interpolation"] = self.interpolation;
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

-(void)setInterpolation:(NSNumber *)interpolation {
	NSNumber *oldValue = _interpolation;
	_interpolation = interpolation;
	[self updateNSObject:oldValue newValue:interpolation propertyName:@"interpolation"];
}

@end