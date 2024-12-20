#import "HIChartsJSONSerializableSubclass.h"
#import "HIChart.h"

@implementation HIChart

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIChart *copyChart = [[HIChart allocWithZone: zone] init];
	copyChart.parallelAxes = [self.parallelAxes copyWithZone: zone];
	copyChart.borderRadius = [self.borderRadius copyWithZone: zone];
	copyChart.spacingBottom = [self.spacingBottom copyWithZone: zone];
	copyChart.plotShadow = [self.plotShadow copyWithZone: zone];
	copyChart.height = [self.height copyWithZone: zone];
	copyChart.style = [self.style copyWithZone: zone];
	copyChart.alignTicks = [self.alignTicks copyWithZone: zone];
	copyChart.displayErrors = [self.displayErrors copyWithZone: zone];
	copyChart.marginRight = [self.marginRight copyWithZone: zone];
	copyChart.plotBorderColor = [self.plotBorderColor copyWithZone: zone];
	copyChart.alignThresholds = [self.alignThresholds copyWithZone: zone];
	copyChart.spacingRight = [self.spacingRight copyWithZone: zone];
	copyChart.borderColor = [self.borderColor copyWithZone: zone];
	copyChart.className = [self.className copyWithZone: zone];
	copyChart.polar = [self.polar copyWithZone: zone];
	copyChart.renderTo = [self.renderTo copyWithZone: zone];
	copyChart.reflow = [self.reflow copyWithZone: zone];
	copyChart.spacingTop = [self.spacingTop copyWithZone: zone];
	copyChart.marginBottom = [self.marginBottom copyWithZone: zone];
	copyChart.width = [self.width copyWithZone: zone];
	copyChart.animation = [self.animation copyWithZone: zone];
	copyChart.plotBackgroundColor = [self.plotBackgroundColor copyWithZone: zone];
	copyChart.backgroundColor = [self.backgroundColor copyWithZone: zone];
	copyChart.panning = [self.panning copyWithZone: zone];
	copyChart.options3d = [self.options3d copyWithZone: zone];
	copyChart.type = [self.type copyWithZone: zone];
	copyChart.events = [self.events copyWithZone: zone];
	copyChart.spacingLeft = [self.spacingLeft copyWithZone: zone];
	copyChart.axisLayoutRuns = [self.axisLayoutRuns copyWithZone: zone];
	copyChart.spacing = [self.spacing copyWithZone: zone];
	copyChart.panKey = [self.panKey copyWithZone: zone];
	copyChart.marginLeft = [self.marginLeft copyWithZone: zone];
	copyChart.allowMutatingData = [self.allowMutatingData copyWithZone: zone];
	copyChart.scrollablePlotArea = [self.scrollablePlotArea copyWithZone: zone];
	copyChart.shadow = [self.shadow copyWithZone: zone];
	copyChart.inverted = [self.inverted copyWithZone: zone];
	copyChart.plotBorderWidth = [self.plotBorderWidth copyWithZone: zone];
	copyChart.ignoreHiddenSeries = [self.ignoreHiddenSeries copyWithZone: zone];
	copyChart.zooming = [self.zooming copyWithZone: zone];
	copyChart.selectionMarkerFill = [self.selectionMarkerFill copyWithZone: zone];
	copyChart.plotBackgroundImage = [self.plotBackgroundImage copyWithZone: zone];
	copyChart.numberFormatter = [self.numberFormatter copyWithZone: zone];
	copyChart.colorCount = [self.colorCount copyWithZone: zone];
	copyChart.parallelCoordinates = [self.parallelCoordinates copyWithZone: zone];
	copyChart.showAxes = [self.showAxes copyWithZone: zone];
	copyChart.borderWidth = [self.borderWidth copyWithZone: zone];
	copyChart.marginTop = [self.marginTop copyWithZone: zone];
	copyChart.margin = [self.margin copyWithZone: zone];
	copyChart.styledMode = [self.styledMode copyWithZone: zone];
	return copyChart;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.parallelAxes) {
		params[@"parallelAxes"] = [self.parallelAxes getParams];
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.spacingBottom) {
		params[@"spacingBottom"] = self.spacingBottom;
	}
	if (self.plotShadow) {
		params[@"plotShadow"] = [self.plotShadow getParams];
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.alignTicks) {
		params[@"alignTicks"] = self.alignTicks;
	}
	if (self.displayErrors) {
		params[@"displayErrors"] = self.displayErrors;
	}
	if (self.marginRight) {
		params[@"marginRight"] = self.marginRight;
	}
	if (self.plotBorderColor) {
		params[@"plotBorderColor"] = [self.plotBorderColor getData];
	}
	if (self.alignThresholds) {
		params[@"alignThresholds"] = self.alignThresholds;
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
		params[@"animation"] = [self.animation getParams];
	}
	if (self.plotBackgroundColor) {
		params[@"plotBackgroundColor"] = [self.plotBackgroundColor getData];
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.panning) {
		params[@"panning"] = [self.panning getParams];
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
	if (self.axisLayoutRuns) {
		params[@"axisLayoutRuns"] = self.axisLayoutRuns;
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
	if (self.marginLeft) {
		params[@"marginLeft"] = self.marginLeft;
	}
	if (self.allowMutatingData) {
		params[@"allowMutatingData"] = self.allowMutatingData;
	}
	if (self.scrollablePlotArea) {
		params[@"scrollablePlotArea"] = [self.scrollablePlotArea getParams];
	}
	if (self.shadow) {
		params[@"shadow"] = [self.shadow getParams];
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
	if (self.zooming) {
		params[@"zooming"] = [self.zooming getParams];
	}
	if (self.selectionMarkerFill) {
		params[@"selectionMarkerFill"] = [self.selectionMarkerFill getData];
	}
	if (self.plotBackgroundImage) {
		params[@"plotBackgroundImage"] = self.plotBackgroundImage;
	}
	if (self.numberFormatter) {
		params[@"numberFormatter"] = [self.numberFormatter getFunction];
	}
	if (self.colorCount) {
		params[@"colorCount"] = self.colorCount;
	}
	if (self.parallelCoordinates) {
		params[@"parallelCoordinates"] = self.parallelCoordinates;
	}
	if (self.showAxes) {
		params[@"showAxes"] = self.showAxes;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
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
	if (self.styledMode) {
		params[@"styledMode"] = self.styledMode;
	}
	return params;
}

# pragma mark - Setters

-(void)setParallelAxes:(HIParallelAxes *)parallelAxes {
	HIParallelAxes *oldValue = _parallelAxes;
	_parallelAxes = parallelAxes;
	[self updateHIObject:oldValue newValue:parallelAxes propertyName:@"parallelAxes"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	NSNumber *oldValue = _borderRadius;
	_borderRadius = borderRadius;
	[self updateNSObject:oldValue newValue:borderRadius propertyName:@"borderRadius"];
}

-(void)setSpacingBottom:(NSNumber *)spacingBottom {
	NSNumber *oldValue = _spacingBottom;
	_spacingBottom = spacingBottom;
	[self updateNSObject:oldValue newValue:spacingBottom propertyName:@"spacingBottom"];
}

-(void)setPlotShadow:(HIShadowOptionsObject *)plotShadow {
	HIShadowOptionsObject *oldValue = _plotShadow;
	_plotShadow = plotShadow;
	[self updateHIObject:oldValue newValue:plotShadow propertyName:@"plotShadow"];
}

-(void)setHeight:(id)height {
	id oldValue = _height;
	_height = height;
	[self updateNSObject:oldValue newValue:height propertyName:@"height"];
}

-(void)setStyle:(HICSSObject *)style {
	HICSSObject *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setAlignTicks:(NSNumber *)alignTicks {
	NSNumber *oldValue = _alignTicks;
	_alignTicks = alignTicks;
	[self updateNSObject:oldValue newValue:alignTicks propertyName:@"alignTicks"];
}

-(void)setDisplayErrors:(NSNumber *)displayErrors {
	NSNumber *oldValue = _displayErrors;
	_displayErrors = displayErrors;
	[self updateNSObject:oldValue newValue:displayErrors propertyName:@"displayErrors"];
}

-(void)setMarginRight:(NSNumber *)marginRight {
	NSNumber *oldValue = _marginRight;
	_marginRight = marginRight;
	[self updateNSObject:oldValue newValue:marginRight propertyName:@"marginRight"];
}

-(void)setPlotBorderColor:(HIColor *)plotBorderColor {
	HIColor *oldValue = _plotBorderColor;
	_plotBorderColor = plotBorderColor;
	[self updateHIObject:oldValue newValue:plotBorderColor propertyName:@"plotBorderColor"];
}

-(void)setAlignThresholds:(NSNumber *)alignThresholds {
	NSNumber *oldValue = _alignThresholds;
	_alignThresholds = alignThresholds;
	[self updateNSObject:oldValue newValue:alignThresholds propertyName:@"alignThresholds"];
}

-(void)setSpacingRight:(NSNumber *)spacingRight {
	NSNumber *oldValue = _spacingRight;
	_spacingRight = spacingRight;
	[self updateNSObject:oldValue newValue:spacingRight propertyName:@"spacingRight"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setClassName:(NSString *)className {
	NSString *oldValue = _className;
	_className = className;
	[self updateNSObject:oldValue newValue:className propertyName:@"className"];
}

-(void)setPolar:(NSNumber *)polar {
	NSNumber *oldValue = _polar;
	_polar = polar;
	[self updateNSObject:oldValue newValue:polar propertyName:@"polar"];
}

-(void)setRenderTo:(NSString *)renderTo {
	NSString *oldValue = _renderTo;
	_renderTo = renderTo;
	[self updateNSObject:oldValue newValue:renderTo propertyName:@"renderTo"];
}

-(void)setReflow:(NSNumber *)reflow {
	NSNumber *oldValue = _reflow;
	_reflow = reflow;
	[self updateNSObject:oldValue newValue:reflow propertyName:@"reflow"];
}

-(void)setSpacingTop:(NSNumber *)spacingTop {
	NSNumber *oldValue = _spacingTop;
	_spacingTop = spacingTop;
	[self updateNSObject:oldValue newValue:spacingTop propertyName:@"spacingTop"];
}

-(void)setMarginBottom:(NSNumber *)marginBottom {
	NSNumber *oldValue = _marginBottom;
	_marginBottom = marginBottom;
	[self updateNSObject:oldValue newValue:marginBottom propertyName:@"marginBottom"];
}

-(void)setWidth:(id)width {
	id oldValue = _width;
	_width = width;
	[self updateNSObject:oldValue newValue:width propertyName:@"width"];
}

-(void)setAnimation:(HIAnimationOptionsObject *)animation {
	HIAnimationOptionsObject *oldValue = _animation;
	_animation = animation;
	[self updateHIObject:oldValue newValue:animation propertyName:@"animation"];
}

-(void)setPlotBackgroundColor:(HIColor *)plotBackgroundColor {
	HIColor *oldValue = _plotBackgroundColor;
	_plotBackgroundColor = plotBackgroundColor;
	[self updateHIObject:oldValue newValue:plotBackgroundColor propertyName:@"plotBackgroundColor"];
}

-(void)setBackgroundColor:(HIColor *)backgroundColor {
	HIColor *oldValue = _backgroundColor;
	_backgroundColor = backgroundColor;
	[self updateHIObject:oldValue newValue:backgroundColor propertyName:@"backgroundColor"];
}

-(void)setPanning:(HIPanning *)panning {
	HIPanning *oldValue = _panning;
	_panning = panning;
	[self updateHIObject:oldValue newValue:panning propertyName:@"panning"];
}

-(void)setOptions3d:(HIOptions3d *)options3d {
	HIOptions3d *oldValue = _options3d;
	_options3d = options3d;
	[self updateHIObject:oldValue newValue:options3d propertyName:@"options3d"];
}

-(void)setType:(NSString *)type {
	NSString *oldValue = _type;
	_type = type;
	[self updateNSObject:oldValue newValue:type propertyName:@"type"];
}

-(void)setEvents:(HIEvents *)events {
	HIEvents *oldValue = _events;
	_events = events;
	[self updateHIObject:oldValue newValue:events propertyName:@"events"];
}

-(void)setSpacingLeft:(NSNumber *)spacingLeft {
	NSNumber *oldValue = _spacingLeft;
	_spacingLeft = spacingLeft;
	[self updateNSObject:oldValue newValue:spacingLeft propertyName:@"spacingLeft"];
}

-(void)setAxisLayoutRuns:(NSNumber *)axisLayoutRuns {
	NSNumber *oldValue = _axisLayoutRuns;
	_axisLayoutRuns = axisLayoutRuns;
	[self updateNSObject:oldValue newValue:axisLayoutRuns propertyName:@"axisLayoutRuns"];
}

-(void)setSpacing:(NSArray<NSNumber *> *)spacing {
	NSArray<NSNumber *> *oldValue = _spacing;
	_spacing = spacing;
	[self updateArrayObject:oldValue newValue:spacing propertyName:@"spacing"];
}

-(void)setPanKey:(NSString *)panKey {
	NSString *oldValue = _panKey;
	_panKey = panKey;
	[self updateNSObject:oldValue newValue:panKey propertyName:@"panKey"];
}

-(void)setMarginLeft:(NSNumber *)marginLeft {
	NSNumber *oldValue = _marginLeft;
	_marginLeft = marginLeft;
	[self updateNSObject:oldValue newValue:marginLeft propertyName:@"marginLeft"];
}

-(void)setAllowMutatingData:(NSNumber *)allowMutatingData {
	NSNumber *oldValue = _allowMutatingData;
	_allowMutatingData = allowMutatingData;
	[self updateNSObject:oldValue newValue:allowMutatingData propertyName:@"allowMutatingData"];
}

-(void)setScrollablePlotArea:(HIScrollablePlotArea *)scrollablePlotArea {
	HIScrollablePlotArea *oldValue = _scrollablePlotArea;
	_scrollablePlotArea = scrollablePlotArea;
	[self updateHIObject:oldValue newValue:scrollablePlotArea propertyName:@"scrollablePlotArea"];
}

-(void)setShadow:(HIShadowOptionsObject *)shadow {
	HIShadowOptionsObject *oldValue = _shadow;
	_shadow = shadow;
	[self updateHIObject:oldValue newValue:shadow propertyName:@"shadow"];
}

-(void)setInverted:(NSNumber *)inverted {
	NSNumber *oldValue = _inverted;
	_inverted = inverted;
	[self updateNSObject:oldValue newValue:inverted propertyName:@"inverted"];
}

-(void)setPlotBorderWidth:(NSNumber *)plotBorderWidth {
	NSNumber *oldValue = _plotBorderWidth;
	_plotBorderWidth = plotBorderWidth;
	[self updateNSObject:oldValue newValue:plotBorderWidth propertyName:@"plotBorderWidth"];
}

-(void)setIgnoreHiddenSeries:(NSNumber *)ignoreHiddenSeries {
	NSNumber *oldValue = _ignoreHiddenSeries;
	_ignoreHiddenSeries = ignoreHiddenSeries;
	[self updateNSObject:oldValue newValue:ignoreHiddenSeries propertyName:@"ignoreHiddenSeries"];
}

-(void)setZooming:(HIZooming *)zooming {
	HIZooming *oldValue = _zooming;
	_zooming = zooming;
	[self updateHIObject:oldValue newValue:zooming propertyName:@"zooming"];
}

-(void)setSelectionMarkerFill:(HIColor *)selectionMarkerFill {
	HIColor *oldValue = _selectionMarkerFill;
	_selectionMarkerFill = selectionMarkerFill;
	[self updateHIObject:oldValue newValue:selectionMarkerFill propertyName:@"selectionMarkerFill"];
}

-(void)setPlotBackgroundImage:(NSString *)plotBackgroundImage {
	NSString *oldValue = _plotBackgroundImage;
	_plotBackgroundImage = plotBackgroundImage;
	[self updateNSObject:oldValue newValue:plotBackgroundImage propertyName:@"plotBackgroundImage"];
}

-(void)setNumberFormatter:(HIFunction *)numberFormatter {
	HIFunction *oldValue = _numberFormatter;
	_numberFormatter = numberFormatter;
	[self updateHIObject:oldValue newValue:numberFormatter propertyName:@"numberFormatter"];
}

-(void)setColorCount:(NSNumber *)colorCount {
	NSNumber *oldValue = _colorCount;
	_colorCount = colorCount;
	[self updateNSObject:oldValue newValue:colorCount propertyName:@"colorCount"];
}

-(void)setParallelCoordinates:(NSNumber *)parallelCoordinates {
	NSNumber *oldValue = _parallelCoordinates;
	_parallelCoordinates = parallelCoordinates;
	[self updateNSObject:oldValue newValue:parallelCoordinates propertyName:@"parallelCoordinates"];
}

-(void)setShowAxes:(NSNumber *)showAxes {
	NSNumber *oldValue = _showAxes;
	_showAxes = showAxes;
	[self updateNSObject:oldValue newValue:showAxes propertyName:@"showAxes"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	NSNumber *oldValue = _borderWidth;
	_borderWidth = borderWidth;
	[self updateNSObject:oldValue newValue:borderWidth propertyName:@"borderWidth"];
}

-(void)setMarginTop:(NSNumber *)marginTop {
	NSNumber *oldValue = _marginTop;
	_marginTop = marginTop;
	[self updateNSObject:oldValue newValue:marginTop propertyName:@"marginTop"];
}

-(void)setMargin:(NSArray<NSNumber *> *)margin {
	NSArray<NSNumber *> *oldValue = _margin;
	_margin = margin;
	[self updateArrayObject:oldValue newValue:margin propertyName:@"margin"];
}

-(void)setStyledMode:(NSNumber *)styledMode {
	NSNumber *oldValue = _styledMode;
	_styledMode = styledMode;
	[self updateNSObject:oldValue newValue:styledMode propertyName:@"styledMode"];
}

@end