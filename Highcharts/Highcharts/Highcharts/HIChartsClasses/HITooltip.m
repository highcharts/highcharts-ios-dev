#import "HIChartsJSONSerializableSubclass.h"
#import "HITooltip.h"

@implementation HITooltip

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HITooltip *copyTooltip = [[HITooltip allocWithZone: zone] init];
	copyTooltip.followTouchMove = [self.followTouchMove copyWithZone: zone];
	copyTooltip.nullFormatter = [self.nullFormatter copyWithZone: zone];
	copyTooltip.clusterFormat = [self.clusterFormat copyWithZone: zone];
	copyTooltip.borderRadius = [self.borderRadius copyWithZone: zone];
	copyTooltip.headerFormat = [self.headerFormat copyWithZone: zone];
	copyTooltip.valueSuffix = [self.valueSuffix copyWithZone: zone];
	copyTooltip.valuePrefix = [self.valuePrefix copyWithZone: zone];
	copyTooltip.positioner = [self.positioner copyWithZone: zone];
	copyTooltip.stickOnContact = [self.stickOnContact copyWithZone: zone];
	copyTooltip.useHTML = [self.useHTML copyWithZone: zone];
	copyTooltip.borderColor = [self.borderColor copyWithZone: zone];
	copyTooltip.style = [self.style copyWithZone: zone];
	copyTooltip.headerShape = [self.headerShape copyWithZone: zone];
	copyTooltip.footerFormat = [self.footerFormat copyWithZone: zone];
	copyTooltip.outside = [self.outside copyWithZone: zone];
	copyTooltip.animation = [self.animation copyWithZone: zone];
	copyTooltip.split = [self.split copyWithZone: zone];
	copyTooltip.backgroundColor = [self.backgroundColor copyWithZone: zone];
	copyTooltip.snap = [self.snap copyWithZone: zone];
	copyTooltip.shared = [self.shared copyWithZone: zone];
	copyTooltip.formatter = [self.formatter copyWithZone: zone];
	copyTooltip.nullFormat = [self.nullFormat copyWithZone: zone];
	copyTooltip.format = [self.format copyWithZone: zone];
	copyTooltip.pointFormat = [self.pointFormat copyWithZone: zone];
	copyTooltip.xDateFormat = [self.xDateFormat copyWithZone: zone];
	copyTooltip.dateTimeLabelFormats = [self.dateTimeLabelFormats copyWithZone: zone];
	copyTooltip.padding = [self.padding copyWithZone: zone];
	copyTooltip.shadow = [self.shadow copyWithZone: zone];
	copyTooltip.distance = [self.distance copyWithZone: zone];
	copyTooltip.enabled = [self.enabled copyWithZone: zone];
	copyTooltip.shape = [self.shape copyWithZone: zone];
	copyTooltip.pointFormatter = [self.pointFormatter copyWithZone: zone];
	copyTooltip.className = [self.className copyWithZone: zone];
	copyTooltip.borderWidth = [self.borderWidth copyWithZone: zone];
	copyTooltip.followPointer = [self.followPointer copyWithZone: zone];
	copyTooltip.hideDelay = [self.hideDelay copyWithZone: zone];
	copyTooltip.valueDecimals = [self.valueDecimals copyWithZone: zone];
	copyTooltip.linkFormat = [self.linkFormat copyWithZone: zone];
	copyTooltip.nodeFormat = [self.nodeFormat copyWithZone: zone];
	copyTooltip.nodeFormatter = [self.nodeFormatter copyWithZone: zone];
	return copyTooltip;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	params[@"_wrapperID"] = self.uuid;
	if (self.followTouchMove) {
		params[@"followTouchMove"] = self.followTouchMove;
	}
	if (self.nullFormatter) {
		params[@"nullFormatter"] = [self.nullFormatter getFunction];
	}
	if (self.clusterFormat) {
		params[@"clusterFormat"] = self.clusterFormat;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.headerFormat) {
		params[@"headerFormat"] = self.headerFormat;
	}
	if (self.valueSuffix) {
		params[@"valueSuffix"] = self.valueSuffix;
	}
	if (self.valuePrefix) {
		params[@"valuePrefix"] = self.valuePrefix;
	}
	if (self.positioner) {
		params[@"positioner"] = [self.positioner getFunction];
	}
	if (self.stickOnContact) {
		params[@"stickOnContact"] = self.stickOnContact;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.headerShape) {
		params[@"headerShape"] = self.headerShape;
	}
	if (self.footerFormat) {
		params[@"footerFormat"] = self.footerFormat;
	}
	if (self.outside) {
		params[@"outside"] = self.outside;
	}
	if (self.animation) {
		params[@"animation"] = self.animation;
	}
	if (self.split) {
		params[@"split"] = self.split;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.snap) {
		params[@"snap"] = self.snap;
	}
	if (self.shared) {
		params[@"shared"] = self.shared;
	}
	if (self.formatter) {
		params[@"formatter"] = [self.formatter getFunction];
	}
	if (self.nullFormat) {
		params[@"nullFormat"] = self.nullFormat;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.pointFormat) {
		params[@"pointFormat"] = self.pointFormat;
	}
	if (self.xDateFormat) {
		params[@"xDateFormat"] = self.xDateFormat;
	}
	if (self.dateTimeLabelFormats) {
		params[@"dateTimeLabelFormats"] = [self.dateTimeLabelFormats getParams];
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.shadow) {
		params[@"shadow"] = [self.shadow getParams];
	}
	if (self.distance) {
		params[@"distance"] = self.distance;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.pointFormatter) {
		params[@"pointFormatter"] = [self.pointFormatter getFunction];
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.followPointer) {
		params[@"followPointer"] = self.followPointer;
	}
	if (self.hideDelay) {
		params[@"hideDelay"] = self.hideDelay;
	}
	if (self.valueDecimals) {
		params[@"valueDecimals"] = self.valueDecimals;
	}
	if (self.linkFormat) {
		params[@"linkFormat"] = self.linkFormat;
	}
	if (self.nodeFormat) {
		params[@"nodeFormat"] = self.nodeFormat;
	}
	if (self.nodeFormatter) {
		params[@"nodeFormatter"] = [self.nodeFormatter getFunction];
	}
	return params;
}

