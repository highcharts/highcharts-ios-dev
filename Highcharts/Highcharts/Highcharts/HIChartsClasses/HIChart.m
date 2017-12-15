#import "HIChart.h"

@implementation HIChart

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.polar) {
		params[@"polar"] = self.polar;
	}
	if (self.panKey) {
		params[@"panKey"] = self.panKey;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.plotShadow) {
		params[@"plotShadow"] = self.plotShadow;
	}
	if (self.ignoreHiddenSeries) {
		params[@"ignoreHiddenSeries"] = self.ignoreHiddenSeries;
	}
	if (self.options3d) {
		params[@"options3d"] = [self.options3d getParams];
	}
	if (self.marginBottom) {
		params[@"marginBottom"] = self.marginBottom;
	}
	if (self.plotBackgroundColor) {
		params[@"plotBackgroundColor"] = [self.plotBackgroundColor getData];
	}
	if (self.parallelAxes) {
		params[@"parallelAxes"] = [self.parallelAxes getParams];
	}
	if (self.spacingTop) {
		params[@"spacingTop"] = self.spacingTop;
	}
	if (self.defaultSeriesType) {
		params[@"defaultSeriesType"] = self.defaultSeriesType;
	}
	if (self.marginTop) {
		params[@"marginTop"] = self.marginTop;
	}
	if (self.resetZoomButton) {
		params[@"resetZoomButton"] = [self.resetZoomButton getParams];
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.renderTo) {
		params[@"renderTo"] = self.renderTo;
	}
	if (self.plotBorderWidth) {
		params[@"plotBorderWidth"] = self.plotBorderWidth;
	}
	if (self.showAxes) {
		params[@"showAxes"] = self.showAxes;
	}
	if (self.pinchType) {
		params[@"pinchType"] = self.pinchType;
	}
	if (self.marginRight) {
		params[@"marginRight"] = self.marginRight;
	}
	if (self.margin) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.margin) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"margin"] = array;
	}
	if (self.typeDescription) {
		params[@"typeDescription"] = self.typeDescription;
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.spacingRight) {
		params[@"spacingRight"] = self.spacingRight;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.reflow) {
		params[@"reflow"] = self.reflow;
	}
	if (self.animation) {
		params[@"animation"] = self.animation;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.inverted) {
		params[@"inverted"] = self.inverted;
	}
	if (self.plotBackgroundImage) {
		params[@"plotBackgroundImage"] = self.plotBackgroundImage;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.spacingBottom) {
		params[@"spacingBottom"] = self.spacingBottom;
	}
	if (self.parallelCoordinates) {
		params[@"parallelCoordinates"] = self.parallelCoordinates;
	}
	if (self.selectionMarkerFill) {
		params[@"selectionMarkerFill"] = [self.selectionMarkerFill getData];
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.spacing) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.spacing) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"spacing"] = array;
	}
	if (self.plotBorderColor) {
		params[@"plotBorderColor"] = [self.plotBorderColor getData];
	}
	if (self.panning) {
		params[@"panning"] = self.panning;
	}
	if (self.zoomType) {
		params[@"zoomType"] = self.zoomType;
	}
	if (self.colorCount) {
		params[@"colorCount"] = self.colorCount;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.alignTicks) {
		params[@"alignTicks"] = self.alignTicks;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.marginLeft) {
		params[@"marginLeft"] = self.marginLeft;
	}
	if (self.spacingLeft) {
		params[@"spacingLeft"] = self.spacingLeft;
	}
	return params;
}

# pragma mark - Setters

-(void)setShadow:(id)shadow {
	_shadow = shadow;
	[self updateNSObject:@"shadow"];
}

-(void)setPolar:(NSNumber *)polar {
	_polar = polar;
	[self updateNSObject:@"polar"];
}

-(void)setPanKey:(NSString *)panKey {
	_panKey = panKey;
	[self updateNSObject:@"panKey"];
}

-(void)setEvents:(HIEvents *)events {
	HIEvents *oldValue = _events;
	if(self.events) {
		[self removeObserver:self forKeyPath:@"events.isUpdated"];
	}
	_events = events;
	[self updateHIObject:oldValue newValue:events propertyName:@"events"];
}

