#import "HIChartsJSONSerializableSubclass.h"
#import "HIStates.h"

@implementation HIStates

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIStates *copyStates = [[HIStates allocWithZone: zone] init];
	copyStates.hover = [self.hover copyWithZone: zone];
	copyStates.inactive = [self.inactive copyWithZone: zone];
	copyStates.select = [self.select copyWithZone: zone];
	copyStates.normal = [self.normal copyWithZone: zone];
	return copyStates;
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
	if (self.select) {
		params[@"select"] = [self.select getParams];
	}
	if (self.normal) {
		params[@"normal"] = [self.normal getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setHover:(HIHover *)hover {
	HIHover *oldValue = _hover;
	_hover = hover;
	[self updateHIObject:oldValue newValue:hover propertyName:@"hover"];
}

-(void)setInactive:(HIInactive *)inactive {
	HIInactive *oldValue = _inactive;
	_inactive = inactive;
	[self updateHIObject:oldValue newValue:inactive propertyName:@"inactive"];
}

-(void)setSelect:(HISelect *)select {
	HISelect *oldValue = _select;
	_select = select;
	[self updateHIObject:oldValue newValue:select propertyName:@"select"];
}

-(void)setNormal:(HINormal *)normal {
	HINormal *oldValue = _normal;
	_normal = normal;
	[self updateHIObject:oldValue newValue:normal propertyName:@"normal"];
}

@end