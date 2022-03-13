#import "HIChartsJSONSerializableSubclass.h"
#import "HIDragDrop.h"

@implementation HIDragDrop

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDragDrop *copyDragDrop = [[HIDragDrop allocWithZone: zone] init];
	copyDragDrop.draggableHigh = [self.draggableHigh copyWithZone: zone];
	copyDragDrop.draggableLow = [self.draggableLow copyWithZone: zone];
	copyDragDrop.draggableX2 = [self.draggableX2 copyWithZone: zone];
	copyDragDrop.draggableX1 = [self.draggableX1 copyWithZone: zone];
	copyDragDrop.draggableQ1 = [self.draggableQ1 copyWithZone: zone];
	copyDragDrop.draggableQ3 = [self.draggableQ3 copyWithZone: zone];
	copyDragDrop.dragHandle = [self.dragHandle copyWithZone: zone];
	copyDragDrop.draggableTarget = [self.draggableTarget copyWithZone: zone];
	copyDragDrop.guideBox = [self.guideBox copyWithZone: zone];
	copyDragDrop.dragMaxX = [self.dragMaxX copyWithZone: zone];
	copyDragDrop.dragMaxY = [self.dragMaxY copyWithZone: zone];
	copyDragDrop.dragPrecisionX = [self.dragPrecisionX copyWithZone: zone];
	copyDragDrop.dragPrecisionY = [self.dragPrecisionY copyWithZone: zone];
	copyDragDrop.dragMinX = [self.dragMinX copyWithZone: zone];
	copyDragDrop.dragMinY = [self.dragMinY copyWithZone: zone];
	copyDragDrop.draggableY = [self.draggableY copyWithZone: zone];
	copyDragDrop.draggableX = [self.draggableX copyWithZone: zone];
	copyDragDrop.dragSensitivity = [self.dragSensitivity copyWithZone: zone];
	copyDragDrop.groupBy = [self.groupBy copyWithZone: zone];
	copyDragDrop.liveRedraw = [self.liveRedraw copyWithZone: zone];
	return copyDragDrop;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.draggableHigh) {
		params[@"draggableHigh"] = self.draggableHigh;
	}
	if (self.draggableLow) {
		params[@"draggableLow"] = self.draggableLow;
	}
	if (self.draggableX2) {
		params[@"draggableX2"] = self.draggableX2;
	}
	if (self.draggableX1) {
		params[@"draggableX1"] = self.draggableX1;
	}
	if (self.draggableQ1) {
		params[@"draggableQ1"] = self.draggableQ1;
	}
	if (self.draggableQ3) {
		params[@"draggableQ3"] = self.draggableQ3;
	}
	if (self.dragHandle) {
		params[@"dragHandle"] = [self.dragHandle getParams];
	}
	if (self.draggableTarget) {
		params[@"draggableTarget"] = self.draggableTarget;
	}
	if (self.guideBox) {
		params[@"guideBox"] = [self.guideBox getParams];
	}
	if (self.dragMaxX) {
		params[@"dragMaxX"] = self.dragMaxX;
	}
	if (self.dragMaxY) {
		params[@"dragMaxY"] = self.dragMaxY;
	}
	if (self.dragPrecisionX) {
		params[@"dragPrecisionX"] = self.dragPrecisionX;
	}
	if (self.dragPrecisionY) {
		params[@"dragPrecisionY"] = self.dragPrecisionY;
	}
	if (self.dragMinX) {
		params[@"dragMinX"] = self.dragMinX;
	}
	if (self.dragMinY) {
		params[@"dragMinY"] = self.dragMinY;
	}
	if (self.draggableY) {
		params[@"draggableY"] = self.draggableY;
	}
	if (self.draggableX) {
		params[@"draggableX"] = self.draggableX;
	}
	if (self.dragSensitivity) {
		params[@"dragSensitivity"] = self.dragSensitivity;
	}
	if (self.groupBy) {
		params[@"groupBy"] = self.groupBy;
	}
	if (self.liveRedraw) {
		params[@"liveRedraw"] = self.liveRedraw;
	}
	return params;
}

# pragma mark - Setters

-(void)setDraggableHigh:(NSNumber *)draggableHigh {
	NSNumber *oldValue = _draggableHigh;
	_draggableHigh = draggableHigh;
	[self updateNSObject:oldValue newValue:draggableHigh propertyName:@"draggableHigh"];
}

-(void)setDraggableLow:(NSNumber *)draggableLow {
	NSNumber *oldValue = _draggableLow;
	_draggableLow = draggableLow;
	[self updateNSObject:oldValue newValue:draggableLow propertyName:@"draggableLow"];
}

