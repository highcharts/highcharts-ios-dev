#import "HIChartsJSONSerializableSubclass.h"
#import "HIButtonTheme.h"

@implementation HIButtonTheme

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIButtonTheme *copyButtonTheme = [[HIButtonTheme allocWithZone: zone] init];
	copyButtonTheme.style = [self.style copyWithZone: zone];
	copyButtonTheme.states = [self.states copyWithZone: zone];
	copyButtonTheme.padding = [self.padding copyWithZone: zone];
	copyButtonTheme.stroke = [self.stroke copyWithZone: zone];
	copyButtonTheme.r = [self.r copyWithZone: zone];
	copyButtonTheme.strokeWidth = [self.strokeWidth copyWithZone: zone];
	copyButtonTheme.fill = [self.fill copyWithZone: zone];
	return copyButtonTheme;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.states) {
		params[@"states"] = [self.states getParams];
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.stroke) {
		params[@"stroke"] = self.stroke;
	}
	if (self.r) {
		params[@"r"] = self.r;
	}
	if (self.strokeWidth) {
		params[@"strokeWidth"] = self.strokeWidth;
	}
	if (self.fill) {
		params[@"fill"] = self.fill;
	}
	return params;
}

# pragma mark - Setters

-(void)setStyle:(HIStyle *)style {
	HIStyle *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setStates:(HIStates *)states {
	HIStates *oldValue = _states;
	_states = states;
	[self updateHIObject:oldValue newValue:states propertyName:@"states"];
}

-(void)setPadding:(NSNumber *)padding {
	NSNumber *oldValue = _padding;
	_padding = padding;
	[self updateNSObject:oldValue newValue:padding propertyName:@"padding"];
}

-(void)setStroke:(NSString *)stroke {
	NSString *oldValue = _stroke;
	_stroke = stroke;
	[self updateNSObject:oldValue newValue:stroke propertyName:@"stroke"];
}

-(void)setR:(NSNumber *)r {
	NSNumber *oldValue = _r;
	_r = r;
	[self updateNSObject:oldValue newValue:r propertyName:@"r"];
}

-(void)setStrokeWidth:(NSNumber *)strokeWidth {
	NSNumber *oldValue = _strokeWidth;
	_strokeWidth = strokeWidth;
	[self updateNSObject:oldValue newValue:strokeWidth propertyName:@"strokeWidth"];
}

-(void)setFill:(NSString *)fill {
	NSString *oldValue = _fill;
	_fill = fill;
	[self updateNSObject:oldValue newValue:fill propertyName:@"fill"];
}

@end
