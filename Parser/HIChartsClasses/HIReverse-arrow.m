#import "HIChartsJSONSerializableSubclass.h"
#import "HIReverse-arrow.h"

@implementation HIReverse-arrow

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIReverse-arrow *copyReverse-arrow = [[HIReverse-arrow allocWithZone: zone] init];
	copyReverse-arrow.refY = [self.refY copyWithZone: zone];
	copyReverse-arrow.refX = [self.refX copyWithZone: zone];
	copyReverse-arrow.render = [self.render copyWithZone: zone];
	copyReverse-arrow.tagName = [self.tagName copyWithZone: zone];
	copyReverse-arrow.markerWidth = [self.markerWidth copyWithZone: zone];
	copyReverse-arrow.id = [self.id copyWithZone: zone];
	copyReverse-arrow.markerHeight = [self.markerHeight copyWithZone: zone];
	return copyReverse-arrow;
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
	if (self.tagName) {
		params[@"tagName"] = self.tagName;
	}
	if (self.markerWidth) {
		params[@"markerWidth"] = self.markerWidth;
	}
	if (self.id) {
		params[@"id"] = self.id;
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

-(void)setId:(NSString *)id {
	NSString *oldValue = _id;
	_id = id;
	[self updateNSObject:oldValue newValue:id propertyName:@"id"];
}

-(void)setMarkerHeight:(NSNumber *)markerHeight {
	NSNumber *oldValue = _markerHeight;
	_markerHeight = markerHeight;
	[self updateNSObject:oldValue newValue:markerHeight propertyName:@"markerHeight"];
}

@end