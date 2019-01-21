#import "HIChartsJSONSerializableSubclass.h"
#import "HILabel.h"

@implementation HILabel

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HILabel *copyLabel = [[HILabel allocWithZone: zone] init];
	copyLabel.style = [self.style copyWithZone: zone];
	copyLabel.verticalAlign = [self.verticalAlign copyWithZone: zone];
	copyLabel.text = [self.text copyWithZone: zone];
	copyLabel.align = [self.align copyWithZone: zone];
	copyLabel.textAlign = [self.textAlign copyWithZone: zone];
	copyLabel.y = [self.y copyWithZone: zone];
	copyLabel.x = [self.x copyWithZone: zone];
	copyLabel.rotation = [self.rotation copyWithZone: zone];
	copyLabel.useHTML = [self.useHTML copyWithZone: zone];
	copyLabel.minFontSize = [self.minFontSize copyWithZone: zone];
	copyLabel.maxFontSize = [self.maxFontSize copyWithZone: zone];
	copyLabel.enabled = [self.enabled copyWithZone: zone];
	copyLabel.connectorNeighbourDistance = [self.connectorNeighbourDistance copyWithZone: zone];
	copyLabel.onArea = [self.onArea copyWithZone: zone];
	copyLabel.boxesToAvoid = [self.boxesToAvoid copyWithZone: zone];
	copyLabel.connectorAllowed = [self.connectorAllowed copyWithZone: zone];
	return copyLabel;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.textAlign) {
		params[@"textAlign"] = self.textAlign;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.minFontSize) {
		params[@"minFontSize"] = self.minFontSize;
	}
	if (self.maxFontSize) {
		params[@"maxFontSize"] = self.maxFontSize;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.connectorNeighbourDistance) {
		params[@"connectorNeighbourDistance"] = self.connectorNeighbourDistance;
	}
	if (self.onArea) {
		params[@"onArea"] = self.onArea;
	}
	if (self.boxesToAvoid) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.boxesToAvoid) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"boxesToAvoid"] = array;
	}
	if (self.connectorAllowed) {
		params[@"connectorAllowed"] = self.connectorAllowed;
	}
	return params;
}

# pragma mark - Setters

-(void)setStyle:(HICSSObject *)style {
	HICSSObject *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setVerticalAlign:(NSString *)verticalAlign {
	NSString *oldValue = _verticalAlign;
	_verticalAlign = verticalAlign;
	[self updateNSObject:oldValue newValue:verticalAlign propertyName:@"verticalAlign"];
}

-(void)setText:(NSString *)text {
	NSString *oldValue = _text;
	_text = text;
	[self updateNSObject:oldValue newValue:text propertyName:@"text"];
}

-(void)setAlign:(NSString *)align {
	NSString *oldValue = _align;
	_align = align;
	[self updateNSObject:oldValue newValue:align propertyName:@"align"];
}

-(void)setTextAlign:(NSString *)textAlign {
	NSString *oldValue = _textAlign;
	_textAlign = textAlign;
	[self updateNSObject:oldValue newValue:textAlign propertyName:@"textAlign"];
}

-(void)setY:(NSNumber *)y {
	NSNumber *oldValue = _y;
	_y = y;
	[self updateNSObject:oldValue newValue:y propertyName:@"y"];
}

-(void)setX:(NSNumber *)x {
	NSNumber *oldValue = _x;
	_x = x;
	[self updateNSObject:oldValue newValue:x propertyName:@"x"];
}

-(void)setRotation:(NSNumber *)rotation {
	NSNumber *oldValue = _rotation;
	_rotation = rotation;
	[self updateNSObject:oldValue newValue:rotation propertyName:@"rotation"];
}

-(void)setUseHTML:(NSNumber *)useHTML {
	NSNumber *oldValue = _useHTML;
	_useHTML = useHTML;
	[self updateNSObject:oldValue newValue:useHTML propertyName:@"useHTML"];
}

-(void)setMinFontSize:(NSNumber *)minFontSize {
	NSNumber *oldValue = _minFontSize;
	_minFontSize = minFontSize;
	[self updateNSObject:oldValue newValue:minFontSize propertyName:@"minFontSize"];
}

-(void)setMaxFontSize:(NSNumber *)maxFontSize {
	NSNumber *oldValue = _maxFontSize;
	_maxFontSize = maxFontSize;
	[self updateNSObject:oldValue newValue:maxFontSize propertyName:@"maxFontSize"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setConnectorNeighbourDistance:(NSNumber *)connectorNeighbourDistance {
	NSNumber *oldValue = _connectorNeighbourDistance;
	_connectorNeighbourDistance = connectorNeighbourDistance;
	[self updateNSObject:oldValue newValue:connectorNeighbourDistance propertyName:@"connectorNeighbourDistance"];
}

-(void)setOnArea:(NSNumber *)onArea {
	NSNumber *oldValue = _onArea;
	_onArea = onArea;
	[self updateNSObject:oldValue newValue:onArea propertyName:@"onArea"];
}

-(void)setBoxesToAvoid:(NSArray<HILabelIntersectBoxObject *> *)boxesToAvoid {
	NSArray<HILabelIntersectBoxObject *> *oldValue = _boxesToAvoid;
	_boxesToAvoid = boxesToAvoid;
	[self updateArrayObject:oldValue newValue:boxesToAvoid propertyName:@"boxesToAvoid"];
}

-(void)setConnectorAllowed:(NSNumber *)connectorAllowed {
	NSNumber *oldValue = _connectorAllowed;
	_connectorAllowed = connectorAllowed;
	[self updateNSObject:oldValue newValue:connectorAllowed propertyName:@"connectorAllowed"];
}

@end