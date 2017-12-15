#import "HIStates.h"

@implementation HIStates

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.select) {
		params[@"select"] = [self.select getParams];
	}
	if (self.hover) {
		params[@"hover"] = [self.hover getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setSelect:(HISelect *)select {
	HISelect *oldValue = _select;
	if(self.select) {
		[self removeObserver:self forKeyPath:@"select.isUpdated"];
	}
	_select = select;
	[self updateHIObject:oldValue newValue:select propertyName:@"select"];
}

-(void)setHover:(HIHover *)hover {
	HIHover *oldValue = _hover;
	if(self.hover) {
		[self removeObserver:self forKeyPath:@"hover.isUpdated"];
	}
	_hover = hover;
	[self updateHIObject:oldValue newValue:hover propertyName:@"hover"];
}

@end