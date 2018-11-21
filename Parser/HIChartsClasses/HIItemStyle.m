#import "HIChartsJSONSerializableSubclass.h"
#import "HIItemStyle.h"

@implementation HIItemStyle

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIItemStyle *copyItemStyle = [[HIItemStyle allocWithZone: zone] init];
	copyItemStyle.cursor = [self.cursor copyWithZone: zone];
	return copyItemStyle;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	return params;
}

# pragma mark - Setters

-(void)setCursor:(NSString *)cursor {
	_cursor = cursor;
	[self updateNSObject:@"cursor"];
}

@end