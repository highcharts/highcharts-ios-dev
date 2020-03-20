#import "HIChartsJSONSerializableSubclass.h"
#import "HIReverseArrow.h"

@implementation HIReverseArrow

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIReverseArrow *copyReverseArrow = [[HIReverseArrow allocWithZone: zone] init];
	copyReverseArrow.refY = [self.refY copyWithZone: zone];
	copyReverseArrow.refX = [self.refX copyWithZone: zone];
	copyReverseArrow.render = [self.render copyWithZone: zone];
	copyReverseArrow.tagName = [self.tagName copyWithZone: zone];
	copyReverseArrow.markerWidth = [self.markerWidth copyWithZone: zone];
	copyReverseArrow.id = [self.id copyWithZone: zone];
	copyReverseArrow.markerHeight = [self.markerHeight copyWithZone: zone];
	return copyReverseArrow;
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
