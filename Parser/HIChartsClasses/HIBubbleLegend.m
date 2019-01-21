#import "HIChartsJSONSerializableSubclass.h"
#import "HIBubbleLegend.h"

@implementation HIBubbleLegend

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIBubbleLegend *copyBubbleLegend = [[HIBubbleLegend allocWithZone: zone] init];
	copyBubbleLegend.borderColor = [self.borderColor copyWithZone: zone];
	copyBubbleLegend.connectorColor = [self.connectorColor copyWithZone: zone];
	copyBubbleLegend.zIndex = [self.zIndex copyWithZone: zone];
	copyBubbleLegend.sizeBy = [self.sizeBy copyWithZone: zone];
	copyBubbleLegend.legendIndex = [self.legendIndex copyWithZone: zone];
	copyBubbleLegend.connectorWidth = [self.connectorWidth copyWithZone: zone];
	copyBubbleLegend.color = [self.color copyWithZone: zone];
	copyBubbleLegend.labels = [self.labels copyWithZone: zone];
	copyBubbleLegend.enabled = [self.enabled copyWithZone: zone];
	copyBubbleLegend.sizeByAbsoluteValue = [self.sizeByAbsoluteValue copyWithZone: zone];
	copyBubbleLegend.className = [self.className copyWithZone: zone];
	copyBubbleLegend.ranges = [self.ranges copyWithZone: zone];
	copyBubbleLegend.maxSize = [self.maxSize copyWithZone: zone];
	copyBubbleLegend.minSize = [self.minSize copyWithZone: zone];
	copyBubbleLegend.borderWidth = [self.borderWidth copyWithZone: zone];
	copyBubbleLegend.connectorClassName = [self.connectorClassName copyWithZone: zone];
	copyBubbleLegend.zThreshold = [self.zThreshold copyWithZone: zone];
	copyBubbleLegend.connectorDistance = [self.connectorDistance copyWithZone: zone];
	return copyBubbleLegend;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.connectorColor) {
		params[@"connectorColor"] = [self.connectorColor getData];
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.sizeBy) {
		params[@"sizeBy"] = self.sizeBy;
	}
	if (self.legendIndex) {
		params[@"legendIndex"] = self.legendIndex;
	}
	if (self.connectorWidth) {
		params[@"connectorWidth"] = self.connectorWidth;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.labels) {
		params[@"labels"] = [self.labels getParams];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.sizeByAbsoluteValue) {
		params[@"sizeByAbsoluteValue"] = self.sizeByAbsoluteValue;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.ranges) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.ranges) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"ranges"] = array;
	}
	if (self.maxSize) {
		params[@"maxSize"] = self.maxSize;
	}
	if (self.minSize) {
		params[@"minSize"] = self.minSize;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.connectorClassName) {
		params[@"connectorClassName"] = self.connectorClassName;
	}
	if (self.zThreshold) {
		params[@"zThreshold"] = self.zThreshold;
	}
	if (self.connectorDistance) {
		params[@"connectorDistance"] = self.connectorDistance;
	}
	return params;
}

# pragma mark - Setters

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setConnectorColor:(HIColor *)connectorColor {
	HIColor *oldValue = _connectorColor;
	_connectorColor = connectorColor;
	[self updateHIObject:oldValue newValue:connectorColor propertyName:@"connectorColor"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	NSNumber *oldValue = _zIndex;
	_zIndex = zIndex;
	[self updateNSObject:oldValue newValue:zIndex propertyName:@"zIndex"];
}

-(void)setSizeBy:(NSString *)sizeBy {
	NSString *oldValue = _sizeBy;
	_sizeBy = sizeBy;
	[self updateNSObject:oldValue newValue:sizeBy propertyName:@"sizeBy"];
}

-(void)setLegendIndex:(NSNumber *)legendIndex {
	NSNumber *oldValue = _legendIndex;
	_legendIndex = legendIndex;
	[self updateNSObject:oldValue newValue:legendIndex propertyName:@"legendIndex"];
}

-(void)setConnectorWidth:(NSNumber *)connectorWidth {
	NSNumber *oldValue = _connectorWidth;
	_connectorWidth = connectorWidth;
	[self updateNSObject:oldValue newValue:connectorWidth propertyName:@"connectorWidth"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setLabels:(HILabels *)labels {
	HILabels *oldValue = _labels;
	_labels = labels;
	[self updateHIObject:oldValue newValue:labels propertyName:@"labels"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setSizeByAbsoluteValue:(NSNumber *)sizeByAbsoluteValue {
	NSNumber *oldValue = _sizeByAbsoluteValue;
	_sizeByAbsoluteValue = sizeByAbsoluteValue;
	[self updateNSObject:oldValue newValue:sizeByAbsoluteValue propertyName:@"sizeByAbsoluteValue"];
}

-(void)setClassName:(NSString *)className {
	NSString *oldValue = _className;
	_className = className;
	[self updateNSObject:oldValue newValue:className propertyName:@"className"];
}

-(void)setRanges:(NSArray <HIRanges *> *)ranges {
	NSArray <HIRanges *> *oldValue = _ranges;
	_ranges = ranges;
	[self updateArrayObject:oldValue newValue:ranges propertyName:@"ranges"];
}

-(void)setMaxSize:(NSNumber *)maxSize {
	NSNumber *oldValue = _maxSize;
	_maxSize = maxSize;
	[self updateNSObject:oldValue newValue:maxSize propertyName:@"maxSize"];
}

-(void)setMinSize:(NSNumber *)minSize {
	NSNumber *oldValue = _minSize;
	_minSize = minSize;
	[self updateNSObject:oldValue newValue:minSize propertyName:@"minSize"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	NSNumber *oldValue = _borderWidth;
	_borderWidth = borderWidth;
	[self updateNSObject:oldValue newValue:borderWidth propertyName:@"borderWidth"];
}

-(void)setConnectorClassName:(NSString *)connectorClassName {
	NSString *oldValue = _connectorClassName;
	_connectorClassName = connectorClassName;
	[self updateNSObject:oldValue newValue:connectorClassName propertyName:@"connectorClassName"];
}

-(void)setZThreshold:(NSNumber *)zThreshold {
	NSNumber *oldValue = _zThreshold;
	_zThreshold = zThreshold;
	[self updateNSObject:oldValue newValue:zThreshold propertyName:@"zThreshold"];
}

-(void)setConnectorDistance:(NSNumber *)connectorDistance {
	NSNumber *oldValue = _connectorDistance;
	_connectorDistance = connectorDistance;
	[self updateNSObject:oldValue newValue:connectorDistance propertyName:@"connectorDistance"];
}

@end