-(void)setPlotShadow:(id)plotShadow {
	_plotShadow = plotShadow;
	[self updateNSObject:@"plotShadow"];
}

-(void)setIgnoreHiddenSeries:(NSNumber *)ignoreHiddenSeries {
	_ignoreHiddenSeries = ignoreHiddenSeries;
	[self updateNSObject:@"ignoreHiddenSeries"];
}

-(void)setOptions3d:(HIOptions3d *)options3d {
	HIOptions3d *oldValue = _options3d;
	if(self.options3d) {
		[self removeObserver:self forKeyPath:@"options3d.isUpdated"];
	}
	_options3d = options3d;
	[self updateHIObject:oldValue newValue:options3d propertyName:@"options3d"];
}

-(void)setMarginBottom:(NSNumber *)marginBottom {
	_marginBottom = marginBottom;
	[self updateNSObject:@"marginBottom"];
}

-(void)setPlotBackgroundColor:(HIColor *)plotBackgroundColor {
	HIColor *oldValue = _plotBackgroundColor;
	if(self.plotBackgroundColor) {
		[self removeObserver:self forKeyPath:@"plotBackgroundColor.isUpdated"];
	}
	_plotBackgroundColor = plotBackgroundColor;
	[self updateHIObject:oldValue newValue:plotBackgroundColor propertyName:@"plotBackgroundColor"];
}

-(void)setParallelAxes:(HIParallelAxes *)parallelAxes {
	HIParallelAxes *oldValue = _parallelAxes;
	if(self.parallelAxes) {
		[self removeObserver:self forKeyPath:@"parallelAxes.isUpdated"];
	}
	_parallelAxes = parallelAxes;
	[self updateHIObject:oldValue newValue:parallelAxes propertyName:@"parallelAxes"];
}

-(void)setSpacingTop:(NSNumber *)spacingTop {
	_spacingTop = spacingTop;
	[self updateNSObject:@"spacingTop"];
}

-(void)setDefaultSeriesType:(NSString *)defaultSeriesType {
	_defaultSeriesType = defaultSeriesType;
	[self updateNSObject:@"defaultSeriesType"];
}

-(void)setMarginTop:(NSNumber *)marginTop {
	_marginTop = marginTop;
	[self updateNSObject:@"marginTop"];
}

-(void)setResetZoomButton:(HIResetZoomButton *)resetZoomButton {
	HIResetZoomButton *oldValue = _resetZoomButton;
	if(self.resetZoomButton) {
		[self removeObserver:self forKeyPath:@"resetZoomButton.isUpdated"];
	}
	_resetZoomButton = resetZoomButton;
	[self updateHIObject:oldValue newValue:resetZoomButton propertyName:@"resetZoomButton"];
}

-(void)setDefinition:(NSString *)definition {
	_definition = definition;
	[self updateNSObject:@"definition"];
}

-(void)setRenderTo:(id)renderTo {
	_renderTo = renderTo;
	[self updateNSObject:@"renderTo"];
}

-(void)setPlotBorderWidth:(NSNumber *)plotBorderWidth {
	_plotBorderWidth = plotBorderWidth;
	[self updateNSObject:@"plotBorderWidth"];
}

-(void)setShowAxes:(NSNumber *)showAxes {
	_showAxes = showAxes;
	[self updateNSObject:@"showAxes"];
}

-(void)setPinchType:(NSString *)pinchType {
	_pinchType = pinchType;
	[self updateNSObject:@"pinchType"];
}

-(void)setMarginRight:(NSNumber *)marginRight {
	_marginRight = marginRight;
	[self updateNSObject:@"marginRight"];
}

-(void)setMargin:(NSArray *)margin {
	NSArray *oldValue = _margin;
	_margin = margin;
	[self updateArrayObject:oldValue newValue:margin propertyName:@"margin"];
}

-(void)setTypeDescription:(NSString *)typeDescription {
	_typeDescription = typeDescription;
	[self updateNSObject:@"typeDescription"];
}

-(void)setType:(NSString *)type {
	_type = type;
	[self updateNSObject:@"type"];
}

