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
	if(self.hover) {
		[self removeObserver:self forKeyPath:@"hover.isUpdated"];
	}
	_hover = hover;
	[self updateHIObject:oldValue newValue:hover propertyName:@"hover"];
}

-(void)setSelect:(HISelect *)select {
	HISelect *oldValue = _select;
	if(self.select) {
		[self removeObserver:self forKeyPath:@"select.isUpdated"];
	}
	_select = select;
	[self updateHIObject:oldValue newValue:select propertyName:@"select"];
}

-(void)setNormal:(HINormal *)normal {
	HINormal *oldValue = _normal;
	if(self.normal) {
		[self removeObserver:self forKeyPath:@"normal.isUpdated"];
	}
	_normal = normal;
	[self updateHIObject:oldValue newValue:normal propertyName:@"normal"];
}

@end