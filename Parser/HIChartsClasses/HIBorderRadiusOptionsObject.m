#import "HIChartsJSONSerializableSubclass.h"
#import "HIBorderRadiusOptionsObject.h"

@implementation HIBorderRadiusOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIBorderRadiusOptionsObject *copyBorderRadiusOptionsObject = [[HIBorderRadiusOptionsObject allocWithZone: zone] init];
	copyBorderRadiusOptionsObject.radius = [self.radius copyWithZone: zone];
	copyBorderRadiusOptionsObject.scope = [self.scope copyWithZone: zone];
	copyBorderRadiusOptionsObject.where = [self.where copyWithZone: zone];
	return copyBorderRadiusOptionsObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.scope) {
		params[@"scope"] = self.scope;
	}
	if (self.where) {
		params[@"where"] = self.where;
	}
	return params;
}

# pragma mark - Setters

-(void)setRadius:(id)radius {
	id oldValue = _radius;
	_radius = radius;
	[self updateNSObject:oldValue newValue:radius propertyName:@"radius"];
}

-(void)setScope:(NSString *)scope {
	NSString *oldValue = _scope;
	_scope = scope;
	[self updateNSObject:oldValue newValue:scope propertyName:@"scope"];
}

-(void)setWhere:(NSString *)where {
	NSString *oldValue = _where;
	_where = where;
	[self updateNSObject:oldValue newValue:where propertyName:@"where"];
}

@end