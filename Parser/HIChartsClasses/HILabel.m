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

-(void)setStyle:(HIStyle *)style {
	HIStyle *oldValue = _style;
	if(self.style) {
		[self removeObserver:self forKeyPath:@"style.isUpdated"];
	}
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setVerticalAlign:(NSString *)verticalAlign {
	_verticalAlign = verticalAlign;
	[self updateNSObject:@"verticalAlign"];
}

-(void)setText:(NSString *)text {
	_text = text;
	[self updateNSObject:@"text"];
}

-(void)setAlign:(NSString *)align {
	_align = align;
	[self updateNSObject:@"align"];
}

-(void)setTextAlign:(NSString *)textAlign {
	_textAlign = textAlign;
	[self updateNSObject:@"textAlign"];
}

-(void)setY:(NSNumber *)y {
	_y = y;
	[self updateNSObject:@"y"];
}

-(void)setX:(NSNumber *)x {
	_x = x;
	[self updateNSObject:@"x"];
}

-(void)setRotation:(NSNumber *)rotation {
	_rotation = rotation;
	[self updateNSObject:@"rotation"];
}

-(void)setUseHTML:(NSNumber *)useHTML {
	_useHTML = useHTML;
	[self updateNSObject:@"useHTML"];
}

-(void)setMinFontSize:(NSNumber *)minFontSize {
	_minFontSize = minFontSize;
	[self updateNSObject:@"minFontSize"];
}

-(void)setMaxFontSize:(NSNumber *)maxFontSize {
	_maxFontSize = maxFontSize;
	[self updateNSObject:@"maxFontSize"];
}

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setConnectorNeighbourDistance:(NSNumber *)connectorNeighbourDistance {
	_connectorNeighbourDistance = connectorNeighbourDistance;
	[self updateNSObject:@"connectorNeighbourDistance"];
}

-(void)setOnArea:(NSNumber *)onArea {
	_onArea = onArea;
	[self updateNSObject:@"onArea"];
}

-(void)setBoxesToAvoid:(NSArray *)boxesToAvoid {
	NSArray *oldValue = _boxesToAvoid;
	_boxesToAvoid = boxesToAvoid;
	[self updateArrayObject:oldValue newValue:boxesToAvoid propertyName:@"boxesToAvoid"];
}

-(void)setConnectorAllowed:(NSNumber *)connectorAllowed {
	_connectorAllowed = connectorAllowed;
	[self updateNSObject:@"connectorAllowed"];
}

@end