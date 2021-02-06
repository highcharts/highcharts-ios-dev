#import "HIChartsJSONSerializableSubclass.h"
#import "HIArrow.h"

@implementation HIArrow

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIArrow *copyArrow = [[HIArrow allocWithZone: zone] init];
	copyArrow.attributes = [self.attributes copyWithZone: zone];
	copyArrow.children = [self.children copyWithZone: zone];
	copyArrow.tagName = [self.tagName copyWithZone: zone];
	return copyArrow;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.attributes) {
		params[@"attributes"] = [self.attributes getParams];
	}
	if (self.children) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.children) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"children"] = array;
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

-(void)setChildren:(NSArray *)children {
	NSArray *oldValue = _children;
	_children = children;
	[self updateArrayObject:oldValue newValue:children propertyName:@"children"];
}

-(void)setTagName:(NSString *)tagName {
	NSString *oldValue = _tagName;
	_tagName = tagName;
	[self updateNSObject:oldValue newValue:tagName propertyName:@"tagName"];
}

@end