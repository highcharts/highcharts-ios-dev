#import "HIChartsJSONSerializableSubclass.h"
#import "HIScrollablePlotArea.h"

@implementation HIScrollablePlotArea

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIScrollablePlotArea *copyScrollablePlotArea = [[HIScrollablePlotArea allocWithZone: zone] init];
	copyScrollablePlotArea.minWidth = [self.minWidth copyWithZone: zone];
	copyScrollablePlotArea.scrollPositionX = [self.scrollPositionX copyWithZone: zone];
	return copyScrollablePlotArea;
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
