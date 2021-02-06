#import "HIChartsJSONSerializableSubclass.h"
#import "HIDefs.h"

@implementation HIDefs

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDefs *copyDefs = [[HIDefs allocWithZone: zone] init];
	copyDefs.reverse-arrow = [self.reverse-arrow copyWithZone: zone];
	copyDefs.arrow = [self.arrow copyWithZone: zone];
	return copyDefs;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.reverse-arrow) {
		params[@"reverse-arrow"] = [self.reverse-arrow getParams];
	}
	if (self.arrow) {
		params[@"arrow"] = [self.arrow getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setReverse-arrow:(HIASTNode *)reverse-arrow {
	HIASTNode *oldValue = _reverse-arrow;
	_reverse-arrow = reverse-arrow;
	[self updateHIObject:oldValue newValue:reverse-arrow propertyName:@"reverse-arrow"];
}

-(void)setArrow:(HIASTNode *)arrow {
	HIASTNode *oldValue = _arrow;
	_arrow = arrow;
	[self updateHIObject:oldValue newValue:arrow propertyName:@"arrow"];
}

@end