#import "HIPartialFill.h"

@implementation HIPartialFill

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.fill) {
		params[@"fill"] = [self.fill getData];
	}
	return params;
}

# pragma mark - Setters

-(void)setFill:(HIColor *)fill {
	HIColor *oldValue = _fill;
	if(self.fill) {
		[self removeObserver:self forKeyPath:@"fill.isUpdated"];
	}
	_fill = fill;
	[self updateHIObject:oldValue newValue:fill propertyName:@"fill"];
}

@end