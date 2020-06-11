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
	copyScrollablePlotArea.opacity = [self.opacity copyWithZone: zone];
	copyScrollablePlotArea.minHeight = [self.minHeight copyWithZone: zone];
	copyScrollablePlotArea.scrollPositionY = [self.scrollPositionY copyWithZone: zone];
	copyScrollablePlotArea.scrollPositionX = [self.scrollPositionX copyWithZone: zone];
	return copyScrollablePlotArea;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.minWidth) {
		params[@"minWidth"] = self.minWidth;
	}
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	if (self.minHeight) {
		params[@"minHeight"] = self.minHeight;
	}
	if (self.scrollPositionY) {
		params[@"scrollPositionY"] = self.scrollPositionY;
	}
	if (self.scrollPositionX) {
		params[@"scrollPositionX"] = self.scrollPositionX;
	}
	return params;
}

# pragma mark - Setters

-(void)setMinWidth:(NSNumber *)minWidth {
	NSNumber *oldValue = _minWidth;
	_minWidth = minWidth;
	[self updateNSObject:oldValue newValue:minWidth propertyName:@"minWidth"];
}

-(void)setOpacity:(NSNumber *)opacity {
	NSNumber *oldValue = _opacity;
	_opacity = opacity;
	[self updateNSObject:oldValue newValue:opacity propertyName:@"opacity"];
}

-(void)setMinHeight:(NSNumber *)minHeight {
	NSNumber *oldValue = _minHeight;
	_minHeight = minHeight;
	[self updateNSObject:oldValue newValue:minHeight propertyName:@"minHeight"];
}

-(void)setScrollPositionY:(NSNumber *)scrollPositionY {
	NSNumber *oldValue = _scrollPositionY;
	_scrollPositionY = scrollPositionY;
	[self updateNSObject:oldValue newValue:scrollPositionY propertyName:@"scrollPositionY"];
}

-(void)setScrollPositionX:(NSNumber *)scrollPositionX {
	NSNumber *oldValue = _scrollPositionX;
	_scrollPositionX = scrollPositionX;
	[self updateNSObject:oldValue newValue:scrollPositionX propertyName:@"scrollPositionX"];
}

@end