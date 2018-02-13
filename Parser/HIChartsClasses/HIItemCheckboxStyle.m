#import "HIChartsJSONSerializableSubclass.h"
#import "HIItemCheckboxStyle.h"

@implementation HIItemCheckboxStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.position) {
		params[@"position"] = self.position;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	return params;
}

# pragma mark - Setters

-(void)setPosition:(NSString *)position {
	_position = position;
	[self updateNSObject:@"position"];
}

-(void)setHeight:(NSString *)height {
	_height = height;
	[self updateNSObject:@"height"];
}

-(void)setWidth:(NSString *)width {
	_width = width;
	[self updateNSObject:@"width"];
}

@end