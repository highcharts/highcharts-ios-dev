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

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.placementStrategy) {
		params[@"placementStrategy"] = self.placementStrategy;
	}
	if (self.rotation) {
		params[@"rotation"] = [self.rotation getParams];
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.edgeWidth) {
		params[@"edgeWidth"] = self.edgeWidth;
	}
	if (self.spiral) {
		params[@"spiral"] = self.spiral;
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

-(void)setPlacementStrategy:(NSString *)placementStrategy {
	_placementStrategy = placementStrategy;
	[self updateNSObject:@"placementStrategy"];
}

-(void)setRotation:(HIRotation *)rotation {
	HIRotation *oldValue = _rotation;
	if(self.rotation) {
		[self removeObserver:self forKeyPath:@"rotation.isUpdated"];
	}
	_rotation = rotation;
	[self updateHIObject:oldValue newValue:rotation propertyName:@"rotation"];
}

-(void)setColors:(NSArray<HIColor *> *)colors {
	NSArray<HIColor *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	_borderRadius = borderRadius;
	[self updateNSObject:@"borderRadius"];
}

-(void)setEdgeWidth:(NSNumber *)edgeWidth {
	_edgeWidth = edgeWidth;
	[self updateNSObject:@"edgeWidth"];
}

-(void)setSpiral:(NSString *)spiral {
	_spiral = spiral;
	[self updateNSObject:@"spiral"];
}

@end