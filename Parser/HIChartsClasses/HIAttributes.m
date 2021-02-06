#import "HIChartsJSONSerializableSubclass.h"
#import "HIAttributes.h"

@implementation HIAttributes

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIAttributes *copyAttributes = [[HIAttributes allocWithZone: zone] init];
	copyAttributes.refY = [self.refY copyWithZone: zone];
	copyAttributes.refX = [self.refX copyWithZone: zone];
	copyAttributes.id = [self.id copyWithZone: zone];
	copyAttributes.markerWidth = [self.markerWidth copyWithZone: zone];
	copyAttributes.display = [self.display copyWithZone: zone];
	copyAttributes.markerHeight = [self.markerHeight copyWithZone: zone];
	copyAttributes.zIndex = [self.zIndex copyWithZone: zone];
	return copyAttributes;
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
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.markerWidth) {
		params[@"markerWidth"] = self.markerWidth;
	}
	if (self.display) {
		params[@"display"] = self.display;
	}
	if (self.markerHeight) {
		params[@"markerHeight"] = self.markerHeight;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
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

-(void)setId:(NSString *)id {
	NSString *oldValue = _id;
	_id = id;
	[self updateNSObject:oldValue newValue:id propertyName:@"id"];
}

-(void)setMarkerWidth:(NSNumber *)markerWidth {
	NSNumber *oldValue = _markerWidth;
	_markerWidth = markerWidth;
	[self updateNSObject:oldValue newValue:markerWidth propertyName:@"markerWidth"];
}

-(void)setDisplay:(NSString *)display {
	NSString *oldValue = _display;
	_display = display;
	[self updateNSObject:oldValue newValue:display propertyName:@"display"];
}

-(void)setMarkerHeight:(NSNumber *)markerHeight {
	NSNumber *oldValue = _markerHeight;
	_markerHeight = markerHeight;
	[self updateNSObject:oldValue newValue:markerHeight propertyName:@"markerHeight"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	NSNumber *oldValue = _zIndex;
	_zIndex = zIndex;
	[self updateNSObject:oldValue newValue:zIndex propertyName:@"zIndex"];
}

@end