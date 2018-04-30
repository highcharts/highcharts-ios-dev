#import "HIChartsJSONSerializableSubclass.h"
#import "HILevels.h"

@implementation HILevels

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HILevels *copyLevels = [[HILevels allocWithZone: zone] init];
	copyLevels.borderColor = [self.borderColor copyWithZone: zone];
	copyLevels.colorVariation = [self.colorVariation copyWithZone: zone];
	copyLevels.levelSize = [self.levelSize copyWithZone: zone];
	copyLevels.borderDashStyle = [self.borderDashStyle copyWithZone: zone];
	copyLevels.color = [self.color copyWithZone: zone];
	copyLevels.dataLabels = [self.dataLabels copyWithZone: zone];
	copyLevels.rotationMode = [self.rotationMode copyWithZone: zone];
	copyLevels.borderWidth = [self.borderWidth copyWithZone: zone];
	copyLevels.rotation = [self.rotation copyWithZone: zone];
	copyLevels.level = [self.level copyWithZone: zone];
	copyLevels.layoutAlgorithm = [self.layoutAlgorithm copyWithZone: zone];
	copyLevels.layoutStartingDirection = [self.layoutStartingDirection copyWithZone: zone];
	return copyLevels;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
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
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.rotationMode) {
		params[@"rotationMode"] = self.rotationMode;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.level) {
		params[@"level"] = self.level;
	}
	if (self.layoutAlgorithm) {
		params[@"layoutAlgorithm"] = self.layoutAlgorithm;
	}
	if (self.layoutStartingDirection) {
		params[@"layoutStartingDirection"] = self.layoutStartingDirection;
	}
	return params;
}

# pragma mark - Setters

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setColorVariation:(HIColorVariation *)colorVariation {
	HIColorVariation *oldValue = _colorVariation;
	if(self.colorVariation) {
		[self removeObserver:self forKeyPath:@"colorVariation.isUpdated"];
	}
	_colorVariation = colorVariation;
	[self updateHIObject:oldValue newValue:colorVariation propertyName:@"colorVariation"];
}

-(void)setLevelSize:(id)levelSize {
	_levelSize = levelSize;
	[self updateNSObject:@"levelSize"];
}

-(void)setBorderDashStyle:(NSString *)borderDashStyle {
	_borderDashStyle = borderDashStyle;
	[self updateNSObject:@"borderDashStyle"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	if(self.color) {
		[self removeObserver:self forKeyPath:@"color.isUpdated"];
	}
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setDataLabels:(id)dataLabels {
	_dataLabels = dataLabels;
	[self updateNSObject:@"dataLabels"];
}

-(void)setRotationMode:(NSString *)rotationMode {
	_rotationMode = rotationMode;
	[self updateNSObject:@"rotationMode"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setRotation:(NSNumber *)rotation {
	_rotation = rotation;
	[self updateNSObject:@"rotation"];
}

-(void)setLevel:(NSNumber *)level {
	_level = level;
	[self updateNSObject:@"level"];
}

-(void)setLayoutAlgorithm:(NSString *)layoutAlgorithm {
	_layoutAlgorithm = layoutAlgorithm;
	[self updateNSObject:@"layoutAlgorithm"];
}

-(void)setLayoutStartingDirection:(NSString *)layoutStartingDirection {
	_layoutStartingDirection = layoutStartingDirection;
	[self updateNSObject:@"layoutStartingDirection"];
}

@end