#import "HIChartsJSONSerializableSubclass.h"
#import "HIDragHandle.h"

@implementation HIDragHandle

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDragHandle *copyDragHandle = [[HIDragHandle allocWithZone: zone] init];
	copyDragHandle.cursor = [self.cursor copyWithZone: zone];
	copyDragHandle.zIndex = [self.zIndex copyWithZone: zone];
	copyDragHandle.color = [self.color copyWithZone: zone];
	copyDragHandle.className = [self.className copyWithZone: zone];
	copyDragHandle.pathFormatter = [self.pathFormatter copyWithZone: zone];
	copyDragHandle.lineColor = [self.lineColor copyWithZone: zone];
	copyDragHandle.lineWidth = [self.lineWidth copyWithZone: zone];
	return copyDragHandle;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.pathFormatter) {
		params[@"pathFormatter"] = [self.pathFormatter getFunction];
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	return params;
}

# pragma mark - Setters

-(void)setCursor:(NSString *)cursor {
	_cursor = cursor;
	[self updateNSObject:@"cursor"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	_zIndex = zIndex;
	[self updateNSObject:@"zIndex"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	if(self.color) {
		[self removeObserver:self forKeyPath:@"color.isUpdated"];
	}
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setClassName:(NSString *)className {
	_className = className;
	[self updateNSObject:@"className"];
}

-(void)setPathFormatter:(HIFunction *)pathFormatter {
	HIFunction *oldValue = _pathFormatter;
	if(self.pathFormatter) {
		[self removeObserver:self forKeyPath:@"pathFormatter.isUpdated"];
	}
	_pathFormatter = pathFormatter;
	[self updateHIObject:oldValue newValue:pathFormatter propertyName:@"pathFormatter"];
}

-(void)setLineColor:(HIColor *)lineColor {
	HIColor *oldValue = _lineColor;
	if(self.lineColor) {
		[self removeObserver:self forKeyPath:@"lineColor.isUpdated"];
	}
	_lineColor = lineColor;
	[self updateHIObject:oldValue newValue:lineColor propertyName:@"lineColor"];
}

-(void)setLineWidth:(NSNumber *)lineWidth {
	_lineWidth = lineWidth;
	[self updateNSObject:@"lineWidth"];
}

@end