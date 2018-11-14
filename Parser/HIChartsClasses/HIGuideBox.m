#import "HIChartsJSONSerializableSubclass.h"
#import "HIGuideBox.h"

@implementation HIGuideBox

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIGuideBox *copyGuideBox = [[HIGuideBox allocWithZone: zone] init];
	copyGuideBox.default = [self.default copyWithZone: zone];
	return copyGuideBox;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.default) {
		params[@"default"] = [self.default getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setDefault:(HIDefault *)default {
	HIDefault *oldValue = _default;
	if(self.default) {
		[self removeObserver:self forKeyPath:@"default.isUpdated"];
	}
	_default = default;
	[self updateHIObject:oldValue newValue:default propertyName:@"default"];
}

@end