-(void)setSpacingRight:(NSNumber *)spacingRight {
	_spacingRight = spacingRight;
	[self updateNSObject:@"spacingRight"];
}

-(void)setClassName:(NSString *)className {
	_className = className;
	[self updateNSObject:@"className"];
}

-(void)setStyle:(NSDictionary *)style {
	_style = style;
	[self updateNSObject:@"style"];
}

-(void)setReflow:(NSNumber *)reflow {
	_reflow = reflow;
	[self updateNSObject:@"reflow"];
}

-(void)setAnimation:(id)animation {
	_animation = animation;
	[self updateNSObject:@"animation"];
}

-(void)setWidth:(NSNumber *)width {
	_width = width;
	[self updateNSObject:@"width"];
}

-(void)setBackgroundColor:(HIColor *)backgroundColor {
	HIColor *oldValue = _backgroundColor;
	if(self.backgroundColor) {
		[self removeObserver:self forKeyPath:@"backgroundColor.isUpdated"];
	}
	_backgroundColor = backgroundColor;
	[self updateHIObject:oldValue newValue:backgroundColor propertyName:@"backgroundColor"];
}

-(void)setInverted:(NSNumber *)inverted {
	_inverted = inverted;
	[self updateNSObject:@"inverted"];
}

-(void)setPlotBackgroundImage:(NSString *)plotBackgroundImage {
	_plotBackgroundImage = plotBackgroundImage;
	[self updateNSObject:@"plotBackgroundImage"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	_borderRadius = borderRadius;
	[self updateNSObject:@"borderRadius"];
}

-(void)setSpacingBottom:(NSNumber *)spacingBottom {
	_spacingBottom = spacingBottom;
	[self updateNSObject:@"spacingBottom"];
}

-(void)setParallelCoordinates:(NSNumber *)parallelCoordinates {
	_parallelCoordinates = parallelCoordinates;
	[self updateNSObject:@"parallelCoordinates"];
}

-(void)setSelectionMarkerFill:(HIColor *)selectionMarkerFill {
	HIColor *oldValue = _selectionMarkerFill;
	if(self.selectionMarkerFill) {
		[self removeObserver:self forKeyPath:@"selectionMarkerFill.isUpdated"];
	}
	_selectionMarkerFill = selectionMarkerFill;
	[self updateHIObject:oldValue newValue:selectionMarkerFill propertyName:@"selectionMarkerFill"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setSpacing:(NSArray<NSNumber *> *)spacing {
	NSArray<NSNumber *> *oldValue = _spacing;
	_spacing = spacing;
	[self updateArrayObject:oldValue newValue:spacing propertyName:@"spacing"];
}

-(void)setPlotBorderColor:(HIColor *)plotBorderColor {
	HIColor *oldValue = _plotBorderColor;
	if(self.plotBorderColor) {
		[self removeObserver:self forKeyPath:@"plotBorderColor.isUpdated"];
	}
	_plotBorderColor = plotBorderColor;
	[self updateHIObject:oldValue newValue:plotBorderColor propertyName:@"plotBorderColor"];
}

-(void)setPanning:(NSNumber *)panning {
	_panning = panning;
	[self updateNSObject:@"panning"];
}

-(void)setZoomType:(NSString *)zoomType {
	_zoomType = zoomType;
	[self updateNSObject:@"zoomType"];
}

-(void)setColorCount:(NSNumber *)colorCount {
	_colorCount = colorCount;
	[self updateNSObject:@"colorCount"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setAlignTicks:(NSNumber *)alignTicks {
	_alignTicks = alignTicks;
	[self updateNSObject:@"alignTicks"];
}

-(void)setHeight:(id)height {
	_height = height;
	[self updateNSObject:@"height"];
}

-(void)setMarginLeft:(NSNumber *)marginLeft {
	_marginLeft = marginLeft;
	[self updateNSObject:@"marginLeft"];
}

-(void)setSpacingLeft:(NSNumber *)spacingLeft {
	_spacingLeft = spacingLeft;
	[self updateNSObject:@"spacingLeft"];
}

@end