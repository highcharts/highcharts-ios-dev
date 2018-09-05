#import "HIChartsJSONSerializableSubclass.h"
#import "HIItemCheckboxStyle.h"

@implementation HIItemCheckboxStyle

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIItemCheckboxStyle *copyItemCheckboxStyle = [[HIItemCheckboxStyle allocWithZone: zone] init];
	copyItemCheckboxStyle.position = [self.position copyWithZone: zone];
	copyItemCheckboxStyle.width = [self.width copyWithZone: zone];
	copyItemCheckboxStyle.height = [self.height copyWithZone: zone];
	return copyItemCheckboxStyle;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.position) {
		params[@"position"] = self.position;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	return params;
}

# pragma mark - Setters

-(void)setPosition:(NSString *)position {
	_position = position;
	[self updateNSObject:@"position"];
}

-(void)setWidth:(NSString *)width {
	_width = width;
	[self updateNSObject:@"width"];
}

-(void)setHeight:(NSString *)height {
	_height = height;
	[self updateNSObject:@"height"];
}

@end