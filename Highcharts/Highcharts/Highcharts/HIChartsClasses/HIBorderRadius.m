#import "HIChartsJSONSerializableSubclass.h"
#import "HIBorderRadius.h"

@implementation HIBorderRadius

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIBorderRadius *copyBorderRadius = [[HIBorderRadius allocWithZone: zone] init];
	copyBorderRadius.where = [self.where copyWithZone: zone];
	return copyBorderRadius;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.where) {
		params[@"where"] = self.where;
	}
	return params;
}

# pragma mark - Setters

-(void)setWhere:(NSString *)where {
	NSString *oldValue = _where;
	_where = where;
	[self updateNSObject:oldValue newValue:where propertyName:@"where"];
}

@end