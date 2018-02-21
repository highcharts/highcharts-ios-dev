#import "HIChartsJSONSerializableSubclass.h"
#import "HILabelStyle.h"

@implementation HILabelStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.top) {
		params[@"top"] = self.top;
	}
	if (self.fontWeight) {
		params[@"fontWeight"] = self.fontWeight;
	}
	if (self.position) {
		params[@"position"] = self.position;
	}
	return params;
}

# pragma mark - Setters

-(void)setTop:(NSString *)top {
	_top = top;
	[self updateNSObject:@"top"];
}

-(void)setFontWeight:(NSString *)fontWeight {
	_fontWeight = fontWeight;
	[self updateNSObject:@"fontWeight"];
}

-(void)setPosition:(NSString *)position {
	_position = position;
	[self updateNSObject:@"position"];
}

@end