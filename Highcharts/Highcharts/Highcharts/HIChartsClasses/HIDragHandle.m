#import "HIChartsJSONSerializableSubclass.h"
#import "HIDragHandle.h"

@implementation HIDragHandle

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDragHandle *copyDragHandle = [[HIDragHandle allocWithZone: zone] init];
	copyDragHandle.className = [self.className copyWithZone: zone];
	copyDragHandle.color = [self.color copyWithZone: zone];
	copyDragHandle.lineWidth = [self.lineWidth copyWithZone: zone];
	copyDragHandle.zIndex = [self.zIndex copyWithZone: zone];
	copyDragHandle.lineColor = [self.lineColor copyWithZone: zone];
	copyDragHandle.cursor = [self.cursor copyWithZone: zone];
	copyDragHandle.pathFormatter = [self.pathFormatter copyWithZone: zone];
	return copyDragHandle;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.pathFormatter) {
		params[@"pathFormatter"] = [self.pathFormatter getFunction];
	}
	return params;
}

# pragma mark - Setters

-(void)setClassName:(NSString *)className {
	NSString *oldValue = _className;
	_className = className;
	[self updateNSObject:oldValue newValue:className propertyName:@"className"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setLineWidth:(NSNumber *)lineWidth {
	NSNumber *oldValue = _lineWidth;
	_lineWidth = lineWidth;
	[self updateNSObject:oldValue newValue:lineWidth propertyName:@"lineWidth"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	NSNumber *oldValue = _zIndex;
	_zIndex = zIndex;
	[self updateNSObject:oldValue newValue:zIndex propertyName:@"zIndex"];
}

-(void)setLineColor:(HIColor *)lineColor {
	HIColor *oldValue = _lineColor;
	_lineColor = lineColor;
	[self updateHIObject:oldValue newValue:lineColor propertyName:@"lineColor"];
}

-(void)setCursor:(NSString *)cursor {
	NSString *oldValue = _cursor;
	_cursor = cursor;
	[self updateNSObject:oldValue newValue:cursor propertyName:@"cursor"];
}

-(void)setPathFormatter:(HIFunction *)pathFormatter {
	HIFunction *oldValue = _pathFormatter;
	_pathFormatter = pathFormatter;
	[self updateHIObject:oldValue newValue:pathFormatter propertyName:@"pathFormatter"];
}

@end