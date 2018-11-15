#import "HIChartsJSONSerializableSubclass.h"
#import "HIItemCheckboxStyle.h"

@implementation HIItemCheckboxStyle

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIItemCheckboxStyle *copyItemCheckboxStyle = [[HIItemCheckboxStyle allocWithZone: zone] init];
	copyItemCheckboxStyle.height = [self.height copyWithZone: zone];
	return copyItemCheckboxStyle;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.height) {
		params[@"height"] = self.height;
	}
	return params;
}

# pragma mark - Setters

-(void)setHeight:(NSString *)height {
	_height = height;
	[self updateNSObject:@"height"];
}

@end