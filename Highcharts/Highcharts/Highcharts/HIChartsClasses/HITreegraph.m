#import "HIChartsJSONSerializableSubclass.h"
#import "HITreegraph.h"

@implementation HITreegraph

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"treegraph";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HITreegraph *copyTreegraph = [[HITreegraph allocWithZone: zone] init];
	copyTreegraph.marker = [self.marker copyWithZone: zone];
	copyTreegraph.link = [self.link copyWithZone: zone];
	copyTreegraph.levels = [self.levels copyWithZone: zone];
	copyTreegraph.data = [self.data copyWithZone: zone];
	copyTreegraph.id = [self.id copyWithZone: zone];
	copyTreegraph.index = [self.index copyWithZone: zone];
	copyTreegraph.legendIndex = [self.legendIndex copyWithZone: zone];
	copyTreegraph.name = [self.name copyWithZone: zone];
	copyTreegraph.type = [self.type copyWithZone: zone];
	copyTreegraph.zIndex = [self.zIndex copyWithZone: zone];
	copyTreegraph.collapseButton = [self.collapseButton copyWithZone: zone];
	copyTreegraph.reversed = [self.reversed copyWithZone: zone];
	copyTreegraph.tooltip = [self.tooltip copyWithZone: zone];
	copyTreegraph.dataLabels = [self.dataLabels copyWithZone: zone];
	copyTreegraph.fillSpace = [self.fillSpace copyWithZone: zone];
	copyTreegraph.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyTreegraph.states = [self.states copyWithZone: zone];
	copyTreegraph.colors = [self.colors copyWithZone: zone];
	copyTreegraph.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyTreegraph.legendSymbol = [self.legendSymbol copyWithZone: zone];
	copyTreegraph.events = [self.events copyWithZone: zone];
	copyTreegraph.opacity = [self.opacity copyWithZone: zone];
	copyTreegraph.animationLimit = [self.animationLimit copyWithZone: zone];
	copyTreegraph.showInLegend = [self.showInLegend copyWithZone: zone];
	copyTreegraph.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyTreegraph.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyTreegraph.colorIndex = [self.colorIndex copyWithZone: zone];
	copyTreegraph.clip = [self.clip copyWithZone: zone];
	copyTreegraph.color = [self.color copyWithZone: zone];
	copyTreegraph.point = [self.point copyWithZone: zone];
	copyTreegraph.label = [self.label copyWithZone: zone];
	copyTreegraph.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyTreegraph.cursor = [self.cursor copyWithZone: zone];
	copyTreegraph.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyTreegraph.custom = [self.custom copyWithZone: zone];
	copyTreegraph.onPoint = [self.onPoint copyWithZone: zone];
	copyTreegraph.animation = [self.animation copyWithZone: zone];
	copyTreegraph.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyTreegraph.pointDescriptionFormat = [self.pointDescriptionFormat copyWithZone: zone];
	copyTreegraph.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyTreegraph.definition = [self.definition copyWithZone: zone];
	copyTreegraph.keys = [self.keys copyWithZone: zone];
	copyTreegraph.selected = [self.selected copyWithZone: zone];
	copyTreegraph.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyTreegraph.accessibility = [self.accessibility copyWithZone: zone];
	copyTreegraph.sonification = [self.sonification copyWithZone: zone];
	copyTreegraph.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyTreegraph.crisp = [self.crisp copyWithZone: zone];
	copyTreegraph.visible = [self.visible copyWithZone: zone];
	copyTreegraph.linkedTo = [self.linkedTo copyWithZone: zone];
	copyTreegraph.className = [self.className copyWithZone: zone];
	copyTreegraph.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyTreegraph.pointInterval = [self.pointInterval copyWithZone: zone];
	copyTreegraph.softThreshold = [self.softThreshold copyWithZone: zone];
	copyTreegraph.stacking = [self.stacking copyWithZone: zone];
	copyTreegraph.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyTreegraph.boostBlending = [self.boostBlending copyWithZone: zone];
	copyTreegraph.step = [self.step copyWithZone: zone];
	copyTreegraph.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyTreegraph.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyTreegraph.pointStart = [self.pointStart copyWithZone: zone];
	copyTreegraph.boostThreshold = [self.boostThreshold copyWithZone: zone];
	return copyTreegraph;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.link) {
		params[@"link"] = [self.link getParams];
	}
	if (self.levels) {
		params[@"levels"] = [self.levels getParams];
	}
	if (self.collapseButton) {
		params[@"collapseButton"] = [self.collapseButton getParams];
	}
	if (self.reversed) {
		params[@"reversed"] = self.reversed;
	}
	if (self.fillSpace) {
		params[@"fillSpace"] = self.fillSpace;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	return params;
}

# pragma mark - Setters

-(void)setLink:(HILink *)link {
	HILink *oldValue = _link;
	_link = link;
	[self updateHIObject:oldValue newValue:link propertyName:@"link"];
}

-(void)setLevels:(HILevels *)levels {
	HILevels *oldValue = _levels;
	_levels = levels;
	[self updateHIObject:oldValue newValue:levels propertyName:@"levels"];
}

-(void)setCollapseButton:(HICollapseButton *)collapseButton {
	HICollapseButton *oldValue = _collapseButton;
	_collapseButton = collapseButton;
	[self updateHIObject:oldValue newValue:collapseButton propertyName:@"collapseButton"];
}

-(void)setReversed:(NSNumber *)reversed {
	NSNumber *oldValue = _reversed;
	_reversed = reversed;
	[self updateNSObject:oldValue newValue:reversed propertyName:@"reversed"];
}

-(void)setFillSpace:(NSNumber *)fillSpace {
	NSNumber *oldValue = _fillSpace;
	_fillSpace = fillSpace;
	[self updateNSObject:oldValue newValue:fillSpace propertyName:@"fillSpace"];
}

-(void)setColors:(NSArray<HIColor *> *)colors {
	NSArray<HIColor *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
}

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	NSNumber *oldValue = _colorByPoint;
	_colorByPoint = colorByPoint;
	[self updateNSObject:oldValue newValue:colorByPoint propertyName:@"colorByPoint"];
}

@end