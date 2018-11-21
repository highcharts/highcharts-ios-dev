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
	copyDragDrop.dragHandle = [self.dragHandle copyWithZone: zone];
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
	if (self.dragHandle) {
		params[@"dragHandle"] = [self.dragHandle getParams];
	}
	if (self.liveRedraw) {
		params[@"liveRedraw"] = self.liveRedraw;
	}
	return params;
}

# pragma mark - Setters

-(void)setDraggableHigh:(NSNumber *)draggableHigh {
	_draggableHigh = draggableHigh;
	[self updateNSObject:@"draggableHigh"];
}

-(void)setDraggableLow:(NSNumber *)draggableLow {
	_draggableLow = draggableLow;
	[self updateNSObject:@"draggableLow"];
}

-(void)setDraggableX2:(NSNumber *)draggableX2 {
	_draggableX2 = draggableX2;
	[self updateNSObject:@"draggableX2"];
}

-(void)setDraggableX1:(NSNumber *)draggableX1 {
	_draggableX1 = draggableX1;
	[self updateNSObject:@"draggableX1"];
}

-(void)setDraggableQ1:(NSNumber *)draggableQ1 {
	_draggableQ1 = draggableQ1;
	[self updateNSObject:@"draggableQ1"];
}

-(void)setDraggableQ3:(NSNumber *)draggableQ3 {
	_draggableQ3 = draggableQ3;
	[self updateNSObject:@"draggableQ3"];
}

-(void)setDraggableTarget:(NSNumber *)draggableTarget {
	_draggableTarget = draggableTarget;
	[self updateNSObject:@"draggableTarget"];
}

-(void)setGuideBox:(HIGuideBox *)guideBox {
	HIGuideBox *oldValue = _guideBox;
	if(self.guideBox) {
		[self removeObserver:self forKeyPath:@"guideBox.isUpdated"];
	}
	_guideBox = guideBox;
	[self updateHIObject:oldValue newValue:guideBox propertyName:@"guideBox"];
}

-(void)setDragMaxX:(NSNumber *)dragMaxX {
	_dragMaxX = dragMaxX;
	[self updateNSObject:@"dragMaxX"];
}

-(void)setDragMaxY:(NSNumber *)dragMaxY {
	_dragMaxY = dragMaxY;
	[self updateNSObject:@"dragMaxY"];
}

-(void)setDragPrecisionX:(NSNumber *)dragPrecisionX {
	_dragPrecisionX = dragPrecisionX;
	[self updateNSObject:@"dragPrecisionX"];
}

-(void)setDragPrecisionY:(NSNumber *)dragPrecisionY {
	_dragPrecisionY = dragPrecisionY;
	[self updateNSObject:@"dragPrecisionY"];
}

-(void)setDragMinX:(NSNumber *)dragMinX {
	_dragMinX = dragMinX;
	[self updateNSObject:@"dragMinX"];
}

-(void)setDragMinY:(NSNumber *)dragMinY {
	_dragMinY = dragMinY;
	[self updateNSObject:@"dragMinY"];
}

-(void)setDraggableY:(NSNumber *)draggableY {
	_draggableY = draggableY;
	[self updateNSObject:@"draggableY"];
}

-(void)setDraggableX:(NSNumber *)draggableX {
	_draggableX = draggableX;
	[self updateNSObject:@"draggableX"];
}

-(void)setDragSensitivity:(NSNumber *)dragSensitivity {
	_dragSensitivity = dragSensitivity;
	[self updateNSObject:@"dragSensitivity"];
}

-(void)setGroupBy:(NSString *)groupBy {
	_groupBy = groupBy;
	[self updateNSObject:@"groupBy"];
}

-(void)setDragHandle:(HIDragHandle *)dragHandle {
	HIDragHandle *oldValue = _dragHandle;
	if(self.dragHandle) {
		[self removeObserver:self forKeyPath:@"dragHandle.isUpdated"];
	}
	_dragHandle = dragHandle;
	[self updateHIObject:oldValue newValue:dragHandle propertyName:@"dragHandle"];
}

-(void)setLiveRedraw:(NSNumber *)liveRedraw {
	_liveRedraw = liveRedraw;
	[self updateNSObject:@"liveRedraw"];
}

@end