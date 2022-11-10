#import "HIChartsJSONSerializableSubclass.h"
#import "HILevels.h"

@implementation HILevels

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HILevels *copyLevels = [[HILevels allocWithZone: zone] init];
	copyLevels.collapsed = [self.collapsed copyWithZone: zone];
	copyLevels.borderColor = [self.borderColor copyWithZone: zone];
	copyLevels.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyLevels.colorVariation = [self.colorVariation copyWithZone: zone];
	copyLevels.levelSize = [self.levelSize copyWithZone: zone];
	copyLevels.borderDashStyle = [self.borderDashStyle copyWithZone: zone];
	copyLevels.level = [self.level copyWithZone: zone];
	copyLevels.color = [self.color copyWithZone: zone];
	copyLevels.dataLabels = [self.dataLabels copyWithZone: zone];
	copyLevels.borderWidth = [self.borderWidth copyWithZone: zone];
	copyLevels.layoutAlgorithm = [self.layoutAlgorithm copyWithZone: zone];
	copyLevels.layoutStartingDirection = [self.layoutStartingDirection copyWithZone: zone];
	copyLevels.states = [self.states copyWithZone: zone];
	copyLevels.linkOpacity = [self.linkOpacity copyWithZone: zone];
	return copyLevels;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.collapsed) {
		params[@"collapsed"] = self.collapsed;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.colorVariation) {
		params[@"colorVariation"] = [self.colorVariation getParams];
	}
	if (self.levelSize) {
		params[@"levelSize"] = self.levelSize;
	}
	if (self.borderDashStyle) {
		params[@"borderDashStyle"] = self.borderDashStyle;
	}
	if (self.level) {
		params[@"level"] = self.level;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = [self.dataLabels getParams];
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.layoutAlgorithm) {
		params[@"layoutAlgorithm"] = self.layoutAlgorithm;
	}
	if (self.layoutStartingDirection) {
		params[@"layoutStartingDirection"] = self.layoutStartingDirection;
	}
	if (self.states) {
		params[@"states"] = [self.states getParams];
	}
	if (self.linkOpacity) {
		params[@"linkOpacity"] = self.linkOpacity;
	}
	return params;
}

# pragma mark - Setters

-(void)setCollapsed:(NSNumber *)collapsed {
	NSNumber *oldValue = _collapsed;
	_collapsed = collapsed;
	[self updateNSObject:oldValue newValue:collapsed propertyName:@"collapsed"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	NSNumber *oldValue = _colorByPoint;
	_colorByPoint = colorByPoint;
	[self updateNSObject:oldValue newValue:colorByPoint propertyName:@"colorByPoint"];
}

-(void)setColorVariation:(HIColorVariation *)colorVariation {
	HIColorVariation *oldValue = _colorVariation;
	_colorVariation = colorVariation;
	[self updateHIObject:oldValue newValue:colorVariation propertyName:@"colorVariation"];
}

-(void)setLevelSize:(id)levelSize {
	id oldValue = _levelSize;
	_levelSize = levelSize;
	[self updateNSObject:oldValue newValue:levelSize propertyName:@"levelSize"];
}

-(void)setBorderDashStyle:(NSString *)borderDashStyle {
	NSString *oldValue = _borderDashStyle;
	_borderDashStyle = borderDashStyle;
	[self updateNSObject:oldValue newValue:borderDashStyle propertyName:@"borderDashStyle"];
}

-(void)setLevel:(NSNumber *)level {
	NSNumber *oldValue = _level;
	_level = level;
	[self updateNSObject:oldValue newValue:level propertyName:@"level"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setDataLabels:(HIDataLabels *)dataLabels {
	HIDataLabels *oldValue = _dataLabels;
	_dataLabels = dataLabels;
	[self updateHIObject:oldValue newValue:dataLabels propertyName:@"dataLabels"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	NSNumber *oldValue = _borderWidth;
	_borderWidth = borderWidth;
	[self updateNSObject:oldValue newValue:borderWidth propertyName:@"borderWidth"];
}

-(void)setLayoutAlgorithm:(NSString *)layoutAlgorithm {
	NSString *oldValue = _layoutAlgorithm;
	_layoutAlgorithm = layoutAlgorithm;
	[self updateNSObject:oldValue newValue:layoutAlgorithm propertyName:@"layoutAlgorithm"];
}

-(void)setLayoutStartingDirection:(NSString *)layoutStartingDirection {
	NSString *oldValue = _layoutStartingDirection;
	_layoutStartingDirection = layoutStartingDirection;
	[self updateNSObject:oldValue newValue:layoutStartingDirection propertyName:@"layoutStartingDirection"];
}

-(void)setStates:(HIStates *)states {
	HIStates *oldValue = _states;
	_states = states;
	[self updateHIObject:oldValue newValue:states propertyName:@"states"];
}

-(void)setLinkOpacity:(NSNumber *)linkOpacity {
	NSNumber *oldValue = _linkOpacity;
	_linkOpacity = linkOpacity;
	[self updateNSObject:oldValue newValue:linkOpacity propertyName:@"linkOpacity"];
}

@end