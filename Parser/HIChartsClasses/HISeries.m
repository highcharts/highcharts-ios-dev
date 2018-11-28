#import "HIChartsJSONSerializableSubclass.h"
#import "HISeries.h"

@implementation HISeries

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISeries *copySeries = [[HISeries allocWithZone: zone] init];
	copySeries.data = [self.data copyWithZone: zone];
	copySeries.id = [self.id copyWithZone: zone];
	copySeries.index = [self.index copyWithZone: zone];
	copySeries.legendIndex = [self.legendIndex copyWithZone: zone];
	copySeries.name = [self.name copyWithZone: zone];
	copySeries.stack = [self.stack copyWithZone: zone];
	copySeries.type = [self.type copyWithZone: zone];
	copySeries.xAxis = [self.xAxis copyWithZone: zone];
	copySeries.yAxis = [self.yAxis copyWithZone: zone];
	copySeries.zIndex = [self.zIndex copyWithZone: zone];
	copySeries.yAxisDescription = [self.yAxisDescription copyWithZone: zone];
	copySeries.xAxisDescription = [self.xAxisDescription copyWithZone: zone];
	copySeries.definition = [self.definition copyWithZone: zone];
	copySeries.summary = [self.summary copyWithZone: zone];
	copySeries.selected = [self.selected copyWithZone: zone];
	copySeries.colorIndex = [self.colorIndex copyWithZone: zone];
	copySeries.clip = [self.clip copyWithZone: zone];
	copySeries.point = [self.point copyWithZone: zone];
	copySeries.color = [self.color copyWithZone: zone];
	copySeries.pointInterval = [self.pointInterval copyWithZone: zone];
	copySeries.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copySeries.states = [self.states copyWithZone: zone];
	copySeries.threshold = [self.threshold copyWithZone: zone];
	copySeries.softThreshold = [self.softThreshold copyWithZone: zone];
	copySeries.dragDrop = [self.dragDrop copyWithZone: zone];
	copySeries.marker = [self.marker copyWithZone: zone];
	copySeries.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copySeries.borderColor = [self.borderColor copyWithZone: zone];
	copySeries.cursor = [self.cursor copyWithZone: zone];
	copySeries.dashStyle = [self.dashStyle copyWithZone: zone];
	copySeries.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copySeries.connectNulls = [self.connectNulls copyWithZone: zone];
	copySeries.negativeColor = [self.negativeColor copyWithZone: zone];
	copySeries.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copySeries.label = [self.label copyWithZone: zone];
	copySeries.stacking = [self.stacking copyWithZone: zone];
	copySeries.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copySeries.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copySeries.events = [self.events copyWithZone: zone];
	copySeries.animationLimit = [self.animationLimit copyWithZone: zone];
	copySeries.keys = [self.keys copyWithZone: zone];
	copySeries.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copySeries.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copySeries.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copySeries.step = [self.step copyWithZone: zone];
	copySeries.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copySeries.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copySeries.shadow = [self.shadow copyWithZone: zone];
	copySeries.animation = [self.animation copyWithZone: zone];
	copySeries.tooltip = [self.tooltip copyWithZone: zone];
	copySeries.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copySeries.zones = [self.zones copyWithZone: zone];
	copySeries.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copySeries.connectEnds = [self.connectEnds copyWithZone: zone];
	copySeries.visible = [self.visible copyWithZone: zone];
	copySeries.linkedTo = [self.linkedTo copyWithZone: zone];
	copySeries.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copySeries.dataLabels = [self.dataLabels copyWithZone: zone];
	copySeries.className = [self.className copyWithZone: zone];
	copySeries.pointStart = [self.pointStart copyWithZone: zone];
	copySeries.borderWidth = [self.borderWidth copyWithZone: zone];
	copySeries.linecap = [self.linecap copyWithZone: zone];
	copySeries.lineWidth = [self.lineWidth copyWithZone: zone];
	copySeries.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copySeries.showInLegend = [self.showInLegend copyWithZone: zone];
	return copySeries;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
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
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.index) {
		params[@"index"] = self.index;
	}
	if (self.legendIndex) {
		params[@"legendIndex"] = self.legendIndex;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.stack) {
		params[@"stack"] = self.stack;
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.xAxis) {
		params[@"xAxis"] = self.xAxis;
	}
	if (self.yAxis) {
		params[@"yAxis"] = self.yAxis;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.yAxisDescription) {
		params[@"yAxisDescription"] = self.yAxisDescription;
	}
	if (self.xAxisDescription) {
		params[@"xAxisDescription"] = self.xAxisDescription;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.summary) {
		params[@"summary"] = [self.summary getParams];
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.clip) {
		params[@"clip"] = self.clip;
	}
	if (self.point) {
		params[@"point"] = [self.point getParams];
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.pointInterval) {
		params[@"pointInterval"] = self.pointInterval;
	}
	if (self.cropThreshold) {
		params[@"cropThreshold"] = self.cropThreshold;
	}
	if (self.states) {
		params[@"states"] = [self.states getParams];
	}
	if (self.threshold) {
		params[@"threshold"] = self.threshold;
	}
	if (self.softThreshold) {
		params[@"softThreshold"] = self.softThreshold;
	}
	if (self.dragDrop) {
		params[@"dragDrop"] = [self.dragDrop getParams];
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.pointDescriptionFormatter) {
		params[@"pointDescriptionFormatter"] = [self.pointDescriptionFormatter getFunction];
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.pointPlacement) {
		params[@"pointPlacement"] = self.pointPlacement;
	}
	if (self.connectNulls) {
		params[@"connectNulls"] = self.connectNulls;
	}
	if (self.negativeColor) {
		params[@"negativeColor"] = [self.negativeColor getData];
	}
	if (self.enableMouseTracking) {
		params[@"enableMouseTracking"] = self.enableMouseTracking;
	}
	if (self.label) {
		params[@"label"] = [self.label getParams];
	}
	if (self.stacking) {
		params[@"stacking"] = self.stacking;
	}
	if (self.findNearestPointBy) {
		params[@"findNearestPointBy"] = self.findNearestPointBy;
	}
	if (self.showCheckbox) {
		params[@"showCheckbox"] = self.showCheckbox;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.animationLimit) {
		params[@"animationLimit"] = self.animationLimit;
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
	if (self.turboThreshold) {
		params[@"turboThreshold"] = self.turboThreshold;
	}
	if (self.skipKeyboardNavigation) {
		params[@"skipKeyboardNavigation"] = self.skipKeyboardNavigation;
	}
	if (self.allowPointSelect) {
		params[@"allowPointSelect"] = self.allowPointSelect;
	}
	if (self.step) {
		params[@"step"] = self.step;
	}
	if (self.getExtremesFromAll) {
		params[@"getExtremesFromAll"] = self.getExtremesFromAll;
	}
	if (self.exposeElementToA11y) {
		params[@"exposeElementToA11y"] = self.exposeElementToA11y;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	if (self.tooltip) {
		params[@"tooltip"] = [self.tooltip getParams];
	}
	if (self.zoneAxis) {
		params[@"zoneAxis"] = self.zoneAxis;
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
	if (self.pointIntervalUnit) {
		params[@"pointIntervalUnit"] = self.pointIntervalUnit;
	}
	if (self.connectEnds) {
		params[@"connectEnds"] = self.connectEnds;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.linkedTo) {
		params[@"linkedTo"] = self.linkedTo;
	}
	if (self.boostThreshold) {
		params[@"boostThreshold"] = self.boostThreshold;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = [self.dataLabels getParams];
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.pointStart) {
		params[@"pointStart"] = self.pointStart;
	}
	if (self.borderWidth) {
	}
	if (self.linecap) {
		params[@"linecap"] = self.linecap;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.stickyTracking) {
		params[@"stickyTracking"] = self.stickyTracking;
	}
	if (self.showInLegend) {
		params[@"showInLegend"] = self.showInLegend;
	}
	return params;
}

# pragma mark - Setters

-(void)setData:(NSArray *)data {
	NSArray *oldValue = _data;
	_data = data;
	[self updateArrayObject:oldValue newValue:data propertyName:@"data"];
}

-(void)setId:(NSString *)id {
	NSString *oldValue = _id;
	_id = id;
	[self updateNSObject:oldValue newValue:id propertyName:@"id"];
}

-(void)setIndex:(NSNumber *)index {
	NSNumber *oldValue = _index;
	_index = index;
	[self updateNSObject:oldValue newValue:index propertyName:@"index"];
}

-(void)setLegendIndex:(NSNumber *)legendIndex {
	NSNumber *oldValue = _legendIndex;
	_legendIndex = legendIndex;
	[self updateNSObject:oldValue newValue:legendIndex propertyName:@"legendIndex"];
}

-(void)setName:(NSString *)name {
	NSString *oldValue = _name;
	_name = name;
	[self updateNSObject:oldValue newValue:name propertyName:@"name"];
}

-(void)setStack:(NSString *)stack {
	NSString *oldValue = _stack;
	_stack = stack;
	[self updateNSObject:oldValue newValue:stack propertyName:@"stack"];
}

-(void)setType:(NSString *)type {
	NSString *oldValue = _type;
	_type = type;
	[self updateNSObject:oldValue newValue:type propertyName:@"type"];
}

-(void)setXAxis:(id)xAxis {
	id oldValue = _xAxis;
	_xAxis = xAxis;
	[self updateNSObject:oldValue newValue:xAxis propertyName:@"xAxis"];
}

-(void)setYAxis:(id)yAxis {
	id oldValue = _yAxis;
	_yAxis = yAxis;
	[self updateNSObject:oldValue newValue:yAxis propertyName:@"yAxis"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	NSNumber *oldValue = _zIndex;
	_zIndex = zIndex;
	[self updateNSObject:oldValue newValue:zIndex propertyName:@"zIndex"];
}

-(void)setYAxisDescription:(NSString *)yAxisDescription {
	NSString *oldValue = _yAxisDescription;
	_yAxisDescription = yAxisDescription;
	[self updateNSObject:oldValue newValue:yAxisDescription propertyName:@"yAxisDescription"];
}

-(void)setXAxisDescription:(NSString *)xAxisDescription {
	NSString *oldValue = _xAxisDescription;
	_xAxisDescription = xAxisDescription;
	[self updateNSObject:oldValue newValue:xAxisDescription propertyName:@"xAxisDescription"];
}

-(void)setDefinition:(NSString *)definition {
	NSString *oldValue = _definition;
	_definition = definition;
	[self updateNSObject:oldValue newValue:definition propertyName:@"definition"];
}

-(void)setSummary:(HISummary *)summary {
	HISummary *oldValue = _summary;
	_summary = summary;
	[self updateHIObject:oldValue newValue:summary propertyName:@"summary"];
}

-(void)setSelected:(NSNumber *)selected {
	NSNumber *oldValue = _selected;
	_selected = selected;
	[self updateNSObject:oldValue newValue:selected propertyName:@"selected"];
}

-(void)setColorIndex:(NSNumber *)colorIndex {
	NSNumber *oldValue = _colorIndex;
	_colorIndex = colorIndex;
	[self updateNSObject:oldValue newValue:colorIndex propertyName:@"colorIndex"];
}

-(void)setClip:(NSNumber *)clip {
	NSNumber *oldValue = _clip;
	_clip = clip;
	[self updateNSObject:oldValue newValue:clip propertyName:@"clip"];
}

-(void)setPoint:(HIPoint *)point {
	HIPoint *oldValue = _point;
	_point = point;
	[self updateHIObject:oldValue newValue:point propertyName:@"point"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setPointInterval:(NSNumber *)pointInterval {
	NSNumber *oldValue = _pointInterval;
	_pointInterval = pointInterval;
	[self updateNSObject:oldValue newValue:pointInterval propertyName:@"pointInterval"];
}

-(void)setCropThreshold:(NSNumber *)cropThreshold {
	NSNumber *oldValue = _cropThreshold;
	_cropThreshold = cropThreshold;
	[self updateNSObject:oldValue newValue:cropThreshold propertyName:@"cropThreshold"];
}

-(void)setStates:(HIStates *)states {
	HIStates *oldValue = _states;
	_states = states;
	[self updateHIObject:oldValue newValue:states propertyName:@"states"];
}

-(void)setThreshold:(NSNumber *)threshold {
	NSNumber *oldValue = _threshold;
	_threshold = threshold;
	[self updateNSObject:oldValue newValue:threshold propertyName:@"threshold"];
}

-(void)setSoftThreshold:(NSNumber *)softThreshold {
	NSNumber *oldValue = _softThreshold;
	_softThreshold = softThreshold;
	[self updateNSObject:oldValue newValue:softThreshold propertyName:@"softThreshold"];
}

-(void)setDragDrop:(HIDragDrop *)dragDrop {
	HIDragDrop *oldValue = _dragDrop;
	_dragDrop = dragDrop;
	[self updateHIObject:oldValue newValue:dragDrop propertyName:@"dragDrop"];
}

-(void)setMarker:(HIMarker *)marker {
	HIMarker *oldValue = _marker;
	_marker = marker;
	[self updateHIObject:oldValue newValue:marker propertyName:@"marker"];
}

-(void)setPointDescriptionFormatter:(HIFunction *)pointDescriptionFormatter {
	HIFunction *oldValue = _pointDescriptionFormatter;
	_pointDescriptionFormatter = pointDescriptionFormatter;
	[self updateHIObject:oldValue newValue:pointDescriptionFormatter propertyName:@"pointDescriptionFormatter"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setCursor:(NSString *)cursor {
	NSString *oldValue = _cursor;
	_cursor = cursor;
	[self updateNSObject:oldValue newValue:cursor propertyName:@"cursor"];
}

-(void)setDashStyle:(NSString *)dashStyle {
	NSString *oldValue = _dashStyle;
	_dashStyle = dashStyle;
	[self updateNSObject:oldValue newValue:dashStyle propertyName:@"dashStyle"];
}

-(void)setPointPlacement:(id)pointPlacement {
	id oldValue = _pointPlacement;
	_pointPlacement = pointPlacement;
	[self updateNSObject:oldValue newValue:pointPlacement propertyName:@"pointPlacement"];
}

-(void)setConnectNulls:(NSNumber *)connectNulls {
	NSNumber *oldValue = _connectNulls;
	_connectNulls = connectNulls;
	[self updateNSObject:oldValue newValue:connectNulls propertyName:@"connectNulls"];
}

-(void)setNegativeColor:(HIColor *)negativeColor {
	HIColor *oldValue = _negativeColor;
	_negativeColor = negativeColor;
	[self updateHIObject:oldValue newValue:negativeColor propertyName:@"negativeColor"];
}

-(void)setEnableMouseTracking:(NSNumber *)enableMouseTracking {
	NSNumber *oldValue = _enableMouseTracking;
	_enableMouseTracking = enableMouseTracking;
	[self updateNSObject:oldValue newValue:enableMouseTracking propertyName:@"enableMouseTracking"];
}

-(void)setLabel:(HILabel *)label {
	HILabel *oldValue = _label;
	_label = label;
	[self updateHIObject:oldValue newValue:label propertyName:@"label"];
}

-(void)setStacking:(NSString *)stacking {
	NSString *oldValue = _stacking;
	_stacking = stacking;
	[self updateNSObject:oldValue newValue:stacking propertyName:@"stacking"];
}

-(void)setFindNearestPointBy:(NSString *)findNearestPointBy {
	NSString *oldValue = _findNearestPointBy;
	_findNearestPointBy = findNearestPointBy;
	[self updateNSObject:oldValue newValue:findNearestPointBy propertyName:@"findNearestPointBy"];
}

-(void)setShowCheckbox:(NSNumber *)showCheckbox {
	NSNumber *oldValue = _showCheckbox;
	_showCheckbox = showCheckbox;
	[self updateNSObject:oldValue newValue:showCheckbox propertyName:@"showCheckbox"];
}

-(void)setEvents:(HIEvents *)events {
	HIEvents *oldValue = _events;
	_events = events;
	[self updateHIObject:oldValue newValue:events propertyName:@"events"];
}

-(void)setAnimationLimit:(NSNumber *)animationLimit {
	NSNumber *oldValue = _animationLimit;
	_animationLimit = animationLimit;
	[self updateNSObject:oldValue newValue:animationLimit propertyName:@"animationLimit"];
}

-(void)setKeys:(NSArray<NSString *> *)keys {
	NSArray<NSString *> *oldValue = _keys;
	_keys = keys;
	[self updateArrayObject:oldValue newValue:keys propertyName:@"keys"];
}

-(void)setTurboThreshold:(NSNumber *)turboThreshold {
	NSNumber *oldValue = _turboThreshold;
	_turboThreshold = turboThreshold;
	[self updateNSObject:oldValue newValue:turboThreshold propertyName:@"turboThreshold"];
}

-(void)setSkipKeyboardNavigation:(NSNumber *)skipKeyboardNavigation {
	NSNumber *oldValue = _skipKeyboardNavigation;
	_skipKeyboardNavigation = skipKeyboardNavigation;
	[self updateNSObject:oldValue newValue:skipKeyboardNavigation propertyName:@"skipKeyboardNavigation"];
}

-(void)setAllowPointSelect:(NSNumber *)allowPointSelect {
	NSNumber *oldValue = _allowPointSelect;
	_allowPointSelect = allowPointSelect;
	[self updateNSObject:oldValue newValue:allowPointSelect propertyName:@"allowPointSelect"];
}

-(void)setStep:(NSString *)step {
	NSString *oldValue = _step;
	_step = step;
	[self updateNSObject:oldValue newValue:step propertyName:@"step"];
}

-(void)setGetExtremesFromAll:(NSNumber *)getExtremesFromAll {
	NSNumber *oldValue = _getExtremesFromAll;
	_getExtremesFromAll = getExtremesFromAll;
	[self updateNSObject:oldValue newValue:getExtremesFromAll propertyName:@"getExtremesFromAll"];
}

-(void)setExposeElementToA11y:(NSNumber *)exposeElementToA11y {
	NSNumber *oldValue = _exposeElementToA11y;
	_exposeElementToA11y = exposeElementToA11y;
	[self updateNSObject:oldValue newValue:exposeElementToA11y propertyName:@"exposeElementToA11y"];
}

-(void)setShadow:(NSNumber *)shadow {
	NSNumber *oldValue = _shadow;
	_shadow = shadow;
	[self updateNSObject:oldValue newValue:shadow propertyName:@"shadow"];
}

-(void)setAnimation:(HIAnimationOptionsObject *)animation {
	HIAnimationOptionsObject *oldValue = _animation;
	_animation = animation;
	[self updateHIObject:oldValue newValue:animation propertyName:@"animation"];
}

-(void)setTooltip:(HITooltip *)tooltip {
	HITooltip *oldValue = _tooltip;
	_tooltip = tooltip;
	[self updateHIObject:oldValue newValue:tooltip propertyName:@"tooltip"];
}

-(void)setZoneAxis:(NSString *)zoneAxis {
	NSString *oldValue = _zoneAxis;
	_zoneAxis = zoneAxis;
	[self updateNSObject:oldValue newValue:zoneAxis propertyName:@"zoneAxis"];
}

-(void)setZones:(NSArray <HIZones *> *)zones {
	NSArray <HIZones *> *oldValue = _zones;
	_zones = zones;
	[self updateArrayObject:oldValue newValue:zones propertyName:@"zones"];
}

-(void)setPointIntervalUnit:(NSString *)pointIntervalUnit {
	NSString *oldValue = _pointIntervalUnit;
	_pointIntervalUnit = pointIntervalUnit;
	[self updateNSObject:oldValue newValue:pointIntervalUnit propertyName:@"pointIntervalUnit"];
}

-(void)setConnectEnds:(NSNumber *)connectEnds {
	NSNumber *oldValue = _connectEnds;
	_connectEnds = connectEnds;
	[self updateNSObject:oldValue newValue:connectEnds propertyName:@"connectEnds"];
}

-(void)setVisible:(NSNumber *)visible {
	NSNumber *oldValue = _visible;
	_visible = visible;
	[self updateNSObject:oldValue newValue:visible propertyName:@"visible"];
}

-(void)setLinkedTo:(NSString *)linkedTo {
	NSString *oldValue = _linkedTo;
	_linkedTo = linkedTo;
	[self updateNSObject:oldValue newValue:linkedTo propertyName:@"linkedTo"];
}

-(void)setBoostThreshold:(NSNumber *)boostThreshold {
	NSNumber *oldValue = _boostThreshold;
	_boostThreshold = boostThreshold;
	[self updateNSObject:oldValue newValue:boostThreshold propertyName:@"boostThreshold"];
}

-(void)setDataLabels:(HIDataLabels *)dataLabels {
	HIDataLabels *oldValue = _dataLabels;
	_dataLabels = dataLabels;
	[self updateHIObject:oldValue newValue:dataLabels propertyName:@"dataLabels"];
}

-(void)setClassName:(NSString *)className {
	NSString *oldValue = _className;
	_className = className;
	[self updateNSObject:oldValue newValue:className propertyName:@"className"];
}

-(void)setPointStart:(NSNumber *)pointStart {
	NSNumber *oldValue = _pointStart;
	_pointStart = pointStart;
	[self updateNSObject:oldValue newValue:pointStart propertyName:@"pointStart"];
}

-(void)setBorderWidth:(id)borderWidth {
	id oldValue = _borderWidth;
	_borderWidth = borderWidth;
	[self updateNSObject:oldValue newValue:borderWidth propertyName:@"borderWidth"];
}

-(void)setLinecap:(NSString *)linecap {
	NSString *oldValue = _linecap;
	_linecap = linecap;
	[self updateNSObject:oldValue newValue:linecap propertyName:@"linecap"];
}

-(void)setLineWidth:(NSNumber *)lineWidth {
	NSNumber *oldValue = _lineWidth;
	_lineWidth = lineWidth;
	[self updateNSObject:oldValue newValue:lineWidth propertyName:@"lineWidth"];
}

-(void)setStickyTracking:(NSNumber *)stickyTracking {
	NSNumber *oldValue = _stickyTracking;
	_stickyTracking = stickyTracking;
	[self updateNSObject:oldValue newValue:stickyTracking propertyName:@"stickyTracking"];
}

-(void)setShowInLegend:(NSNumber *)showInLegend {
	NSNumber *oldValue = _showInLegend;
	_showInLegend = showInLegend;
	[self updateNSObject:oldValue newValue:showInLegend propertyName:@"showInLegend"];
}

@end