#import "HIChartsJSONSerializableSubclass.h"
#import "HIDefs.h"

@implementation HIDefs

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDefs *copyDefs = [[HIDefs allocWithZone: zone] init];
	copyDefs.reverseArrow = [self.reverseArrow copyWithZone: zone];
	copyDefs.arrow = [self.arrow copyWithZone: zone];
	return copyDefs;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.reverseArrow) {
		params[@"reverse-arrow"] = [self.reverseArrow getParams];
	}
	if (self.arrow) {
		params[@"arrow"] = [self.arrow getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setReverseAarrow:(HIASTNode *)reverseArrow {
	HIASTNode *oldValue = _reverseArrow;
	_reverseArrow = reverseArrow;
	[self updateHIObject:oldValue newValue:reverseArrow propertyName:@"reverseArrow"];
}

-(void)setArrow:(HIASTNode *)arrow {
	HIASTNode *oldValue = _arrow;
	_arrow = arrow;
	[self updateHIObject:oldValue newValue:arrow propertyName:@"arrow"];
}

@end
