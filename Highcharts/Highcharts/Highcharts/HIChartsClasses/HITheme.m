#import "HIChartsJSONSerializableSubclass.h"
#import "HITheme.h"

@implementation HITheme

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HITheme *copyTheme = [[HITheme allocWithZone: zone] init];
	copyTheme.zIndex = [self.zIndex copyWithZone: zone];
	copyTheme.stroke = [self.stroke copyWithZone: zone];
	copyTheme.fill = [self.fill copyWithZone: zone];
	return copyTheme;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.stroke) {
		params[@"stroke"] = [self.stroke getData];
	}
	if (self.fill) {
		params[@"fill"] = [self.fill getData];
	}
	return params;
}

# pragma mark - Setters

-(void)setZIndex:(NSNumber *)zIndex {
	NSNumber *oldValue = _zIndex;
	_zIndex = zIndex;
	[self updateNSObject:oldValue newValue:zIndex propertyName:@"zIndex"];
}

-(void)setStroke:(HIColor *)stroke {
	HIColor *oldValue = _stroke;
	_stroke = stroke;
	[self updateHIObject:oldValue newValue:stroke propertyName:@"stroke"];
}

-(void)setFill:(HIColor *)fill {
	HIColor *oldValue = _fill;
	_fill = fill;
	[self updateHIObject:oldValue newValue:fill propertyName:@"fill"];
}

@end