#import "HIChartsJSONSerializableSubclass.h"
#import "HIFrame.h"

@implementation HIFrame

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.size) {
		params[@"size"] = self.size;
	}
	if (self.right) {
		params[@"right"] = [self.right getParams];
	}
	if (self.top) {
		params[@"top"] = [self.top getParams];
	}
	if (self.back) {
		params[@"back"] = [self.back getParams];
	}
	if (self.side) {
		params[@"side"] = [self.side getParams];
	}
	if (self.front) {
		params[@"front"] = [self.front getParams];
	}
	if (self.left) {
		params[@"left"] = [self.left getParams];
	}
	if (self.bottom) {
		params[@"bottom"] = [self.bottom getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setVisible:(NSString *)visible {
	_visible = visible;
	[self updateNSObject:@"visible"];
}

-(void)setSize:(NSNumber *)size {
	_size = size;
	[self updateNSObject:@"size"];
}

-(void)setRight:(HIRight *)right {
	HIRight *oldValue = _right;
	if(self.right) {
		[self removeObserver:self forKeyPath:@"right.isUpdated"];
	}
	_right = right;
	[self updateHIObject:oldValue newValue:right propertyName:@"right"];
}

-(void)setTop:(HITop *)top {
	HITop *oldValue = _top;
	if(self.top) {
		[self removeObserver:self forKeyPath:@"top.isUpdated"];
	}
	_top = top;
	[self updateHIObject:oldValue newValue:top propertyName:@"top"];
}

-(void)setBack:(HIBack *)back {
	HIBack *oldValue = _back;
	if(self.back) {
		[self removeObserver:self forKeyPath:@"back.isUpdated"];
	}
	_back = back;
	[self updateHIObject:oldValue newValue:back propertyName:@"back"];
}

-(void)setSide:(HISide *)side {
	HISide *oldValue = _side;
	if(self.side) {
		[self removeObserver:self forKeyPath:@"side.isUpdated"];
	}
	_side = side;
	[self updateHIObject:oldValue newValue:side propertyName:@"side"];
}

-(void)setFront:(HIFront *)front {
	HIFront *oldValue = _front;
	if(self.front) {
		[self removeObserver:self forKeyPath:@"front.isUpdated"];
	}
	_front = front;
	[self updateHIObject:oldValue newValue:front propertyName:@"front"];
}

-(void)setLeft:(HILeft *)left {
	HILeft *oldValue = _left;
	if(self.left) {
		[self removeObserver:self forKeyPath:@"left.isUpdated"];
	}
	_left = left;
	[self updateHIObject:oldValue newValue:left propertyName:@"left"];
}

-(void)setBottom:(HIBottom *)bottom {
	HIBottom *oldValue = _bottom;
	if(self.bottom) {
		[self removeObserver:self forKeyPath:@"bottom.isUpdated"];
	}
	_bottom = bottom;
	[self updateHIObject:oldValue newValue:bottom propertyName:@"bottom"];
}

@end