#import "HIChartsJSONSerializableSubclass.h"
#import "HIASTNode.h"

@implementation HIASTNode

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIASTNode *copyASTNode = [[HIASTNode allocWithZone: zone] init];
	copyASTNode.attributes = [self.attributes copyWithZone: zone];
	copyASTNode.children = [self.children copyWithZone: zone];
	copyASTNode.tagName = [self.tagName copyWithZone: zone];
	copyASTNode.textContent = [self.textContent copyWithZone: zone];
	return copyASTNode;
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
	if (self.textContent) {
		params[@"textContent"] = self.textContent;
	}
	return params;
}

# pragma mark - Setters

-(void)setAttributes:(HISVGAttributes *)attributes {
	HISVGAttributes *oldValue = _attributes;
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

-(void)setTextContent:(NSString *)textContent {
	NSString *oldValue = _textContent;
	_textContent = textContent;
	[self updateNSObject:oldValue newValue:textContent propertyName:@"textContent"];
}

@end