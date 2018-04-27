#import "HIChartsJSONSerializableSubclass.h"
#import "HIWordcloud.h"

@implementation HIWordcloud

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"wordcloud";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	HIWordcloud *copyWordcloud = [[HIWordcloud allocWithZone: zone] init];
	copyWordcloud.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyWordcloud.style = [self.style copyWithZone: zone];
	copyWordcloud.minFontSize = [self.minFontSize copyWithZone: zone];
	copyWordcloud.maxFontSize = [self.maxFontSize copyWithZone: zone];
	copyWordcloud.spiral = [self.spiral copyWithZone: zone];
	copyWordcloud.borderWidth = [self.borderWidth copyWithZone: zone];
	copyWordcloud.rotation = [self.rotation copyWithZone: zone];
	copyWordcloud.placementStrategy = [self.placementStrategy copyWithZone: zone];
	copyWordcloud.borderRadius = [self.borderRadius copyWithZone: zone];
	copyWordcloud.colors = [self.colors copyWithZone: zone];
	copyWordcloud.borderColor = [self.borderColor copyWithZone: zone];
	copyWordcloud.edgeWidth = [self.edgeWidth copyWithZone: zone];
	return copyWordcloud;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.minFontSize) {
		params[@"minFontSize"] = self.minFontSize;
	}
	if (self.maxFontSize) {
		params[@"maxFontSize"] = self.maxFontSize;
	}
	if (self.spiral) {
		params[@"spiral"] = self.spiral;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.rotation) {
		params[@"rotation"] = [self.rotation getParams];
	}
	if (self.placementStrategy) {
		params[@"placementStrategy"] = self.placementStrategy;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.edgeWidth) {
		params[@"edgeWidth"] = self.edgeWidth;
	}
	return params;
}

# pragma mark - Setters

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	_colorByPoint = colorByPoint;
	[self updateNSObject:@"colorByPoint"];
}

-(void)setStyle:(HIStyle *)style {
	HIStyle *oldValue = _style;
	if(self.style) {
		[self removeObserver:self forKeyPath:@"style.isUpdated"];
	}
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setMinFontSize:(NSNumber *)minFontSize {
	_minFontSize = minFontSize;
	[self updateNSObject:@"minFontSize"];
}

-(void)setMaxFontSize:(NSNumber *)maxFontSize {
	_maxFontSize = maxFontSize;
	[self updateNSObject:@"maxFontSize"];
}

-(void)setSpiral:(NSString *)spiral {
	_spiral = spiral;
	[self updateNSObject:@"spiral"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setRotation:(HIRotation *)rotation {
	HIRotation *oldValue = _rotation;
	if(self.rotation) {
		[self removeObserver:self forKeyPath:@"rotation.isUpdated"];
	}
	_rotation = rotation;
	[self updateHIObject:oldValue newValue:rotation propertyName:@"rotation"];
}

-(void)setPlacementStrategy:(NSString *)placementStrategy {
	_placementStrategy = placementStrategy;
	[self updateNSObject:@"placementStrategy"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	_borderRadius = borderRadius;
	[self updateNSObject:@"borderRadius"];
}

-(void)setColors:(NSArray<HIColor *> *)colors {
	NSArray<HIColor *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setEdgeWidth:(NSNumber *)edgeWidth {
	_edgeWidth = edgeWidth;
	[self updateNSObject:@"edgeWidth"];
}

@end