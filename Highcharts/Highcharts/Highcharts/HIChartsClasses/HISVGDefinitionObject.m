#import "HIChartsJSONSerializableSubclass.h"
#import "HISVGDefinitionObject.h"

@implementation HISVGDefinitionObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISVGDefinitionObject *copySVGDefinitionObject = [[HISVGDefinitionObject allocWithZone: zone] init];
	copySVGDefinitionObject.children = [self.children copyWithZone: zone];
	copySVGDefinitionObject.tagName = [self.tagName copyWithZone: zone];
	copySVGDefinitionObject.textContent = [self.textContent copyWithZone: zone];
	return copySVGDefinitionObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
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