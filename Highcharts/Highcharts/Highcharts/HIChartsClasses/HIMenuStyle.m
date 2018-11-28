#import "HIChartsJSONSerializableSubclass.h"
#import "HIMenuStyle.h"

@implementation HIMenuStyle

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIMenuStyle *copyMenuStyle = [[HIMenuStyle allocWithZone: zone] init];
	copyMenuStyle.padding = [self.padding copyWithZone: zone];
	copyMenuStyle.border = [self.border copyWithZone: zone];
	copyMenuStyle.background = [self.background copyWithZone: zone];
	return copyMenuStyle;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.border) {
		params[@"border"] = self.border;
	}
	if (self.background) {
		params[@"background"] = self.background;
	}
	return params;
}

# pragma mark - Setters

-(void)setPadding:(NSString *)padding {
	NSString *oldValue = _padding;
	_padding = padding;
	[self updateNSObject:oldValue newValue:padding propertyName:@"padding"];
}

-(void)setBorder:(NSString *)border {
	NSString *oldValue = _border;
	_border = border;
	[self updateNSObject:oldValue newValue:border propertyName:@"border"];
}

-(void)setBackground:(NSString *)background {
	NSString *oldValue = _background;
	_background = background;
	[self updateNSObject:oldValue newValue:background propertyName:@"background"];
}

@end