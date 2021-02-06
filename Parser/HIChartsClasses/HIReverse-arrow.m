#import "HIChartsJSONSerializableSubclass.h"
#import "HIReverse-arrow.h"

@implementation HIReverse-arrow

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIReverse-arrow *copyReverse-arrow = [[HIReverse-arrow allocWithZone: zone] init];
	copyReverse-arrow.attributes = [self.attributes copyWithZone: zone];
	copyReverse-arrow.tagName = [self.tagName copyWithZone: zone];
	return copyReverse-arrow;
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