#import "HIChartsJSONSerializableSubclass.h"
#import "HIPointStatesOptionsObject.h"

@implementation HIPointStatesOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPointStatesOptionsObject *copyPointStatesOptionsObject = [[HIPointStatesOptionsObject allocWithZone: zone] init];
	copyPointStatesOptionsObject.hover = [self.hover copyWithZone: zone];
	copyPointStatesOptionsObject.inactive = [self.inactive copyWithZone: zone];
	copyPointStatesOptionsObject.normal = [self.normal copyWithZone: zone];
	copyPointStatesOptionsObject.select = [self.select copyWithZone: zone];
	return copyPointStatesOptionsObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.hover) {
		params[@"hover"] = [self.hover getParams];
	}
	if (self.inactive) {
		params[@"inactive"] = [self.inactive getParams];
	}
	if (self.normal) {
		params[@"normal"] = [self.normal getParams];
	}
	if (self.select) {
		params[@"select"] = [self.select getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setHover:(HIPointStatesHoverOptionsObject *)hover {
	HIPointStatesHoverOptionsObject *oldValue = _hover;
	_hover = hover;
	[self updateHIObject:oldValue newValue:hover propertyName:@"hover"];
}

-(void)setInactive:(HIPointStatesInactiveOptionsObject *)inactive {
	HIPointStatesInactiveOptionsObject *oldValue = _inactive;
	_inactive = inactive;
	[self updateHIObject:oldValue newValue:inactive propertyName:@"inactive"];
}

-(void)setNormal:(HIPointStatesNormalOptionsObject *)normal {
	HIPointStatesNormalOptionsObject *oldValue = _normal;
	_normal = normal;
	[self updateHIObject:oldValue newValue:normal propertyName:@"normal"];
}

-(void)setSelect:(HIPointStatesSelectOptionsObject *)select {
	HIPointStatesSelectOptionsObject *oldValue = _select;
	_select = select;
	[self updateHIObject:oldValue newValue:select propertyName:@"select"];
}

@end