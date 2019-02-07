#import "HIChartsJSONSerializableSubclass.h"
#import "HITraverseUpButton.h"

@implementation HITraverseUpButton

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HITraverseUpButton *copyTraverseUpButton = [[HITraverseUpButton allocWithZone: zone] init];
	copyTraverseUpButton.position = [self.position copyWithZone: zone];
	return copyTraverseUpButton;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.position) {
		params[@"position"] = [self.position getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setPosition:(HIPosition *)position {
	HIPosition *oldValue = _position;
	_position = position;
	[self updateHIObject:oldValue newValue:position propertyName:@"position"];
}

@end
