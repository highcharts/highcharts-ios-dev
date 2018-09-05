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
	[super copyWithZone:zone];
	HIWordcloud *copyWordcloud = [[HIWordcloud allocWithZone: zone] init];
	copyWordcloud.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyWordcloud.style = [self.style copyWithZone: zone];
	copyWordcloud.minFontSize = [self.minFontSize copyWithZone: zone];
	copyWordcloud.maxFontSize = [self.maxFontSize copyWithZone: zone];
	copyWordcloud.allowExtendPlayingField = [self.allowExtendPlayingField copyWithZone: zone];
	copyWordcloud.spiral = [self.spiral copyWithZone: zone];
	copyWordcloud.tooltip = [self.tooltip copyWithZone: zone];
	copyWordcloud.animation = [self.animation copyWithZone: zone];
	copyWordcloud.borderWidth = [self.borderWidth copyWithZone: zone];
	copyWordcloud.rotation = [self.rotation copyWithZone: zone];
	copyWordcloud.showInLegend = [self.showInLegend copyWithZone: zone];
	copyWordcloud.placementStrategy = [self.placementStrategy copyWithZone: zone];
	copyWordcloud.borderRadius = [self.borderRadius copyWithZone: zone];
	copyWordcloud.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyWordcloud.states = [self.states copyWithZone: zone];
	copyWordcloud.colors = [self.colors copyWithZone: zone];
	copyWordcloud.borderColor = [self.borderColor copyWithZone: zone];
	copyWordcloud.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyWordcloud.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyWordcloud.point = [self.point copyWithZone: zone];
	copyWordcloud.selected = [self.selected copyWithZone: zone];
	copyWordcloud.colorIndex = [self.colorIndex copyWithZone: zone];
	copyWordcloud.color = [self.color copyWithZone: zone];
	copyWordcloud.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyWordcloud.className = [self.className copyWithZone: zone];
	copyWordcloud.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyWordcloud.label = [self.label copyWithZone: zone];
	copyWordcloud.events = [self.events copyWithZone: zone];
	copyWordcloud.animationLimit = [self.animationLimit copyWithZone: zone];
	copyWordcloud.definition = [self.definition copyWithZone: zone];
	copyWordcloud.keys = [self.keys copyWithZone: zone];
	copyWordcloud.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyWordcloud.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyWordcloud.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyWordcloud.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyWordcloud.visible = [self.visible copyWithZone: zone];
	copyWordcloud.linkedTo = [self.linkedTo copyWithZone: zone];
	copyWordcloud.cursor = [self.cursor copyWithZone: zone];
	copyWordcloud.data = [self.data copyWithZone: zone];
	copyWordcloud.id = [self.id copyWithZone: zone];
	copyWordcloud.index = [self.index copyWithZone: zone];
	copyWordcloud.legendIndex = [self.legendIndex copyWithZone: zone];
	copyWordcloud.name = [self.name copyWithZone: zone];
	copyWordcloud.stack = [self.stack copyWithZone: zone];
	copyWordcloud.type = [self.type copyWithZone: zone];
	copyWordcloud.xAxis = [self.xAxis copyWithZone: zone];
	copyWordcloud.yAxis = [self.yAxis copyWithZone: zone];
	copyWordcloud.zIndex = [self.zIndex copyWithZone: zone];
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
	if (self.allowExtendPlayingField) {
		params[@"allowExtendPlayingField"] = self.allowExtendPlayingField;
	}
	if (self.spiral) {
		params[@"spiral"] = self.spiral;
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

-(void)setAllowExtendPlayingField:(NSNumber *)allowExtendPlayingField {
	_allowExtendPlayingField = allowExtendPlayingField;
	[self updateNSObject:@"allowExtendPlayingField"];
}

-(void)setSpiral:(NSString *)spiral {
	_spiral = spiral;
	[self updateNSObject:@"spiral"];
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

-(void)setEdgeWidth:(NSNumber *)edgeWidth {
	_edgeWidth = edgeWidth;
	[self updateNSObject:@"edgeWidth"];
}

@end