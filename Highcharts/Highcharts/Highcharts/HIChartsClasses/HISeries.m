#import "HISeries.h"

@implementation HISeries

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.xAxis) {
		params[@"xAxis"] = self.xAxis;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.data) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.data) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"data"] = array;
	}
	if (self.index) {
		params[@"index"] = self.index;
	}
	if (self.yAxis) {
		params[@"yAxis"] = self.yAxis;
	}
	if (self.legendIndex) {
		params[@"legendIndex"] = self.legendIndex;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.stack) {
		params[@"stack"] = self.stack;
	}
	if (self.showInLegend) {
		params[@"showInLegend"] = self.showInLegend;
	}
	if (self.connectNulls) {
		params[@"connectNulls"] = self.connectNulls;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.findNearestPointBy) {
		params[@"findNearestPointBy"] = self.findNearestPointBy;
	}
	if (self.getExtremesFromAll) {
		params[@"getExtremesFromAll"] = self.getExtremesFromAll;
	}
	if (self.exposeElementToA11y) {
		params[@"exposeElementToA11y"] = self.exposeElementToA11y;
	}
	if (self.pointDescriptionFormatter) {
		params[@"pointDescriptionFormatter"] = [self.pointDescriptionFormatter getFunction];
	}
	if (self.pointInterval) {
		params[@"pointInterval"] = self.pointInterval;
	}
	if (self.negativeColor) {
		params[@"negativeColor"] = [self.negativeColor getData];
	}
	if (self.connectEnds) {
		params[@"connectEnds"] = self.connectEnds;
	}
	if (self.zoneAxis) {
		params[@"zoneAxis"] = self.zoneAxis;
	}
	if (self.animationLimit) {
		params[@"animationLimit"] = self.animationLimit;
	}
	if (self.stacking) {
		params[@"stacking"] = self.stacking;
	}
	if (self.pointIntervalUnit) {
		params[@"pointIntervalUnit"] = self.pointIntervalUnit;
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	if (self.enableMouseTracking) {
		params[@"enableMouseTracking"] = self.enableMouseTracking;
	}
	if (self.states) {
		params[@"states"] = [self.states getParams];
	}
	if (self.turboThreshold) {
		params[@"turboThreshold"] = self.turboThreshold;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.softThreshold) {
		params[@"softThreshold"] = self.softThreshold;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.allowPointSelect) {
		params[@"allowPointSelect"] = self.allowPointSelect;
	}
	if (self.zones) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.zones) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"zones"] = array;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = [self.dataLabels getParams];
	}
	if (self.threshold) {
		params[@"threshold"] = self.threshold;
	}
	if (self.label) {
		params[@"label"] = [self.label getParams];
	}
	if (self.boostThreshold) {
		params[@"boostThreshold"] = self.boostThreshold;
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.pointPlacement) {
		params[@"pointPlacement"] = self.pointPlacement;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.cropThreshold) {
		params[@"cropThreshold"] = self.cropThreshold;
	}
	if (self.tooltip) {
		params[@"tooltip"] = [self.tooltip getParams];
	}
	if (self.keys) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.keys) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"keys"] = array;
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.stickyTracking) {
		params[@"stickyTracking"] = self.stickyTracking;
	}
	if (self.pointStart) {
		params[@"pointStart"] = self.pointStart;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.linkedTo) {
		params[@"linkedTo"] = self.linkedTo;
	}
	if (self.skipKeyboardNavigation) {
		params[@"skipKeyboardNavigation"] = self.skipKeyboardNavigation;
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.step) {
		params[@"step"] = self.step;
	}
	if (self.showCheckbox) {
		params[@"showCheckbox"] = self.showCheckbox;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.point) {
		params[@"point"] = [self.point getParams];
	}
	if (self.linecap) {
		params[@"linecap"] = self.linecap;
	}
	return params;
}

# pragma mark - Setters

-(void)setId:(NSString *)id {
	_id = id;
	[self updateNSObject:@"id"];
}

-(void)setXAxis:(id)xAxis {
	_xAxis = xAxis;
	[self updateNSObject:@"xAxis"];
}

-(void)setName:(NSString *)name {
	_name = name;
	[self updateNSObject:@"name"];
}

-(void)setData:(NSArray *)data {
	NSArray *oldValue = _data;
	_data = data;
	[self updateArrayObject:oldValue newValue:data propertyName:@"data"];
}

-(void)setIndex:(NSNumber *)index {
	_index = index;
	[self updateNSObject:@"index"];
}

-(void)setYAxis:(id)yAxis {
	_yAxis = yAxis;
	[self updateNSObject:@"yAxis"];
}

