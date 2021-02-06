#import "HIChartsJSONSerializableSubclass.h"
#import "HIReverseArrow.h"

@implementation HIReverseArrow

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIReverseArrow *copyReverseArrow = [[HIReverseArrow allocWithZone: zone] init];
  copyReverseArrow.attributes = [self.attributes copyWithZone: zone];
  copyReverseArrow.tagName = [self.tagName copyWithZone: zone];
	return copyReverseArrow;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.attributes) {
		params[@"attributes"] = [self.attributes getParams];
	}
	if (self.tagName) {
		params[@"tagName"] = self.tagName;
	}
	return params;
}

# pragma mark - Setters

-(void)setAttributes:(HIAttributes *)attributes {
	HIAttributes *oldValue = _attributes;
	_attributes = attributes;
	[self updateHIObject:oldValue newValue:attributes propertyName:@"attributes"];
}

-(void)setTagName:(NSString *)tagName {
	NSString *oldValue = _tagName;
	_tagName = tagName;
	[self updateNSObject:oldValue newValue:tagName propertyName:@"tagName"];
}

@end
