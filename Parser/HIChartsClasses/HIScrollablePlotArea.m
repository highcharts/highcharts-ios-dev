#import "HIChartsJSONSerializableSubclass.h"
#import "HIScrollablePlotArea.h"

@implementation HIScrollablePlotArea

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.minWidth) {
		params[@"minWidth"] = self.minWidth;
	}
	if (self.scrollPositionX) {
		params[@"scrollPositionX"] = self.scrollPositionX;
	}
	return params;
}

# pragma mark - Setters

-(void)setMinWidth:(NSNumber *)minWidth {
	_minWidth = minWidth;
	[self updateNSObject:@"minWidth"];
}

-(void)setScrollPositionX:(NSNumber *)scrollPositionX {
	_scrollPositionX = scrollPositionX;
	[self updateNSObject:@"scrollPositionX"];
}

@end