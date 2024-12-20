#import "HIChartsJSONSerializableSubclass.h"
#import "HITheme.h"

@implementation HITheme

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HITheme *copyTheme = [[HITheme allocWithZone: zone] init];
	copyTheme.padding = [self.padding copyWithZone: zone];
	copyTheme.stroke = [self.stroke copyWithZone: zone];
	copyTheme.strokeLinecap = [self.strokeLinecap copyWithZone: zone];
	copyTheme.fill = [self.fill copyWithZone: zone];
	copyTheme.zIndex = [self.zIndex copyWithZone: zone];
	return copyTheme;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.stroke) {
		params[@"stroke"] = [self.stroke getData];
	}
	if (self.strokeLinecap) {
		params[@"strokeLinecap"] = self.strokeLinecap;
	}
	if (self.fill) {
		params[@"fill"] = [self.fill getData];
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	return params;
}

# pragma mark - Setters

-(void)setPadding:(NSNumber *)padding {
	NSNumber *oldValue = _padding;
	_padding = padding;
	[self updateNSObject:oldValue newValue:padding propertyName:@"padding"];
}

-(void)setStroke:(HIColor *)stroke {
	HIColor *oldValue = _stroke;
	_stroke = stroke;
	[self updateHIObject:oldValue newValue:stroke propertyName:@"stroke"];
}

-(void)setStrokeLinecap:(NSString *)strokeLinecap {
	NSString *oldValue = _strokeLinecap;
	_strokeLinecap = strokeLinecap;
	[self updateNSObject:oldValue newValue:strokeLinecap propertyName:@"strokeLinecap"];
}

-(void)setFill:(HIColor *)fill {
	HIColor *oldValue = _fill;
	_fill = fill;
	[self updateHIObject:oldValue newValue:fill propertyName:@"fill"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	NSNumber *oldValue = _zIndex;
	_zIndex = zIndex;
	[self updateNSObject:oldValue newValue:zIndex propertyName:@"zIndex"];
}

@end
