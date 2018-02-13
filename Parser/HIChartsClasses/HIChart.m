#import "HIChartsJSONSerializableSubclass.h"
#import "HIChart.h"

@implementation HIChart

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.polar) {
		params[@"polar"] = self.polar;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.spacingBottom) {
		params[@"spacingBottom"] = self.spacingBottom;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.alignTicks) {
		params[@"alignTicks"] = self.alignTicks;
	}
	if (self.parallelAxes) {
		params[@"parallelAxes"] = [self.parallelAxes getParams];
	}
	if (self.marginRight) {
		params[@"marginRight"] = self.marginRight;
	}
	if (self.plotBorderColor) {
		params[@"plotBorderColor"] = [self.plotBorderColor getData];
	}
	if (self.spacingRight) {
		params[@"spacingRight"] = self.spacingRight;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.colorCount) {
		params[@"colorCount"] = self.colorCount;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.renderTo) {
		params[@"renderTo"] = self.renderTo;
	}
	if (self.reflow) {
		params[@"reflow"] = self.reflow;
	}
	if (self.plotShadow) {
		params[@"plotShadow"] = self.plotShadow;
	}
	if (self.zoomType) {
		params[@"zoomType"] = self.zoomType;
	}
	if (self.spacingTop) {
		params[@"spacingTop"] = self.spacingTop;
	}
	if (self.marginBottom) {
		params[@"marginBottom"] = self.marginBottom;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.animation) {
		params[@"animation"] = self.animation;
	}
	if (self.plotBackgroundColor) {
		params[@"plotBackgroundColor"] = [self.plotBackgroundColor getData];
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.panning) {
		params[@"panning"] = self.panning;
	}
	if (self.options3d) {
		params[@"options3d"] = [self.options3d getParams];
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.spacingLeft) {
		params[@"spacingLeft"] = self.spacingLeft;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.panKey) {
		params[@"panKey"] = self.panKey;
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
	if (self.marginLeft) {
		params[@"marginLeft"] = self.marginLeft;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.inverted) {
		params[@"inverted"] = self.inverted;
	}
	if (self.plotBorderWidth) {
		params[@"plotBorderWidth"] = self.plotBorderWidth;
	}
	if (self.ignoreHiddenSeries) {
		params[@"ignoreHiddenSeries"] = self.ignoreHiddenSeries;
	}
	if (self.selectionMarkerFill) {
		params[@"selectionMarkerFill"] = [self.selectionMarkerFill getData];
	}
	if (self.plotBackgroundImage) {
		params[@"plotBackgroundImage"] = self.plotBackgroundImage;
	}
	if (self.pinchType) {
		params[@"pinchType"] = self.pinchType;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.parallelCoordinates) {
		params[@"parallelCoordinates"] = self.parallelCoordinates;
	}
	if (self.resetZoomButton) {
		params[@"resetZoomButton"] = [self.resetZoomButton getParams];
	}
	if (self.showAxes) {
		params[@"showAxes"] = self.showAxes;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.typeDescription) {
		params[@"typeDescription"] = self.typeDescription;
	}
	if (self.marginTop) {
		params[@"marginTop"] = self.marginTop;
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
	return params;
}

# pragma mark - Setters

-(void)setPolar:(NSNumber *)polar {
	_polar = polar;
	[self updateNSObject:@"polar"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	_borderRadius = borderRadius;
	[self updateNSObject:@"borderRadius"];
}

-(void)setSpacingBottom:(NSNumber *)spacingBottom {
	_spacingBottom = spacingBottom;
	[self updateNSObject:@"spacingBottom"];
}

-(void)setHeight:(id)height {
	_height = height;
	[self updateNSObject:@"height"];
}

-(void)setAlignTicks:(NSNumber *)alignTicks {
	_alignTicks = alignTicks;
	[self updateNSObject:@"alignTicks"];
}

-(void)setParallelAxes:(HIParallelAxes *)parallelAxes {
	HIParallelAxes *oldValue = _parallelAxes;
	if(self.parallelAxes) {
		[self removeObserver:self forKeyPath:@"parallelAxes.isUpdated"];
	}
	_parallelAxes = parallelAxes;
	[self updateHIObject:oldValue newValue:parallelAxes propertyName:@"parallelAxes"];
}

-(void)setMarginRight:(NSNumber *)marginRight {
	_marginRight = marginRight;
	[self updateNSObject:@"marginRight"];
}

-(void)setPlotBorderColor:(HIColor *)plotBorderColor {
	HIColor *oldValue = _plotBorderColor;
	if(self.plotBorderColor) {
		[self removeObserver:self forKeyPath:@"plotBorderColor.isUpdated"];
	}
	_plotBorderColor = plotBorderColor;
	[self updateHIObject:oldValue newValue:plotBorderColor propertyName:@"plotBorderColor"];
}

-(void)setSpacingRight:(NSNumber *)spacingRight {
	_spacingRight = spacingRight;
	[self updateNSObject:@"spacingRight"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setColorCount:(NSNumber *)colorCount {
	_colorCount = colorCount;
	[self updateNSObject:@"colorCount"];
}

-(void)setStyle:(NSDictionary *)style {
	_style = style;
	[self updateNSObject:@"style"];
}

-(void)setRenderTo:(id)renderTo {
	_renderTo = renderTo;
	[self updateNSObject:@"renderTo"];
}

-(void)setReflow:(NSNumber *)reflow {
	_reflow = reflow;
	[self updateNSObject:@"reflow"];
}

-(void)setPlotShadow:(id)plotShadow {
	_plotShadow = plotShadow;
	[self updateNSObject:@"plotShadow"];
}

-(void)setZoomType:(NSString *)zoomType {
	_zoomType = zoomType;
	[self updateNSObject:@"zoomType"];
}

-(void)setSpacingTop:(NSNumber *)spacingTop {
	_spacingTop = spacingTop;
	[self updateNSObject:@"spacingTop"];
}

-(void)setMarginBottom:(NSNumber *)marginBottom {
	_marginBottom = marginBottom;
	[self updateNSObject:@"marginBottom"];
}

-(void)setWidth:(NSNumber *)width {
	_width = width;
	[self updateNSObject:@"width"];
}

-(void)setAnimation:(id)animation {
	_animation = animation;
	[self updateNSObject:@"animation"];
}

-(void)setPlotBackgroundColor:(HIColor *)plotBackgroundColor {
	HIColor *oldValue = _plotBackgroundColor;
	if(self.plotBackgroundColor) {
		[self removeObserver:self forKeyPath:@"plotBackgroundColor.isUpdated"];
	}
	_plotBackgroundColor = plotBackgroundColor;
	[self updateHIObject:oldValue newValue:plotBackgroundColor propertyName:@"plotBackgroundColor"];
}

-(void)setBackgroundColor:(HIColor *)backgroundColor {
	HIColor *oldValue = _backgroundColor;
	if(self.backgroundColor) {
		[self removeObserver:self forKeyPath:@"backgroundColor.isUpdated"];
	}
	_backgroundColor = backgroundColor;
	[self updateHIObject:oldValue newValue:backgroundColor propertyName:@"backgroundColor"];
}

-(void)setPanning:(NSNumber *)panning {
	_panning = panning;
	[self updateNSObject:@"panning"];
}

-(void)setOptions3d:(HIOptions3d *)options3d {
	HIOptions3d *oldValue = _options3d;
	if(self.options3d) {
		[self removeObserver:self forKeyPath:@"options3d.isUpdated"];
	}
	_options3d = options3d;
	[self updateHIObject:oldValue newValue:options3d propertyName:@"options3d"];
}

-(void)setType:(NSString *)type {
	_type = type;
	[self updateNSObject:@"type"];
}

-(void)setEvents:(HIEvents *)events {
	HIEvents *oldValue = _events;
	if(self.events) {
		[self removeObserver:self forKeyPath:@"events.isUpdated"];
	}
	_events = events;
	[self updateHIObject:oldValue newValue:events propertyName:@"events"];
}

-(void)setSpacingLeft:(NSNumber *)spacingLeft {
	_spacingLeft = spacingLeft;
	[self updateNSObject:@"spacingLeft"];
}

-(void)setDefinition:(NSString *)definition {
	_definition = definition;
	[self updateNSObject:@"definition"];
}

-(void)setPanKey:(NSString *)panKey {
	_panKey = panKey;
	[self updateNSObject:@"panKey"];
}

-(void)setSpacing:(NSArray<NSNumber *> *)spacing {
	NSArray<NSNumber *> *oldValue = _spacing;
	_spacing = spacing;
	[self updateArrayObject:oldValue newValue:spacing propertyName:@"spacing"];
}

-(void)setMarginLeft:(NSNumber *)marginLeft {
	_marginLeft = marginLeft;
	[self updateNSObject:@"marginLeft"];
}

-(void)setShadow:(id)shadow {
	_shadow = shadow;
	[self updateNSObject:@"shadow"];
}

-(void)setInverted:(NSNumber *)inverted {
	_inverted = inverted;
	[self updateNSObject:@"inverted"];
}

-(void)setPlotBorderWidth:(NSNumber *)plotBorderWidth {
	_plotBorderWidth = plotBorderWidth;
	[self updateNSObject:@"plotBorderWidth"];
}

-(void)setIgnoreHiddenSeries:(NSNumber *)ignoreHiddenSeries {
	_ignoreHiddenSeries = ignoreHiddenSeries;
	[self updateNSObject:@"ignoreHiddenSeries"];
}

-(void)setSelectionMarkerFill:(HIColor *)selectionMarkerFill {
	HIColor *oldValue = _selectionMarkerFill;
	if(self.selectionMarkerFill) {
		[self removeObserver:self forKeyPath:@"selectionMarkerFill.isUpdated"];
	}
	_selectionMarkerFill = selectionMarkerFill;
	[self updateHIObject:oldValue newValue:selectionMarkerFill propertyName:@"selectionMarkerFill"];
}

-(void)setPlotBackgroundImage:(NSString *)plotBackgroundImage {
	_plotBackgroundImage = plotBackgroundImage;
	[self updateNSObject:@"plotBackgroundImage"];
}

-(void)setPinchType:(NSString *)pinchType {
	_pinchType = pinchType;
	[self updateNSObject:@"pinchType"];
}

-(void)setClassName:(NSString *)className {
	_className = className;
	[self updateNSObject:@"className"];
}

-(void)setParallelCoordinates:(NSNumber *)parallelCoordinates {
	_parallelCoordinates = parallelCoordinates;
	[self updateNSObject:@"parallelCoordinates"];
}

-(void)setResetZoomButton:(HIResetZoomButton *)resetZoomButton {
	HIResetZoomButton *oldValue = _resetZoomButton;
	if(self.resetZoomButton) {
		[self removeObserver:self forKeyPath:@"resetZoomButton.isUpdated"];
	}
	_resetZoomButton = resetZoomButton;
	[self updateHIObject:oldValue newValue:resetZoomButton propertyName:@"resetZoomButton"];
}

-(void)setShowAxes:(NSNumber *)showAxes {
	_showAxes = showAxes;
	[self updateNSObject:@"showAxes"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setTypeDescription:(NSString *)typeDescription {
	_typeDescription = typeDescription;
	[self updateNSObject:@"typeDescription"];
}

-(void)setMarginTop:(NSNumber *)marginTop {
	_marginTop = marginTop;
	[self updateNSObject:@"marginTop"];
}

-(void)setMargin:(NSArray *)margin {
	NSArray *oldValue = _margin;
	_margin = margin;
	[self updateArrayObject:oldValue newValue:margin propertyName:@"margin"];
}

@end