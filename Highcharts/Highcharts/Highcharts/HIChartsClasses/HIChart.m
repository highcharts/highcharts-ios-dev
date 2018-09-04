#import "HIChartsJSONSerializableSubclass.h"
#import "HIChart.h"

@implementation HIChart

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIChart *copyChart = [[HIChart allocWithZone: zone] init];
	copyChart.borderRadius = [self.borderRadius copyWithZone: zone];
	copyChart.spacingBottom = [self.spacingBottom copyWithZone: zone];
	copyChart.plotShadow = [self.plotShadow copyWithZone: zone];
	copyChart.height = [self.height copyWithZone: zone];
	copyChart.alignTicks = [self.alignTicks copyWithZone: zone];
	copyChart.parallelAxes = [self.parallelAxes copyWithZone: zone];
	copyChart.marginRight = [self.marginRight copyWithZone: zone];
	copyChart.plotBorderColor = [self.plotBorderColor copyWithZone: zone];
	copyChart.spacingRight = [self.spacingRight copyWithZone: zone];
	copyChart.borderColor = [self.borderColor copyWithZone: zone];
	copyChart.className = [self.className copyWithZone: zone];
	copyChart.polar = [self.polar copyWithZone: zone];
	copyChart.renderTo = [self.renderTo copyWithZone: zone];
	copyChart.reflow = [self.reflow copyWithZone: zone];
	copyChart.zoomType = [self.zoomType copyWithZone: zone];
	copyChart.spacingTop = [self.spacingTop copyWithZone: zone];
	copyChart.marginBottom = [self.marginBottom copyWithZone: zone];
	copyChart.width = [self.width copyWithZone: zone];
	copyChart.marginLeft = [self.marginLeft copyWithZone: zone];
	copyChart.plotBackgroundColor = [self.plotBackgroundColor copyWithZone: zone];
	copyChart.backgroundColor = [self.backgroundColor copyWithZone: zone];
	copyChart.panning = [self.panning copyWithZone: zone];
	copyChart.options3d = [self.options3d copyWithZone: zone];
	copyChart.type = [self.type copyWithZone: zone];
	copyChart.events = [self.events copyWithZone: zone];
	copyChart.spacingLeft = [self.spacingLeft copyWithZone: zone];
	copyChart.definition = [self.definition copyWithZone: zone];
	copyChart.spacing = [self.spacing copyWithZone: zone];
	copyChart.panKey = [self.panKey copyWithZone: zone];
	copyChart.style = [self.style copyWithZone: zone];
	copyChart.scrollablePlotArea = [self.scrollablePlotArea copyWithZone: zone];
	copyChart.shadow = [self.shadow copyWithZone: zone];
	copyChart.inverted = [self.inverted copyWithZone: zone];
	copyChart.animation = [self.animation copyWithZone: zone];
	copyChart.plotBorderWidth = [self.plotBorderWidth copyWithZone: zone];
	copyChart.ignoreHiddenSeries = [self.ignoreHiddenSeries copyWithZone: zone];
	copyChart.selectionMarkerFill = [self.selectionMarkerFill copyWithZone: zone];
	copyChart.plotBackgroundImage = [self.plotBackgroundImage copyWithZone: zone];
	copyChart.pinchType = [self.pinchType copyWithZone: zone];
	copyChart.colorCount = [self.colorCount copyWithZone: zone];
	copyChart.parallelCoordinates = [self.parallelCoordinates copyWithZone: zone];
	copyChart.resetZoomButton = [self.resetZoomButton copyWithZone: zone];
	copyChart.showAxes = [self.showAxes copyWithZone: zone];
	copyChart.borderWidth = [self.borderWidth copyWithZone: zone];
	copyChart.typeDescription = [self.typeDescription copyWithZone: zone];
	copyChart.marginTop = [self.marginTop copyWithZone: zone];
	copyChart.margin = [self.margin copyWithZone: zone];
	return copyChart;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.spacingBottom) {
		params[@"spacingBottom"] = self.spacingBottom;
	}
	if (self.plotShadow) {
		params[@"plotShadow"] = self.plotShadow;
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
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.polar) {
		params[@"polar"] = self.polar;
	}
	if (self.renderTo) {
		params[@"renderTo"] = self.renderTo;
	}
	if (self.reflow) {
		params[@"reflow"] = self.reflow;
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
	if (self.marginLeft) {
		params[@"marginLeft"] = self.marginLeft;
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
	if (self.panKey) {
		params[@"panKey"] = self.panKey;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.scrollablePlotArea) {
		params[@"scrollablePlotArea"] = [self.scrollablePlotArea getParams];
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.inverted) {
		params[@"inverted"] = self.inverted;
	}
	if (self.animation) {
		params[@"animation"] = self.animation;
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
	if (self.colorCount) {
		params[@"colorCount"] = self.colorCount;
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

-(void)setBorderRadius:(NSNumber *)borderRadius {
	_borderRadius = borderRadius;
	[self updateNSObject:@"borderRadius"];
}

-(void)setSpacingBottom:(NSNumber *)spacingBottom {
	_spacingBottom = spacingBottom;
	[self updateNSObject:@"spacingBottom"];
}

-(void)setPlotShadow:(id)plotShadow {
	_plotShadow = plotShadow;
	[self updateNSObject:@"plotShadow"];
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

-(void)setClassName:(NSString *)className {
	_className = className;
	[self updateNSObject:@"className"];
}

-(void)setPolar:(NSNumber *)polar {
	_polar = polar;
	[self updateNSObject:@"polar"];
}

-(void)setRenderTo:(id)renderTo {
	_renderTo = renderTo;
	[self updateNSObject:@"renderTo"];
}

-(void)setReflow:(NSNumber *)reflow {
	_reflow = reflow;
	[self updateNSObject:@"reflow"];
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

-(void)setMarginLeft:(NSNumber *)marginLeft {
	_marginLeft = marginLeft;
	[self updateNSObject:@"marginLeft"];
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

-(void)setSpacing:(NSArray<NSNumber *> *)spacing {
	NSArray<NSNumber *> *oldValue = _spacing;
	_spacing = spacing;
	[self updateArrayObject:oldValue newValue:spacing propertyName:@"spacing"];
}

-(void)setPanKey:(NSString *)panKey {
	_panKey = panKey;
	[self updateNSObject:@"panKey"];
}

-(void)setStyle:(NSDictionary *)style {
	_style = style;
	[self updateNSObject:@"style"];
}

-(void)setScrollablePlotArea:(HIScrollablePlotArea *)scrollablePlotArea {
	HIScrollablePlotArea *oldValue = _scrollablePlotArea;
	if(self.scrollablePlotArea) {
		[self removeObserver:self forKeyPath:@"scrollablePlotArea.isUpdated"];
	}
	_scrollablePlotArea = scrollablePlotArea;
	[self updateHIObject:oldValue newValue:scrollablePlotArea propertyName:@"scrollablePlotArea"];
}

-(void)setShadow:(id)shadow {
	_shadow = shadow;
	[self updateNSObject:@"shadow"];
}

-(void)setInverted:(NSNumber *)inverted {
	_inverted = inverted;
	[self updateNSObject:@"inverted"];
}

-(void)setAnimation:(id)animation {
	_animation = animation;
	[self updateNSObject:@"animation"];
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

-(void)setColorCount:(NSNumber *)colorCount {
	_colorCount = colorCount;
	[self updateNSObject:@"colorCount"];
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