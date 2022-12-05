#import "HIChartsJSONSerializableSubclass.h"
#import "HIAttributes.h"

@implementation HIAttributes

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIAttributes *copyAttributes = [[HIAttributes allocWithZone: zone] init];
	copyAttributes.startOffset = [self.startOffset copyWithZone: zone];
	copyAttributes.refX = [self.refX copyWithZone: zone];
	copyAttributes.markerWidth = [self.markerWidth copyWithZone: zone];
	copyAttributes.refY = [self.refY copyWithZone: zone];
	copyAttributes.id = [self.id copyWithZone: zone];
	copyAttributes.markerHeight = [self.markerHeight copyWithZone: zone];
	copyAttributes.dy = [self.dy copyWithZone: zone];
	copyAttributes.zIndex = [self.zIndex copyWithZone: zone];
	return copyAttributes;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.startOffset) {
		params[@"startOffset"] = self.startOffset;
	}
	if (self.refX) {
		params[@"refX"] = self.refX;
	}
	if (self.markerWidth) {
		params[@"markerWidth"] = self.markerWidth;
	}
	if (self.refY) {
		params[@"refY"] = self.refY;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.markerHeight) {
		params[@"markerHeight"] = self.markerHeight;
	}
	if (self.dy) {
		params[@"dy"] = [self.dy getParams];
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	return params;
}

# pragma mark - Setters

-(void)setStartOffset:(NSNumber *)startOffset {
	NSNumber *oldValue = _startOffset;
	_startOffset = startOffset;
	[self updateNSObject:oldValue newValue:startOffset propertyName:@"startOffset"];
}

-(void)setRefX:(NSNumber *)refX {
	NSNumber *oldValue = _refX;
	_refX = refX;
	[self updateNSObject:oldValue newValue:refX propertyName:@"refX"];
}

-(void)setMarkerWidth:(NSNumber *)markerWidth {
	NSNumber *oldValue = _markerWidth;
	_markerWidth = markerWidth;
	[self updateNSObject:oldValue newValue:markerWidth propertyName:@"markerWidth"];
}

-(void)setRefY:(NSNumber *)refY {
	NSNumber *oldValue = _refY;
	_refY = refY;
	[self updateNSObject:oldValue newValue:refY propertyName:@"refY"];
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

-(void)setDy:(HISVGAttributes *)dy {
	HISVGAttributes *oldValue = _dy;
	_dy = dy;
	[self updateHIObject:oldValue newValue:dy propertyName:@"dy"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	NSNumber *oldValue = _zIndex;
	_zIndex = zIndex;
	[self updateNSObject:oldValue newValue:zIndex propertyName:@"zIndex"];
}

@end