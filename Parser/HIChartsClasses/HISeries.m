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
	copySeries.point = [self.point copyWithZone: zone];
	copySeries.selected = [self.selected copyWithZone: zone];
	copySeries.colorIndex = [self.colorIndex copyWithZone: zone];
	copySeries.clip = [self.clip copyWithZone: zone];
	copySeries.negativeColor = [self.negativeColor copyWithZone: zone];
	copySeries.color = [self.color copyWithZone: zone];
	copySeries.pointInterval = [self.pointInterval copyWithZone: zone];
	copySeries.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copySeries.states = [self.states copyWithZone: zone];
	copySeries.softThreshold = [self.softThreshold copyWithZone: zone];
	copySeries.dragDrop = [self.dragDrop copyWithZone: zone];
	copySeries.marker = [self.marker copyWithZone: zone];
	copySeries.tooltip = [self.tooltip copyWithZone: zone];
	copySeries.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copySeries.borderColor = [self.borderColor copyWithZone: zone];
	copySeries.className = [self.className copyWithZone: zone];
	copySeries.dashStyle = [self.dashStyle copyWithZone: zone];
	copySeries.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copySeries.connectNulls = [self.connectNulls copyWithZone: zone];
	copySeries.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copySeries.label = [self.label copyWithZone: zone];
	copySeries.stacking = [self.stacking copyWithZone: zone];
	copySeries.animation = [self.animation copyWithZone: zone];
	copySeries.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copySeries.threshold = [self.threshold copyWithZone: zone];
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
	copySeries.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copySeries.zones = [self.zones copyWithZone: zone];
	copySeries.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copySeries.lineWidth = [self.lineWidth copyWithZone: zone];
	copySeries.visible = [self.visible copyWithZone: zone];
	copySeries.linkedTo = [self.linkedTo copyWithZone: zone];
	copySeries.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copySeries.dataLabels = [self.dataLabels copyWithZone: zone];
	copySeries.cursor = [self.cursor copyWithZone: zone];
	copySeries.pointStart = [self.pointStart copyWithZone: zone];
	copySeries.borderWidth = [self.borderWidth copyWithZone: zone];
	copySeries.linecap = [self.linecap copyWithZone: zone];
	copySeries.connectEnds = [self.connectEnds copyWithZone: zone];
	copySeries.boostThreshold = [self.boostThreshold copyWithZone: zone];
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
	if (self.point) {
		params[@"point"] = [self.point getParams];
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
	if (self.negativeColor) {
		params[@"negativeColor"] = [self.negativeColor getData];
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
	if (self.softThreshold) {
		params[@"softThreshold"] = self.softThreshold;
	}
	if (self.dragDrop) {
		params[@"dragDrop"] = [self.dragDrop getParams];
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.tooltip) {
		params[@"tooltip"] = [self.tooltip getParams];
	}
	if (self.pointDescriptionFormatter) {
		params[@"pointDescriptionFormatter"] = [self.pointDescriptionFormatter getFunction];
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.className) {
		params[@"className"] = self.className;
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
	if (self.enableMouseTracking) {
		params[@"enableMouseTracking"] = self.enableMouseTracking;
	}
	if (self.label) {
		params[@"label"] = [self.label getParams];
	}
	if (self.stacking) {
		params[@"stacking"] = self.stacking;
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	if (self.findNearestPointBy) {
		params[@"findNearestPointBy"] = self.findNearestPointBy;
	}
	if (self.threshold) {
		params[@"threshold"] = self.threshold;
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
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.linkedTo) {
		params[@"linkedTo"] = self.linkedTo;
	}
	if (self.stickyTracking) {
		params[@"stickyTracking"] = self.stickyTracking;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = [self.dataLabels getParams];
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.pointStart) {
		params[@"pointStart"] = self.pointStart;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.linecap) {
		params[@"linecap"] = self.linecap;
	}
	if (self.connectEnds) {
		params[@"connectEnds"] = self.connectEnds;
	}
	if (self.boostThreshold) {
		params[@"boostThreshold"] = self.boostThreshold;
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
	_id = id;
	[self updateNSObject:@"id"];
}

-(void)setIndex:(NSNumber *)index {
	_index = index;
	[self updateNSObject:@"index"];
}

-(void)setLegendIndex:(NSNumber *)legendIndex {
	_legendIndex = legendIndex;
	[self updateNSObject:@"legendIndex"];
}

-(void)setName:(NSString *)name {
	_name = name;
	[self updateNSObject:@"name"];
}

-(void)setStack:(NSString *)stack {
	_stack = stack;
	[self updateNSObject:@"stack"];
}

-(void)setType:(NSString *)type {
	_type = type;
	[self updateNSObject:@"type"];
}

-(void)setXAxis:(id)xAxis {
	_xAxis = xAxis;
	[self updateNSObject:@"xAxis"];
}

-(void)setYAxis:(id)yAxis {
	_yAxis = yAxis;
	[self updateNSObject:@"yAxis"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	_zIndex = zIndex;
	[self updateNSObject:@"zIndex"];
}

-(void)setYAxisDescription:(NSString *)yAxisDescription {
	_yAxisDescription = yAxisDescription;
	[self updateNSObject:@"yAxisDescription"];
}

-(void)setXAxisDescription:(NSString *)xAxisDescription {
	_xAxisDescription = xAxisDescription;
	[self updateNSObject:@"xAxisDescription"];
}

-(void)setDefinition:(NSString *)definition {
	_definition = definition;
	[self updateNSObject:@"definition"];
}

-(void)setSummary:(HISummary *)summary {
	HISummary *oldValue = _summary;
	if(self.summary) {
		[self removeObserver:self forKeyPath:@"summary.isUpdated"];
	}
	_summary = summary;
	[self updateHIObject:oldValue newValue:summary propertyName:@"summary"];
}

-(void)setPoint:(HIPoint *)point {
	HIPoint *oldValue = _point;
	if(self.point) {
		[self removeObserver:self forKeyPath:@"point.isUpdated"];
	}
	_point = point;
	[self updateHIObject:oldValue newValue:point propertyName:@"point"];
}

-(void)setSelected:(NSNumber *)selected {
	_selected = selected;
	[self updateNSObject:@"selected"];
}

-(void)setColorIndex:(NSNumber *)colorIndex {
	_colorIndex = colorIndex;
	[self updateNSObject:@"colorIndex"];
}

-(void)setClip:(NSNumber *)clip {
	_clip = clip;
	[self updateNSObject:@"clip"];
}

-(void)setNegativeColor:(HIColor *)negativeColor {
	HIColor *oldValue = _negativeColor;
	if(self.negativeColor) {
		[self removeObserver:self forKeyPath:@"negativeColor.isUpdated"];
	}
	_negativeColor = negativeColor;
	[self updateHIObject:oldValue newValue:negativeColor propertyName:@"negativeColor"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	if(self.color) {
		[self removeObserver:self forKeyPath:@"color.isUpdated"];
	}
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setPointInterval:(NSNumber *)pointInterval {
	_pointInterval = pointInterval;
	[self updateNSObject:@"pointInterval"];
}

-(void)setCropThreshold:(NSNumber *)cropThreshold {
	_cropThreshold = cropThreshold;
	[self updateNSObject:@"cropThreshold"];
}

-(void)setStates:(HIStates *)states {
	HIStates *oldValue = _states;
	if(self.states) {
		[self removeObserver:self forKeyPath:@"states.isUpdated"];
	}
	_states = states;
	[self updateHIObject:oldValue newValue:states propertyName:@"states"];
}

-(void)setSoftThreshold:(NSNumber *)softThreshold {
	_softThreshold = softThreshold;
	[self updateNSObject:@"softThreshold"];
}

-(void)setDragDrop:(HIDragDrop *)dragDrop {
	HIDragDrop *oldValue = _dragDrop;
	if(self.dragDrop) {
		[self removeObserver:self forKeyPath:@"dragDrop.isUpdated"];
	}
	_dragDrop = dragDrop;
	[self updateHIObject:oldValue newValue:dragDrop propertyName:@"dragDrop"];
}

-(void)setMarker:(HIMarker *)marker {
	HIMarker *oldValue = _marker;
	if(self.marker) {
		[self removeObserver:self forKeyPath:@"marker.isUpdated"];
	}
	_marker = marker;
	[self updateHIObject:oldValue newValue:marker propertyName:@"marker"];
}

-(void)setTooltip:(HITooltip *)tooltip {
	HITooltip *oldValue = _tooltip;
	if(self.tooltip) {
		[self removeObserver:self forKeyPath:@"tooltip.isUpdated"];
	}
	_tooltip = tooltip;
	[self updateHIObject:oldValue newValue:tooltip propertyName:@"tooltip"];
}

-(void)setPointDescriptionFormatter:(HIFunction *)pointDescriptionFormatter {
	HIFunction *oldValue = _pointDescriptionFormatter;
	if(self.pointDescriptionFormatter) {
		[self removeObserver:self forKeyPath:@"pointDescriptionFormatter.isUpdated"];
	}
	_pointDescriptionFormatter = pointDescriptionFormatter;
	[self updateHIObject:oldValue newValue:pointDescriptionFormatter propertyName:@"pointDescriptionFormatter"];
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

-(void)setDashStyle:(NSString *)dashStyle {
	_dashStyle = dashStyle;
	[self updateNSObject:@"dashStyle"];
}

-(void)setPointPlacement:(id)pointPlacement {
	_pointPlacement = pointPlacement;
	[self updateNSObject:@"pointPlacement"];
}

-(void)setConnectNulls:(NSNumber *)connectNulls {
	_connectNulls = connectNulls;
	[self updateNSObject:@"connectNulls"];
}

-(void)setEnableMouseTracking:(NSNumber *)enableMouseTracking {
	_enableMouseTracking = enableMouseTracking;
	[self updateNSObject:@"enableMouseTracking"];
}

-(void)setLabel:(HILabel *)label {
	HILabel *oldValue = _label;
	if(self.label) {
		[self removeObserver:self forKeyPath:@"label.isUpdated"];
	}
	_label = label;
	[self updateHIObject:oldValue newValue:label propertyName:@"label"];
}

-(void)setStacking:(NSString *)stacking {
	_stacking = stacking;
	[self updateNSObject:@"stacking"];
}

-(void)setAnimation:(HIAnimationOptionsObject *)animation {
	HIAnimationOptionsObject *oldValue = _animation;
	if(self.animation) {
		[self removeObserver:self forKeyPath:@"animation.isUpdated"];
	}
	_animation = animation;
	[self updateHIObject:oldValue newValue:animation propertyName:@"animation"];
}

-(void)setFindNearestPointBy:(NSString *)findNearestPointBy {
	_findNearestPointBy = findNearestPointBy;
	[self updateNSObject:@"findNearestPointBy"];
}

-(void)setThreshold:(NSNumber *)threshold {
	_threshold = threshold;
	[self updateNSObject:@"threshold"];
}

-(void)setShowCheckbox:(NSNumber *)showCheckbox {
	_showCheckbox = showCheckbox;
	[self updateNSObject:@"showCheckbox"];
}

-(void)setEvents:(HIEvents *)events {
	HIEvents *oldValue = _events;
	if(self.events) {
		[self removeObserver:self forKeyPath:@"events.isUpdated"];
	}
	_events = events;
	[self updateHIObject:oldValue newValue:events propertyName:@"events"];
}

-(void)setAnimationLimit:(NSNumber *)animationLimit {
	_animationLimit = animationLimit;
	[self updateNSObject:@"animationLimit"];
}

-(void)setKeys:(NSArray<NSString *> *)keys {
	NSArray<NSString *> *oldValue = _keys;
	_keys = keys;
	[self updateArrayObject:oldValue newValue:keys propertyName:@"keys"];
}

-(void)setTurboThreshold:(NSNumber *)turboThreshold {
	_turboThreshold = turboThreshold;
	[self updateNSObject:@"turboThreshold"];
}

-(void)setSkipKeyboardNavigation:(NSNumber *)skipKeyboardNavigation {
	_skipKeyboardNavigation = skipKeyboardNavigation;
	[self updateNSObject:@"skipKeyboardNavigation"];
}

-(void)setAllowPointSelect:(NSNumber *)allowPointSelect {
	_allowPointSelect = allowPointSelect;
	[self updateNSObject:@"allowPointSelect"];
}

-(void)setStep:(NSString *)step {
	_step = step;
	[self updateNSObject:@"step"];
}

-(void)setGetExtremesFromAll:(NSNumber *)getExtremesFromAll {
	_getExtremesFromAll = getExtremesFromAll;
	[self updateNSObject:@"getExtremesFromAll"];
}

-(void)setExposeElementToA11y:(NSNumber *)exposeElementToA11y {
	_exposeElementToA11y = exposeElementToA11y;
	[self updateNSObject:@"exposeElementToA11y"];
}

-(void)setShadow:(NSNumber *)shadow {
	_shadow = shadow;
	[self updateNSObject:@"shadow"];
}

-(void)setZoneAxis:(NSString *)zoneAxis {
	_zoneAxis = zoneAxis;
	[self updateNSObject:@"zoneAxis"];
}

-(void)setZones:(NSArray <HIZones *> *)zones {
	NSArray <HIZones *> *oldValue = _zones;
	_zones = zones;
	[self updateArrayObject:oldValue newValue:zones propertyName:@"zones"];
}

-(void)setPointIntervalUnit:(NSString *)pointIntervalUnit {
	_pointIntervalUnit = pointIntervalUnit;
	[self updateNSObject:@"pointIntervalUnit"];
}

-(void)setLineWidth:(NSNumber *)lineWidth {
	_lineWidth = lineWidth;
	[self updateNSObject:@"lineWidth"];
}

-(void)setVisible:(NSNumber *)visible {
	_visible = visible;
	[self updateNSObject:@"visible"];
}

-(void)setLinkedTo:(NSString *)linkedTo {
	_linkedTo = linkedTo;
	[self updateNSObject:@"linkedTo"];
}

-(void)setStickyTracking:(NSNumber *)stickyTracking {
	_stickyTracking = stickyTracking;
	[self updateNSObject:@"stickyTracking"];
}

-(void)setDataLabels:(HIDataLabels *)dataLabels {
	HIDataLabels *oldValue = _dataLabels;
	if(self.dataLabels) {
		[self removeObserver:self forKeyPath:@"dataLabels.isUpdated"];
	}
	_dataLabels = dataLabels;
	[self updateHIObject:oldValue newValue:dataLabels propertyName:@"dataLabels"];
}

-(void)setCursor:(NSString *)cursor {
	_cursor = cursor;
	[self updateNSObject:@"cursor"];
}

-(void)setPointStart:(NSNumber *)pointStart {
	_pointStart = pointStart;
	[self updateNSObject:@"pointStart"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setLinecap:(NSString *)linecap {
	_linecap = linecap;
	[self updateNSObject:@"linecap"];
}

-(void)setConnectEnds:(NSNumber *)connectEnds {
	_connectEnds = connectEnds;
	[self updateNSObject:@"connectEnds"];
}

-(void)setBoostThreshold:(NSNumber *)boostThreshold {
	_boostThreshold = boostThreshold;
	[self updateNSObject:@"boostThreshold"];
}

-(void)setShowInLegend:(NSNumber *)showInLegend {
	_showInLegend = showInLegend;
	[self updateNSObject:@"showInLegend"];
}

@end