-(void)setLegendIndex:(NSNumber *)legendIndex {
	_legendIndex = legendIndex;
	[self updateNSObject:@"legendIndex"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	_zIndex = zIndex;
	[self updateNSObject:@"zIndex"];
}

-(void)setType:(NSString *)type {
	_type = type;
	[self updateNSObject:@"type"];
}

-(void)setStack:(NSString *)stack {
	_stack = stack;
	[self updateNSObject:@"stack"];
}

-(void)setShowInLegend:(NSNumber *)showInLegend {
	_showInLegend = showInLegend;
	[self updateNSObject:@"showInLegend"];
}

-(void)setConnectNulls:(NSNumber *)connectNulls {
	_connectNulls = connectNulls;
	[self updateNSObject:@"connectNulls"];
}

-(void)setEvents:(HIEvents *)events {
	HIEvents *oldValue = _events;
	if(self.events) {
		[self removeObserver:self forKeyPath:@"events.isUpdated"];
	}
	_events = events;
	[self updateHIObject:oldValue newValue:events propertyName:@"events"];
}

-(void)setLineWidth:(NSNumber *)lineWidth {
	_lineWidth = lineWidth;
	[self updateNSObject:@"lineWidth"];
}

-(void)setMarker:(HIMarker *)marker {
	HIMarker *oldValue = _marker;
	if(self.marker) {
		[self removeObserver:self forKeyPath:@"marker.isUpdated"];
	}
	_marker = marker;
	[self updateHIObject:oldValue newValue:marker propertyName:@"marker"];
}

-(void)setFindNearestPointBy:(NSString *)findNearestPointBy {
	_findNearestPointBy = findNearestPointBy;
	[self updateNSObject:@"findNearestPointBy"];
}

-(void)setGetExtremesFromAll:(NSNumber *)getExtremesFromAll {
	_getExtremesFromAll = getExtremesFromAll;
	[self updateNSObject:@"getExtremesFromAll"];
}

-(void)setExposeElementToA11y:(NSNumber *)exposeElementToA11y {
	_exposeElementToA11y = exposeElementToA11y;
	[self updateNSObject:@"exposeElementToA11y"];
}

-(void)setPointDescriptionFormatter:(HIFunction *)pointDescriptionFormatter {
	HIFunction *oldValue = _pointDescriptionFormatter;
	if(self.pointDescriptionFormatter) {
		[self removeObserver:self forKeyPath:@"pointDescriptionFormatter.isUpdated"];
	}
	_pointDescriptionFormatter = pointDescriptionFormatter;
	[self updateHIObject:oldValue newValue:pointDescriptionFormatter propertyName:@"pointDescriptionFormatter"];
}

-(void)setPointInterval:(NSNumber *)pointInterval {
	_pointInterval = pointInterval;
	[self updateNSObject:@"pointInterval"];
}

-(void)setNegativeColor:(HIColor *)negativeColor {
	HIColor *oldValue = _negativeColor;
	if(self.negativeColor) {
		[self removeObserver:self forKeyPath:@"negativeColor.isUpdated"];
	}
	_negativeColor = negativeColor;
	[self updateHIObject:oldValue newValue:negativeColor propertyName:@"negativeColor"];
}

-(void)setConnectEnds:(NSNumber *)connectEnds {
	_connectEnds = connectEnds;
	[self updateNSObject:@"connectEnds"];
}

-(void)setZoneAxis:(NSString *)zoneAxis {
	_zoneAxis = zoneAxis;
	[self updateNSObject:@"zoneAxis"];
}

-(void)setAnimationLimit:(NSNumber *)animationLimit {
	_animationLimit = animationLimit;
	[self updateNSObject:@"animationLimit"];
}

-(void)setStacking:(NSString *)stacking {
	_stacking = stacking;
	[self updateNSObject:@"stacking"];
}

-(void)setPointIntervalUnit:(NSString *)pointIntervalUnit {
	_pointIntervalUnit = pointIntervalUnit;
	[self updateNSObject:@"pointIntervalUnit"];
}

-(void)setAnimation:(HIAnimation *)animation {
	HIAnimation *oldValue = _animation;
	if(self.animation) {
		[self removeObserver:self forKeyPath:@"animation.isUpdated"];
	}
	_animation = animation;
	[self updateHIObject:oldValue newValue:animation propertyName:@"animation"];
}

-(void)setEnableMouseTracking:(NSNumber *)enableMouseTracking {
	_enableMouseTracking = enableMouseTracking;
	[self updateNSObject:@"enableMouseTracking"];
}

-(void)setStates:(HIStates *)states {
	HIStates *oldValue = _states;
	if(self.states) {
		[self removeObserver:self forKeyPath:@"states.isUpdated"];
	}
	_states = states;
	[self updateHIObject:oldValue newValue:states propertyName:@"states"];
}

-(void)setTurboThreshold:(NSNumber *)turboThreshold {
	_turboThreshold = turboThreshold;
	[self updateNSObject:@"turboThreshold"];
}

-(void)setSelected:(NSNumber *)selected {
	_selected = selected;
	[self updateNSObject:@"selected"];
}

-(void)setSoftThreshold:(NSNumber *)softThreshold {
	_softThreshold = softThreshold;
	[self updateNSObject:@"softThreshold"];
}

-(void)setDefinition:(NSString *)definition {
	_definition = definition;
	[self updateNSObject:@"definition"];
}

-(void)setAllowPointSelect:(NSNumber *)allowPointSelect {
	_allowPointSelect = allowPointSelect;
	[self updateNSObject:@"allowPointSelect"];
}

-(void)setZones:(NSArray <HIZones *> *)zones {
	NSArray <HIZones *> *oldValue = _zones;
	_zones = zones;
	[self updateArrayObject:oldValue newValue:zones propertyName:@"zones"];
}

-(void)setDataLabels:(HIDataLabels *)dataLabels {
	HIDataLabels *oldValue = _dataLabels;
	if(self.dataLabels) {
		[self removeObserver:self forKeyPath:@"dataLabels.isUpdated"];
	}
	_dataLabels = dataLabels;
	[self updateHIObject:oldValue newValue:dataLabels propertyName:@"dataLabels"];
}

-(void)setThreshold:(NSNumber *)threshold {
	_threshold = threshold;
	[self updateNSObject:@"threshold"];
}

-(void)setLabel:(HILabel *)label {
	HILabel *oldValue = _label;
	if(self.label) {
		[self removeObserver:self forKeyPath:@"label.isUpdated"];
	}
	_label = label;
	[self updateHIObject:oldValue newValue:label propertyName:@"label"];
}

-(void)setBoostThreshold:(NSNumber *)boostThreshold {
	_boostThreshold = boostThreshold;
	[self updateNSObject:@"boostThreshold"];
}

-(void)setCursor:(NSString *)cursor {
	_cursor = cursor;
	[self updateNSObject:@"cursor"];
}

-(void)setPointPlacement:(id)pointPlacement {
	_pointPlacement = pointPlacement;
	[self updateNSObject:@"pointPlacement"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	if(self.color) {
		[self removeObserver:self forKeyPath:@"color.isUpdated"];
	}
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setCropThreshold:(NSNumber *)cropThreshold {
	_cropThreshold = cropThreshold;
	[self updateNSObject:@"cropThreshold"];
}

-(void)setTooltip:(HITooltip *)tooltip {
	HITooltip *oldValue = _tooltip;
	if(self.tooltip) {
		[self removeObserver:self forKeyPath:@"tooltip.isUpdated"];
	}
	_tooltip = tooltip;
	[self updateHIObject:oldValue newValue:tooltip propertyName:@"tooltip"];
}

-(void)setKeys:(NSArray<NSString *> *)keys {
	NSArray<NSString *> *oldValue = _keys;
	_keys = keys;
	[self updateArrayObject:oldValue newValue:keys propertyName:@"keys"];
}

-(void)setColorIndex:(NSNumber *)colorIndex {
	_colorIndex = colorIndex;
	[self updateNSObject:@"colorIndex"];
}

-(void)setStickyTracking:(NSNumber *)stickyTracking {
	_stickyTracking = stickyTracking;
	[self updateNSObject:@"stickyTracking"];
}

-(void)setPointStart:(NSNumber *)pointStart {
	_pointStart = pointStart;
	[self updateNSObject:@"pointStart"];
}

-(void)setShadow:(id)shadow {
	_shadow = shadow;
	[self updateNSObject:@"shadow"];
}

-(void)setVisible:(NSNumber *)visible {
	_visible = visible;
	[self updateNSObject:@"visible"];
}

-(void)setLinkedTo:(NSString *)linkedTo {
	_linkedTo = linkedTo;
	[self updateNSObject:@"linkedTo"];
}

-(void)setSkipKeyboardNavigation:(NSNumber *)skipKeyboardNavigation {
	_skipKeyboardNavigation = skipKeyboardNavigation;
	[self updateNSObject:@"skipKeyboardNavigation"];
}

-(void)setDashStyle:(NSString *)dashStyle {
	_dashStyle = dashStyle;
	[self updateNSObject:@"dashStyle"];
}

-(void)setStep:(NSString *)step {
	_step = step;
	[self updateNSObject:@"step"];
}

-(void)setShowCheckbox:(NSNumber *)showCheckbox {
	_showCheckbox = showCheckbox;
	[self updateNSObject:@"showCheckbox"];
}

-(void)setClassName:(NSString *)className {
	_className = className;
	[self updateNSObject:@"className"];
}

-(void)setPoint:(HIPoint *)point {
	HIPoint *oldValue = _point;
	if(self.point) {
		[self removeObserver:self forKeyPath:@"point.isUpdated"];
	}
	_point = point;
	[self updateHIObject:oldValue newValue:point propertyName:@"point"];
}

-(void)setLinecap:(NSString *)linecap {
	_linecap = linecap;
	[self updateNSObject:@"linecap"];
}

@end