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
	copyChart.alignTicks = [self.alignTicks copyWithZone: zone];
	copyChart.displayErrors = [self.displayErrors copyWithZone: zone];
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
	copyChart.zoomKey = [self.zoomKey copyWithZone: zone];
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
	copyChart.styledMode = [self.styledMode copyWithZone: zone];
	return copyChart;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
    params[@"_wrapperID"] = self.uuid;
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
		params[@"plotShadow"] = self.plotShadow;
	}
	if (self.height) {
		params[@"height"] = self.height;
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
		params[@"style"] = [self.style getParams];
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
		params[@"animation"] = [self.animation getParams];
	}
	if (self.plotBorderWidth) {
		params[@"plotBorderWidth"] = self.plotBorderWidth;
	}
	if (self.zoomKey) {
		params[@"zoomKey"] = self.zoomKey;
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

-(void)setPlotShadow:(NSNumber *)plotShadow {
	NSNumber *oldValue = _plotShadow;
	_plotShadow = plotShadow;
	[self updateNSObject:oldValue newValue:plotShadow propertyName:@"plotShadow"];
}

-(void)setHeight:(id)height {
	id oldValue = _height;
	_height = height;
	[self updateNSObject:oldValue newValue:height propertyName:@"height"];
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

-(void)setZoomType:(NSString *)zoomType {
	NSString *oldValue = _zoomType;
	_zoomType = zoomType;
	[self updateNSObject:oldValue newValue:zoomType propertyName:@"zoomType"];
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

-(void)setWidth:(NSNumber *)width {
	NSNumber *oldValue = _width;
	_width = width;
	[self updateNSObject:oldValue newValue:width propertyName:@"width"];
}

-(void)setMarginLeft:(NSNumber *)marginLeft {
	NSNumber *oldValue = _marginLeft;
	_marginLeft = marginLeft;
	[self updateNSObject:oldValue newValue:marginLeft propertyName:@"marginLeft"];
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

-(void)setPanning:(NSNumber *)panning {
	NSNumber *oldValue = _panning;
	_panning = panning;
	[self updateNSObject:oldValue newValue:panning propertyName:@"panning"];
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

-(void)setDefinition:(NSString *)definition {
	NSString *oldValue = _definition;
	_definition = definition;
	[self updateNSObject:oldValue newValue:definition propertyName:@"definition"];
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

-(void)setStyle:(HICSSObject *)style {
	HICSSObject *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setScrollablePlotArea:(HIScrollablePlotArea *)scrollablePlotArea {
	HIScrollablePlotArea *oldValue = _scrollablePlotArea;
	_scrollablePlotArea = scrollablePlotArea;
	[self updateHIObject:oldValue newValue:scrollablePlotArea propertyName:@"scrollablePlotArea"];
}

-(void)setShadow:(NSNumber *)shadow {
	NSNumber *oldValue = _shadow;
	_shadow = shadow;
	[self updateNSObject:oldValue newValue:shadow propertyName:@"shadow"];
}

-(void)setInverted:(NSNumber *)inverted {
	NSNumber *oldValue = _inverted;
	_inverted = inverted;
	[self updateNSObject:oldValue newValue:inverted propertyName:@"inverted"];
}

-(void)setAnimation:(HIAnimationOptionsObject *)animation {
	HIAnimationOptionsObject *oldValue = _animation;
	_animation = animation;
	[self updateHIObject:oldValue newValue:animation propertyName:@"animation"];
}

-(void)setPlotBorderWidth:(NSNumber *)plotBorderWidth {
	NSNumber *oldValue = _plotBorderWidth;
	_plotBorderWidth = plotBorderWidth;
	[self updateNSObject:oldValue newValue:plotBorderWidth propertyName:@"plotBorderWidth"];
}

-(void)setZoomKey:(NSString *)zoomKey {
	NSString *oldValue = _zoomKey;
	_zoomKey = zoomKey;
	[self updateNSObject:oldValue newValue:zoomKey propertyName:@"zoomKey"];
}

-(void)setIgnoreHiddenSeries:(NSNumber *)ignoreHiddenSeries {
	NSNumber *oldValue = _ignoreHiddenSeries;
	_ignoreHiddenSeries = ignoreHiddenSeries;
	[self updateNSObject:oldValue newValue:ignoreHiddenSeries propertyName:@"ignoreHiddenSeries"];
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

-(void)setPinchType:(NSString *)pinchType {
	NSString *oldValue = _pinchType;
	_pinchType = pinchType;
	[self updateNSObject:oldValue newValue:pinchType propertyName:@"pinchType"];
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

-(void)setResetZoomButton:(HIResetZoomButton *)resetZoomButton {
	HIResetZoomButton *oldValue = _resetZoomButton;
	_resetZoomButton = resetZoomButton;
	[self updateHIObject:oldValue newValue:resetZoomButton propertyName:@"resetZoomButton"];
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

-(void)setTypeDescription:(NSString *)typeDescription {
	NSString *oldValue = _typeDescription;
	_typeDescription = typeDescription;
	[self updateNSObject:oldValue newValue:typeDescription propertyName:@"typeDescription"];
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

- (void)addAnnotation:(HIAnnotations *)options {
    self.jsClassMethod = @{ @"class" : @"Chart", @"method" : @"addAnnotation", @"params" : @[[options getParams]] };
}

- (void)addXAxis:(HIXAxis *)options {
    self.jsClassMethod = @{ @"class" : @"Chart", @"method" : @"addAxis0", @"params" : @[[options getParams], [[NSNumber alloc] initWithBool:true]] };
}

- (void)addXAxis:(HIXAxis *)options redraw:(NSNumber *)redraw {
    self.jsClassMethod = @{ @"class" : @"Chart", @"method" : @"addAxis1", @"params" : @[[options getParams], [[NSNumber alloc] initWithBool:true], redraw] };
}

- (void)addXAxis:(HIXAxis *)options redraw:(NSNumber *)redraw animation:(HIAnimationOptionsObject *)animation {
    self.jsClassMethod = @{ @"class" : @"Chart", @"method" : @"addAxis2", @"params" : @[[options getParams], [[NSNumber alloc] initWithBool:true], redraw, [animation getParams]] };
}

- (void)addYAxis:(HIYAxis *)options {
    self.jsClassMethod = @{ @"class" : @"Chart", @"method" : @"addAxis0", @"params" : @[[options getParams], [[NSNumber alloc] initWithBool:false]] };
}

- (void)addYAxis:(HIYAxis *)options redraw:(NSNumber *)redraw {
    self.jsClassMethod = @{ @"class" : @"Chart", @"method" : @"addAxis1", @"params" : @[[options getParams], [[NSNumber alloc] initWithBool:false], redraw] };
}

- (void)addYAxis:(HIYAxis *)options redraw:(NSNumber *)redraw animation:(HIAnimationOptionsObject *)animation {
    self.jsClassMethod = @{ @"class" : @"Chart", @"method" : @"addAxis2", @"params" : @[[options getParams], [[NSNumber alloc] initWithBool:false], redraw, [animation getParams]] };
}

- (void)addCredits:(HICredits *)options {
    self.jsClassMethod = @{ @"class" : @"Chart", @"method" : @"addCredits", @"params" : @[[options getParams]] };
}

- (void)addSeries:(HISeries *)options {
    self.jsClassMethod = @{ @"class" : @"Chart", @"method" : @"addSeries0", @"params" : @[[options getParams]] };
}

- (void)addSeries:(HISeries *)options redraw:(NSNumber *)redraw {
    self.jsClassMethod = @{ @"class" : @"Chart", @"method" : @"addSeries1", @"params" : @[[options getParams], redraw] };
}

- (void)addSeries:(HISeries *)options redraw:(NSNumber *)redraw animation:(HIAnimationOptionsObject *)animation {
    self.jsClassMethod = @{ @"class" : @"Chart", @"method" : @"addSeries2", @"params" : @[[options getParams], redraw, [animation getParams]] };
}

- (void)addSeriesAsDrilldown:(HIPoint *)point options:(HISeries *)options {
    self.jsClassMethod = @{ @"class" : @"Chart", @"method" : @"addSeriesAsDrilldown", @"params" : @[[point getParams], [options getParams]] };
}

- (void)destroy {
    self.jsClassMethod = @{ @"class" : @"Chart", @"method" : @"destroy" };
}

- (void)drillUp {
    self.jsClassMethod = @{ @"class" : @"Chart", @"method" : @"drillUp" };
}

- (void)hideLoading {
    self.jsClassMethod = @{ @"class" : @"Chart", @"method" : @"hideLoading" };
}

- (void)pauseSonify {
    self.jsClassMethod = @{ @"class" : @"Chart", @"method" : @"pauseSonify0" };
}

- (void)pauseSonify:(NSNumber *)fadeOut {
    self.jsClassMethod = @{ @"class" : @"Chart", @"method" : @"pauseSonify1", @"params" : @[fadeOut] };
}

- (void)redraw {
    self.jsClassMethod = @{ @"class" : @"Chart", @"method" : @"redraw0" };
}

- (void)redraw:(HIAnimationOptionsObject *)animation {
    self.jsClassMethod = @{ @"class" : @"Chart", @"method" : @"redraw1", @"params" : @[[animation getParams]] };
}

- (void)removeAnnotation:(NSString *)id {
    self.jsClassMethod = @{ @"class" : @"Chart", @"method" : @"removeAnnotation", @"params" : @[id] };
}

- (void)setSubtitle:(HISubtitle *)options {
    self.jsClassMethod = @{ @"class" : @"Chart", @"method" : @"setSubtitle", @"params" : @[[options getParams]] };
}

- (void)setTitle:(HITitle *)titleOptions subtitleOptions:(HISubtitle *)subtitleOptions redraw:(NSNumber *)redraw {
    self.jsClassMethod = @{ @"class" : @"Chart", @"method" : @"setTitle", @"params" : @[[titleOptions getParams], [subtitleOptions getParams], redraw] };
}

- (void)showLoading:(NSString *)str {
    self.jsClassMethod = @{ @"class" : @"Chart", @"method" : @"showLoading", @"params" : @[str] };
}

- (void)zoomOut {
    self.jsClassMethod = @{ @"class" : @"Chart", @"method" : @"zoomOut" };
}

@end
