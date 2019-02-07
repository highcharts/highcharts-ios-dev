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
	copyTilemap.rowsize = [self.rowsize copyWithZone: zone];
	copyTilemap.pointPadding = [self.pointPadding copyWithZone: zone];
	copyTilemap.states = [self.states copyWithZone: zone];
	copyTilemap.tileShape = [self.tileShape copyWithZone: zone];
	copyTilemap.colsize = [self.colsize copyWithZone: zone];
	copyTilemap.color = [self.color copyWithZone: zone];
	copyTilemap.tooltip = [self.tooltip copyWithZone: zone];
	copyTilemap.dataLabels = [self.dataLabels copyWithZone: zone];
	copyTilemap.animation = [self.animation copyWithZone: zone];
	copyTilemap.nullColor = [self.nullColor copyWithZone: zone];
	copyTilemap.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyTilemap.point = [self.point copyWithZone: zone];
	copyTilemap.selected = [self.selected copyWithZone: zone];
	copyTilemap.colorIndex = [self.colorIndex copyWithZone: zone];
	copyTilemap.clip = [self.clip copyWithZone: zone];
	copyTilemap.negativeColor = [self.negativeColor copyWithZone: zone];
	copyTilemap.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyTilemap.dragDrop = [self.dragDrop copyWithZone: zone];
	copyTilemap.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyTilemap.className = [self.className copyWithZone: zone];
	copyTilemap.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyTilemap.label = [self.label copyWithZone: zone];
	copyTilemap.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyTilemap.boostBlending = [self.boostBlending copyWithZone: zone];
	copyTilemap.events = [self.events copyWithZone: zone];
	copyTilemap.definition = [self.definition copyWithZone: zone];
	copyTilemap.keys = [self.keys copyWithZone: zone];
	copyTilemap.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyTilemap.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyTilemap.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyTilemap.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyTilemap.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyTilemap.zones = [self.zones copyWithZone: zone];
	copyTilemap.visible = [self.visible copyWithZone: zone];
	copyTilemap.linkedTo = [self.linkedTo copyWithZone: zone];
	copyTilemap.cursor = [self.cursor copyWithZone: zone];
	copyTilemap.boostThreshold = [self.boostThreshold copyWithZone: zone];
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
	if (self.rowsize) {
		params[@"rowsize"] = self.rowsize;
	}
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	if (self.tileShape) {
		params[@"tileShape"] = self.tileShape;
	}
	if (self.colsize) {
		params[@"colsize"] = self.colsize;
	}
	if (self.nullColor) {
		params[@"nullColor"] = [self.nullColor getData];
	}
	return params;
}

# pragma mark - Setters

-(void)setRowsize:(NSNumber *)rowsize {
	NSNumber *oldValue = _rowsize;
	_rowsize = rowsize;
	[self updateNSObject:oldValue newValue:rowsize propertyName:@"rowsize"];
}

-(void)setPointPadding:(NSNumber *)pointPadding {
	NSNumber *oldValue = _pointPadding;
	_pointPadding = pointPadding;
	[self updateNSObject:oldValue newValue:pointPadding propertyName:@"pointPadding"];
}

-(void)setTileShape:(NSString *)tileShape {
	NSString *oldValue = _tileShape;
	_tileShape = tileShape;
	[self updateNSObject:oldValue newValue:tileShape propertyName:@"tileShape"];
}

-(void)setColsize:(NSNumber *)colsize {
	NSNumber *oldValue = _colsize;
	_colsize = colsize;
	[self updateNSObject:oldValue newValue:colsize propertyName:@"colsize"];
}

-(void)setNullColor:(HIColor *)nullColor {
	HIColor *oldValue = _nullColor;
	_nullColor = nullColor;
	[self updateHIObject:oldValue newValue:nullColor propertyName:@"nullColor"];
}

@end