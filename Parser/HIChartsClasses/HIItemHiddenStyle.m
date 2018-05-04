#import "HIChartsJSONSerializableSubclass.h"
#import "HIItemHiddenStyle.h"

@implementation HIItemHiddenStyle

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIItemHiddenStyle *copyItemHiddenStyle = [[HIItemHiddenStyle allocWithZone: zone] init];
	copyItemHiddenStyle.color = [self.color copyWithZone: zone];
	return copyItemHiddenStyle;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = self.color;
	}
	return params;
}

# pragma mark - Setters

-(void)setColor:(NSString *)color {
	_color = color;
	[self updateNSObject:@"color"];
}

@end