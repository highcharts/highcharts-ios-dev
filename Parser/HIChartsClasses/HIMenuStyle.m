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
	_padding = padding;
	[self updateNSObject:@"padding"];
}

-(void)setBorder:(NSString *)border {
	_border = border;
	[self updateNSObject:@"border"];
}

-(void)setBackground:(NSString *)background {
	_background = background;
	[self updateNSObject:@"background"];
}

@end