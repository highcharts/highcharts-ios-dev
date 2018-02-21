#import "HIChartsJSONSerializableSubclass.h"
#import "HILevels.h"

@implementation HILevels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.layoutStartingDirection) {
		params[@"layoutStartingDirection"] = self.layoutStartingDirection;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.borderDashStyle) {
		params[@"borderDashStyle"] = self.borderDashStyle;
	}
	if (self.colorVariation) {
		params[@"colorVariation"] = [self.colorVariation getParams];
	}
	if (self.level) {
		params[@"level"] = self.level;
	}
	if (self.layoutAlgorithm) {
		params[@"layoutAlgorithm"] = self.layoutAlgorithm;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.rotationMode) {
		params[@"rotationMode"] = self.rotationMode;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	return params;
}

# pragma mark - Setters

-(void)setBorderWidth:(NSNumber *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setLayoutStartingDirection:(NSString *)layoutStartingDirection {
	_layoutStartingDirection = layoutStartingDirection;
	[self updateNSObject:@"layoutStartingDirection"];
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

-(void)setBorderDashStyle:(NSString *)borderDashStyle {
	_borderDashStyle = borderDashStyle;
	[self updateNSObject:@"borderDashStyle"];
}

-(void)setColorVariation:(HIColorVariation *)colorVariation {
	HIColorVariation *oldValue = _colorVariation;
	if(self.colorVariation) {
		[self removeObserver:self forKeyPath:@"colorVariation.isUpdated"];
	}
	_colorVariation = colorVariation;
	[self updateHIObject:oldValue newValue:colorVariation propertyName:@"colorVariation"];
}

-(void)setLevel:(NSNumber *)level {
	_level = level;
	[self updateNSObject:@"level"];
}

-(void)setLayoutAlgorithm:(NSString *)layoutAlgorithm {
	_layoutAlgorithm = layoutAlgorithm;
	[self updateNSObject:@"layoutAlgorithm"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setRotationMode:(NSString *)rotationMode {
	_rotationMode = rotationMode;
	[self updateNSObject:@"rotationMode"];
}

-(void)setRotation:(NSNumber *)rotation {
	_rotation = rotation;
	[self updateNSObject:@"rotation"];
}

@end