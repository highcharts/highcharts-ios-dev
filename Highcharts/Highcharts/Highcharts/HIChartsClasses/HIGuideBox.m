#import "HIChartsJSONSerializableSubclass.h"
#import "HIGuideBox.h"

@implementation HIGuideBox

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIGuideBox *copyGuideBox = [[HIGuideBox allocWithZone: zone] init];
	copyGuideBox.defaults = [self.defaults copyWithZone: zone];
	return copyGuideBox;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.defaults) {
		params[@"default"] = [self.defaults getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setDefaults:(HIDefault *)defaults {
	HIDefault *oldValue = _defaults;
	if(self.defaults) {
		[self removeObserver:self forKeyPath:@"defaults.isUpdated"];
	}
	_defaults = defaults;
	[self updateHIObject:oldValue newValue:defaults propertyName:@"defaults"];
}

@end