#import "HIChartsJSONSerializableSubclass.h"
#import "HIArrow.h"

@implementation HIArrow

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIArrow *copyArrow = [[HIArrow allocWithZone: zone] init];
	copyArrow.refY = [self.refY copyWithZone: zone];
	copyArrow.refX = [self.refX copyWithZone: zone];
	copyArrow.render = [self.render copyWithZone: zone];
	copyArrow.id = [self.id copyWithZone: zone];
	copyArrow.tagName = [self.tagName copyWithZone: zone];
	copyArrow.markerWidth = [self.markerWidth copyWithZone: zone];
	copyArrow.children = [self.children copyWithZone: zone];
	copyArrow.markerHeight = [self.markerHeight copyWithZone: zone];
	return copyArrow;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.refY) {
		params[@"refY"] = self.refY;
	}
	if (self.refX) {
		params[@"refX"] = self.refX;
	}
	if (self.render) {
		params[@"render"] = self.render;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.tagName) {
		params[@"tagName"] = self.tagName;
	}
	if (self.markerWidth) {
		params[@"markerWidth"] = self.markerWidth;
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
	if (self.markerHeight) {
		params[@"markerHeight"] = self.markerHeight;
	}
	return params;
}

# pragma mark - Setters

-(void)setRefY:(NSNumber *)refY {
	NSNumber *oldValue = _refY;
	_refY = refY;
	[self updateNSObject:oldValue newValue:refY propertyName:@"refY"];
}

-(void)setRefX:(NSNumber *)refX {
	NSNumber *oldValue = _refX;
	_refX = refX;
	[self updateNSObject:oldValue newValue:refX propertyName:@"refX"];
}

-(void)setRender:(NSNumber *)render {
	NSNumber *oldValue = _render;
	_render = render;
	[self updateNSObject:oldValue newValue:render propertyName:@"render"];
}

-(void)setId:(NSString *)id {
	NSString *oldValue = _id;
	_id = id;
	[self updateNSObject:oldValue newValue:id propertyName:@"id"];
}

-(void)setTagName:(NSString *)tagName {
	NSString *oldValue = _tagName;
	_tagName = tagName;
	[self updateNSObject:oldValue newValue:tagName propertyName:@"tagName"];
}

-(void)setMarkerWidth:(NSNumber *)markerWidth {
	NSNumber *oldValue = _markerWidth;
	_markerWidth = markerWidth;
	[self updateNSObject:oldValue newValue:markerWidth propertyName:@"markerWidth"];
}

-(void)setChildren:(NSArray *)children {
	NSArray *oldValue = _children;
	_children = children;
	[self updateArrayObject:oldValue newValue:children propertyName:@"children"];
}

-(void)setMarkerHeight:(NSNumber *)markerHeight {
	NSNumber *oldValue = _markerHeight;
	_markerHeight = markerHeight;
	[self updateNSObject:oldValue newValue:markerHeight propertyName:@"markerHeight"];
}

@end