-(void)setDraggableX2:(NSNumber *)draggableX2 {
	NSNumber *oldValue = _draggableX2;
	_draggableX2 = draggableX2;
	[self updateNSObject:oldValue newValue:draggableX2 propertyName:@"draggableX2"];
}

-(void)setDraggableX1:(NSNumber *)draggableX1 {
	NSNumber *oldValue = _draggableX1;
	_draggableX1 = draggableX1;
	[self updateNSObject:oldValue newValue:draggableX1 propertyName:@"draggableX1"];
}

-(void)setDraggableQ1:(NSNumber *)draggableQ1 {
	NSNumber *oldValue = _draggableQ1;
	_draggableQ1 = draggableQ1;
	[self updateNSObject:oldValue newValue:draggableQ1 propertyName:@"draggableQ1"];
}

-(void)setDraggableQ3:(NSNumber *)draggableQ3 {
	NSNumber *oldValue = _draggableQ3;
	_draggableQ3 = draggableQ3;
	[self updateNSObject:oldValue newValue:draggableQ3 propertyName:@"draggableQ3"];
}

-(void)setDragHandle:(HIDragHandle *)dragHandle {
	HIDragHandle *oldValue = _dragHandle;
	_dragHandle = dragHandle;
	[self updateHIObject:oldValue newValue:dragHandle propertyName:@"dragHandle"];
}

-(void)setDraggableTarget:(NSNumber *)draggableTarget {
	NSNumber *oldValue = _draggableTarget;
	_draggableTarget = draggableTarget;
	[self updateNSObject:oldValue newValue:draggableTarget propertyName:@"draggableTarget"];
}

-(void)setGuideBox:(HIGuideBox *)guideBox {
	HIGuideBox *oldValue = _guideBox;
	_guideBox = guideBox;
	[self updateHIObject:oldValue newValue:guideBox propertyName:@"guideBox"];
}

-(void)setDragMaxX:(NSNumber *)dragMaxX {
	NSNumber *oldValue = _dragMaxX;
	_dragMaxX = dragMaxX;
	[self updateNSObject:oldValue newValue:dragMaxX propertyName:@"dragMaxX"];
}

-(void)setDragMaxY:(NSNumber *)dragMaxY {
	NSNumber *oldValue = _dragMaxY;
	_dragMaxY = dragMaxY;
	[self updateNSObject:oldValue newValue:dragMaxY propertyName:@"dragMaxY"];
}

-(void)setDragPrecisionX:(NSNumber *)dragPrecisionX {
	NSNumber *oldValue = _dragPrecisionX;
	_dragPrecisionX = dragPrecisionX;
	[self updateNSObject:oldValue newValue:dragPrecisionX propertyName:@"dragPrecisionX"];
}

-(void)setDragPrecisionY:(NSNumber *)dragPrecisionY {
	NSNumber *oldValue = _dragPrecisionY;
	_dragPrecisionY = dragPrecisionY;
	[self updateNSObject:oldValue newValue:dragPrecisionY propertyName:@"dragPrecisionY"];
}

-(void)setDragMinX:(NSNumber *)dragMinX {
	NSNumber *oldValue = _dragMinX;
	_dragMinX = dragMinX;
	[self updateNSObject:oldValue newValue:dragMinX propertyName:@"dragMinX"];
}

-(void)setDragMinY:(NSNumber *)dragMinY {
	NSNumber *oldValue = _dragMinY;
	_dragMinY = dragMinY;
	[self updateNSObject:oldValue newValue:dragMinY propertyName:@"dragMinY"];
}

-(void)setDraggableY:(NSNumber *)draggableY {
	NSNumber *oldValue = _draggableY;
	_draggableY = draggableY;
	[self updateNSObject:oldValue newValue:draggableY propertyName:@"draggableY"];
}

-(void)setDraggableX:(NSNumber *)draggableX {
	NSNumber *oldValue = _draggableX;
	_draggableX = draggableX;
	[self updateNSObject:oldValue newValue:draggableX propertyName:@"draggableX"];
}

-(void)setDragSensitivity:(NSNumber *)dragSensitivity {
	NSNumber *oldValue = _dragSensitivity;
	_dragSensitivity = dragSensitivity;
	[self updateNSObject:oldValue newValue:dragSensitivity propertyName:@"dragSensitivity"];
}

-(void)setGroupBy:(NSString *)groupBy {
	NSString *oldValue = _groupBy;
	_groupBy = groupBy;
	[self updateNSObject:oldValue newValue:groupBy propertyName:@"groupBy"];
}

-(void)setLiveRedraw:(NSNumber *)liveRedraw {
	NSNumber *oldValue = _liveRedraw;
	_liveRedraw = liveRedraw;
	[self updateNSObject:oldValue newValue:liveRedraw propertyName:@"liveRedraw"];
}

@end