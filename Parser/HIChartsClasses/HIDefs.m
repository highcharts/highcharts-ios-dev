#import "HIDefs.h"

@implementation HIDefs

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.markers) {
		params[@"markers"] = self.markers;
	}
	return params;
}

# pragma mark - Setters

-(void)setMarkers:(id)markers {
	_markers = markers;
	[self updateNSObject:@"markers"];
}

@end