#import "HIChartsJSONSerializableSubclass.h"
#import "HITooltip.h"

@implementation HITooltip

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.split) {
		params[@"split"] = self.split;
	}
	if (self.footerFormat) {
		params[@"footerFormat"] = self.footerFormat;
	}
	if (self.valuePrefix) {
		params[@"valuePrefix"] = self.valuePrefix;
	}
	if (self.hideDelay) {
		params[@"hideDelay"] = self.hideDelay;
	}
	if (self.pointFormatter) {
		params[@"pointFormatter"] = [self.pointFormatter getFunction];
	}
	if (self.dateTimeLabelFormats) {
		params[@"dateTimeLabelFormats"] = [self.dateTimeLabelFormats getParams];
	}
	if (self.pointFormat) {
		params[@"pointFormat"] = self.pointFormat;
	}
	if (self.headerFormat) {
		params[@"headerFormat"] = self.headerFormat;
	}
	if (self.followTouchMove) {
		params[@"followTouchMove"] = self.followTouchMove;
	}
	if (self.valueDecimals) {
		params[@"valueDecimals"] = self.valueDecimals;
	}
	if (self.followPointer) {
		params[@"followPointer"] = self.followPointer;
	}
	if (self.valueSuffix) {
		params[@"valueSuffix"] = self.valueSuffix;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.xDateFormat) {
		params[@"xDateFormat"] = self.xDateFormat;
	}
	if (self.nodeFormat) {
		params[@"nodeFormat"] = self.nodeFormat;
	}
	if (self.nodeFormatter) {
		params[@"nodeFormatter"] = [self.nodeFormatter getFunction];
	}
	if (self.distance) {
		params[@"distance"] = self.distance;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.positioner) {
		params[@"positioner"] = [self.positioner getFunction];
	}
	if (self.formatter) {
		params[@"formatter"] = [self.formatter getFunction];
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.shared) {
		params[@"shared"] = self.shared;
	}
	if (self.animation) {
		params[@"animation"] = self.animation;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.snap) {
		params[@"snap"] = self.snap;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.crosshairs) {
		params[@"crosshairs"] = self.crosshairs;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setSplit:(NSNumber *)split {
	_split = split;
	[self updateNSObject:@"split"];
}

-(void)setFooterFormat:(NSString *)footerFormat {
	_footerFormat = footerFormat;
	[self updateNSObject:@"footerFormat"];
}

-(void)setValuePrefix:(NSString *)valuePrefix {
	_valuePrefix = valuePrefix;
	[self updateNSObject:@"valuePrefix"];
}

-(void)setHideDelay:(NSNumber *)hideDelay {
	_hideDelay = hideDelay;
	[self updateNSObject:@"hideDelay"];
}

-(void)setPointFormatter:(HIFunction *)pointFormatter {
	HIFunction *oldValue = _pointFormatter;
	if(self.pointFormatter) {
		[self removeObserver:self forKeyPath:@"pointFormatter.isUpdated"];
	}
	_pointFormatter = pointFormatter;
	[self updateHIObject:oldValue newValue:pointFormatter propertyName:@"pointFormatter"];
}

-(void)setDateTimeLabelFormats:(HIDateTimeLabelFormats *)dateTimeLabelFormats {
	HIDateTimeLabelFormats *oldValue = _dateTimeLabelFormats;
	if(self.dateTimeLabelFormats) {
		[self removeObserver:self forKeyPath:@"dateTimeLabelFormats.isUpdated"];
	}
	_dateTimeLabelFormats = dateTimeLabelFormats;
	[self updateHIObject:oldValue newValue:dateTimeLabelFormats propertyName:@"dateTimeLabelFormats"];
}

-(void)setPointFormat:(NSString *)pointFormat {
	_pointFormat = pointFormat;
	[self updateNSObject:@"pointFormat"];
}

-(void)setHeaderFormat:(NSString *)headerFormat {
	_headerFormat = headerFormat;
	[self updateNSObject:@"headerFormat"];
}

-(void)setFollowTouchMove:(NSNumber *)followTouchMove {
	_followTouchMove = followTouchMove;
	[self updateNSObject:@"followTouchMove"];
}

-(void)setValueDecimals:(NSNumber *)valueDecimals {
	_valueDecimals = valueDecimals;
	[self updateNSObject:@"valueDecimals"];
}

-(void)setFollowPointer:(NSNumber *)followPointer {
	_followPointer = followPointer;
	[self updateNSObject:@"followPointer"];
}

-(void)setValueSuffix:(NSString *)valueSuffix {
	_valueSuffix = valueSuffix;
	[self updateNSObject:@"valueSuffix"];
}

-(void)setPadding:(NSNumber *)padding {
	_padding = padding;
	[self updateNSObject:@"padding"];
}

-(void)setXDateFormat:(NSString *)xDateFormat {
	_xDateFormat = xDateFormat;
	[self updateNSObject:@"xDateFormat"];
}

-(void)setNodeFormat:(NSString *)nodeFormat {
	_nodeFormat = nodeFormat;
	[self updateNSObject:@"nodeFormat"];
}

-(void)setNodeFormatter:(HIFunction *)nodeFormatter {
	HIFunction *oldValue = _nodeFormatter;
	if(self.nodeFormatter) {
		[self removeObserver:self forKeyPath:@"nodeFormatter.isUpdated"];
	}
	_nodeFormatter = nodeFormatter;
	[self updateHIObject:oldValue newValue:nodeFormatter propertyName:@"nodeFormatter"];
}

-(void)setDistance:(NSNumber *)distance {
	_distance = distance;
	[self updateNSObject:@"distance"];
}

-(void)setUseHTML:(NSNumber *)useHTML {
	_useHTML = useHTML;
	[self updateNSObject:@"useHTML"];
}

-(void)setPositioner:(HIFunction *)positioner {
	HIFunction *oldValue = _positioner;
	if(self.positioner) {
		[self removeObserver:self forKeyPath:@"positioner.isUpdated"];
	}
	_positioner = positioner;
	[self updateHIObject:oldValue newValue:positioner propertyName:@"positioner"];
}

-(void)setFormatter:(HIFunction *)formatter {
	HIFunction *oldValue = _formatter;
	if(self.formatter) {
		[self removeObserver:self forKeyPath:@"formatter.isUpdated"];
	}
	_formatter = formatter;
	[self updateHIObject:oldValue newValue:formatter propertyName:@"formatter"];
}

-(void)setShape:(NSString *)shape {
	_shape = shape;
	[self updateNSObject:@"shape"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setShared:(NSNumber *)shared {
	_shared = shared;
	[self updateNSObject:@"shared"];
}

-(void)setAnimation:(NSNumber *)animation {
	_animation = animation;
	[self updateNSObject:@"animation"];
}

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	_borderRadius = borderRadius;
	[self updateNSObject:@"borderRadius"];
}

-(void)setBackgroundColor:(HIColor *)backgroundColor {
	HIColor *oldValue = _backgroundColor;
	if(self.backgroundColor) {
		[self removeObserver:self forKeyPath:@"backgroundColor.isUpdated"];
	}
	_backgroundColor = backgroundColor;
	[self updateHIObject:oldValue newValue:backgroundColor propertyName:@"backgroundColor"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setSnap:(NSNumber *)snap {
	_snap = snap;
	[self updateNSObject:@"snap"];
}

-(void)setShadow:(NSNumber *)shadow {
	_shadow = shadow;
	[self updateNSObject:@"shadow"];
}

-(void)setCrosshairs:(id)crosshairs {
	_crosshairs = crosshairs;
	[self updateNSObject:@"crosshairs"];
}

-(void)setStyle:(HIStyle *)style {
	HIStyle *oldValue = _style;
	if(self.style) {
		[self removeObserver:self forKeyPath:@"style.isUpdated"];
	}
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

@end