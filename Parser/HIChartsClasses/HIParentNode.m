#import "HIChartsJSONSerializableSubclass.h"
#import "HIParentNode.h"

@implementation HIParentNode

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIParentNode *copyParentNode = [[HIParentNode allocWithZone: zone] init];
	copyParentNode.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	return copyParentNode;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.allowPointSelect) {
		params[@"allowPointSelect"] = self.allowPointSelect;
	}
	return params;
}

# pragma mark - Setters

-(void)setAllowPointSelect:(NSNumber *)allowPointSelect {
	NSNumber *oldValue = _allowPointSelect;
	_allowPointSelect = allowPointSelect;
	[self updateNSObject:oldValue newValue:allowPointSelect propertyName:@"allowPointSelect"];
}

@end