# pragma mark - Setters

-(void)setFollowTouchMove:(NSNumber *)followTouchMove {
	NSNumber *oldValue = _followTouchMove;
	_followTouchMove = followTouchMove;
	[self updateNSObject:oldValue newValue:followTouchMove propertyName:@"followTouchMove"];
}

-(void)setNullFormatter:(HIFunction *)nullFormatter {
	HIFunction *oldValue = _nullFormatter;
	_nullFormatter = nullFormatter;
	[self updateHIObject:oldValue newValue:nullFormatter propertyName:@"nullFormatter"];
}

-(void)setClusterFormat:(NSString *)clusterFormat {
	NSString *oldValue = _clusterFormat;
	_clusterFormat = clusterFormat;
	[self updateNSObject:oldValue newValue:clusterFormat propertyName:@"clusterFormat"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	NSNumber *oldValue = _borderRadius;
	_borderRadius = borderRadius;
	[self updateNSObject:oldValue newValue:borderRadius propertyName:@"borderRadius"];
}

-(void)setHeaderFormat:(NSString *)headerFormat {
	NSString *oldValue = _headerFormat;
	_headerFormat = headerFormat;
	[self updateNSObject:oldValue newValue:headerFormat propertyName:@"headerFormat"];
}

-(void)setValueSuffix:(NSString *)valueSuffix {
	NSString *oldValue = _valueSuffix;
	_valueSuffix = valueSuffix;
	[self updateNSObject:oldValue newValue:valueSuffix propertyName:@"valueSuffix"];
}

-(void)setValuePrefix:(NSString *)valuePrefix {
	NSString *oldValue = _valuePrefix;
	_valuePrefix = valuePrefix;
	[self updateNSObject:oldValue newValue:valuePrefix propertyName:@"valuePrefix"];
}

-(void)setPositioner:(HIFunction *)positioner {
	HIFunction *oldValue = _positioner;
	_positioner = positioner;
	[self updateHIObject:oldValue newValue:positioner propertyName:@"positioner"];
}

-(void)setStickOnContact:(NSNumber *)stickOnContact {
	NSNumber *oldValue = _stickOnContact;
	_stickOnContact = stickOnContact;
	[self updateNSObject:oldValue newValue:stickOnContact propertyName:@"stickOnContact"];
}

-(void)setUseHTML:(NSNumber *)useHTML {
	NSNumber *oldValue = _useHTML;
	_useHTML = useHTML;
	[self updateNSObject:oldValue newValue:useHTML propertyName:@"useHTML"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setStyle:(HICSSObject *)style {
	HICSSObject *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setHeaderShape:(NSString *)headerShape {
	NSString *oldValue = _headerShape;
	_headerShape = headerShape;
	[self updateNSObject:oldValue newValue:headerShape propertyName:@"headerShape"];
}

-(void)setFooterFormat:(NSString *)footerFormat {
	NSString *oldValue = _footerFormat;
	_footerFormat = footerFormat;
	[self updateNSObject:oldValue newValue:footerFormat propertyName:@"footerFormat"];
}

-(void)setOutside:(NSNumber *)outside {
	NSNumber *oldValue = _outside;
	_outside = outside;
	[self updateNSObject:oldValue newValue:outside propertyName:@"outside"];
}

-(void)setAnimation:(NSNumber *)animation {
	NSNumber *oldValue = _animation;
	_animation = animation;
	[self updateNSObject:oldValue newValue:animation propertyName:@"animation"];
}

-(void)setSplit:(NSNumber *)split {
	NSNumber *oldValue = _split;
	_split = split;
	[self updateNSObject:oldValue newValue:split propertyName:@"split"];
}

-(void)setBackgroundColor:(HIColor *)backgroundColor {
	HIColor *oldValue = _backgroundColor;
	_backgroundColor = backgroundColor;
	[self updateHIObject:oldValue newValue:backgroundColor propertyName:@"backgroundColor"];
}

-(void)setSnap:(NSNumber *)snap {
	NSNumber *oldValue = _snap;
	_snap = snap;
	[self updateNSObject:oldValue newValue:snap propertyName:@"snap"];
}

-(void)setShared:(NSNumber *)shared {
	NSNumber *oldValue = _shared;
	_shared = shared;
	[self updateNSObject:oldValue newValue:shared propertyName:@"shared"];
}

-(void)setFormatter:(HIFunction *)formatter {
	HIFunction *oldValue = _formatter;
	_formatter = formatter;
	[self updateHIObject:oldValue newValue:formatter propertyName:@"formatter"];
}

-(void)setNullFormat:(NSString *)nullFormat {
	NSString *oldValue = _nullFormat;
	_nullFormat = nullFormat;
	[self updateNSObject:oldValue newValue:nullFormat propertyName:@"nullFormat"];
}

-(void)setFormat:(NSString *)format {
	NSString *oldValue = _format;
	_format = format;
	[self updateNSObject:oldValue newValue:format propertyName:@"format"];
}

-(void)setPointFormat:(NSString *)pointFormat {
	NSString *oldValue = _pointFormat;
	_pointFormat = pointFormat;
	[self updateNSObject:oldValue newValue:pointFormat propertyName:@"pointFormat"];
}

-(void)setXDateFormat:(NSString *)xDateFormat {
	NSString *oldValue = _xDateFormat;
	_xDateFormat = xDateFormat;
	[self updateNSObject:oldValue newValue:xDateFormat propertyName:@"xDateFormat"];
}

-(void)setDateTimeLabelFormats:(HIDateTimeLabelFormats *)dateTimeLabelFormats {
	HIDateTimeLabelFormats *oldValue = _dateTimeLabelFormats;
	_dateTimeLabelFormats = dateTimeLabelFormats;
	[self updateHIObject:oldValue newValue:dateTimeLabelFormats propertyName:@"dateTimeLabelFormats"];
}

-(void)setPadding:(NSNumber *)padding {
	NSNumber *oldValue = _padding;
	_padding = padding;
	[self updateNSObject:oldValue newValue:padding propertyName:@"padding"];
}

-(void)setShadow:(HIShadowOptionsObject *)shadow {
	HIShadowOptionsObject *oldValue = _shadow;
	_shadow = shadow;
	[self updateHIObject:oldValue newValue:shadow propertyName:@"shadow"];
}

-(void)setDistance:(NSNumber *)distance {
	NSNumber *oldValue = _distance;
	_distance = distance;
	[self updateNSObject:oldValue newValue:distance propertyName:@"distance"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setShape:(NSString *)shape {
	NSString *oldValue = _shape;
	_shape = shape;
	[self updateNSObject:oldValue newValue:shape propertyName:@"shape"];
}

-(void)setPointFormatter:(HIFunction *)pointFormatter {
	HIFunction *oldValue = _pointFormatter;
	_pointFormatter = pointFormatter;
	[self updateHIObject:oldValue newValue:pointFormatter propertyName:@"pointFormatter"];
}

-(void)setClassName:(NSString *)className {
	NSString *oldValue = _className;
	_className = className;
	[self updateNSObject:oldValue newValue:className propertyName:@"className"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	NSNumber *oldValue = _borderWidth;
	_borderWidth = borderWidth;
	[self updateNSObject:oldValue newValue:borderWidth propertyName:@"borderWidth"];
}

-(void)setFollowPointer:(NSNumber *)followPointer {
	NSNumber *oldValue = _followPointer;
	_followPointer = followPointer;
	[self updateNSObject:oldValue newValue:followPointer propertyName:@"followPointer"];
}

-(void)setHideDelay:(NSNumber *)hideDelay {
	NSNumber *oldValue = _hideDelay;
	_hideDelay = hideDelay;
	[self updateNSObject:oldValue newValue:hideDelay propertyName:@"hideDelay"];
}

-(void)setValueDecimals:(NSNumber *)valueDecimals {
	NSNumber *oldValue = _valueDecimals;
	_valueDecimals = valueDecimals;
	[self updateNSObject:oldValue newValue:valueDecimals propertyName:@"valueDecimals"];
}

-(void)setLinkFormat:(NSString *)linkFormat {
	NSString *oldValue = _linkFormat;
	_linkFormat = linkFormat;
	[self updateNSObject:oldValue newValue:linkFormat propertyName:@"linkFormat"];
}

-(void)setNodeFormat:(NSString *)nodeFormat {
	NSString *oldValue = _nodeFormat;
	_nodeFormat = nodeFormat;
	[self updateNSObject:oldValue newValue:nodeFormat propertyName:@"nodeFormat"];
}

-(void)setNodeFormatter:(HIFunction *)nodeFormatter {
	HIFunction *oldValue = _nodeFormatter;
	_nodeFormatter = nodeFormatter;
	[self updateHIObject:oldValue newValue:nodeFormatter propertyName:@"nodeFormatter"];
}

-(void)defaultFormatter:(HITooltip *)tooltip {
    self.jsClassMethod = @{ @"class" : @"Tooltip", @"method" : @"defaultFormatter", @"id" : self.uuid, @"params" : @[[tooltip getParams]] };
}

-(void)destroy {
    self.jsClassMethod = @{ @"class" : @"Tooltip", @"method" : @"destroy", @"id" : self.uuid };
}

-(void)getLabel {
    self.jsClassMethod = @{ @"class" : @"Tooltip", @"method" : @"getLabel", @"id" : self.uuid };
}

-(void)hide {
    self.jsClassMethod = @{ @"class" : @"Tooltip", @"method" : @"hide0", @"id" : self.uuid };
}

-(void)hide:(NSNumber *)delay {
    self.jsClassMethod = @{ @"class" : @"Tooltip", @"method" : @"hide1", @"id" : self.uuid, @"params" : @[delay] };
}

-(void)refreshByPoint:(HIPoint *)point {
    NSDictionary *params = [point getParams];
    NSString *pointID = params[@"_wrapperID"];
    self.jsClassMethod = @{ @"class" : @"Tooltip", @"method" : @"refresh0", @"id" : self.uuid, @"pointID" : pointID };
}

-(void)refreshByPoints:(NSArray<HIPoint *> *)points {
    NSMutableArray *pointIDs = [[NSMutableArray alloc] init];
    for (HIPoint* point in points) {
        NSDictionary *params = [point getParams];
        NSString *pointID = params[@"_wrapperID"];
        [pointIDs addObject:[NSString stringWithFormat:@"%@%@%@", @"\"", pointID, @"\""]];
    }
    NSString *pointIDsString = [NSString stringWithFormat:@"%@%@%@", @"[", [pointIDs componentsJoinedByString:@", "], @"]"];
    self.jsClassMethod = @{ @"class" : @"Tooltip", @"method" : @"refresh1", @"id" : self.uuid, @"pointIDs" : pointIDsString };
}

-(void)update:(HITooltip *)options {
    NSMutableDictionary *params = [[options getParams] mutableCopy];
    [params removeObjectForKey:@"_wrapperID"];
    self.jsClassMethod = @{ @"class" : @"Tooltip", @"method" : @"update", @"id" : self.uuid, @"params" : @[params] };
}

@end