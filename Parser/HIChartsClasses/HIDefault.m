#import "HIChartsJSONSerializableSubclass.h"
#import "HIDefault.h"

@implementation HIDefault

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDefault *copyDefault = [[HIDefault allocWithZone: zone] init];
	copyDefault.zIndex = [self.zIndex copyWithZone: zone];
	copyDefault.color = [self.color copyWithZone: zone];
	copyDefault.className = [self.className copyWithZone: zone];
	copyDefault.cursor = [self.cursor copyWithZone: zone];
	copyDefault.lineColor = [self.lineColor copyWithZone: zone];
	copyDefault.lineWidth = [self.lineWidth copyWithZone: zone];
	return copyDefault;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
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

-(void)setCursor:(NSString *)cursor {
	_cursor = cursor;
	[self updateNSObject:@"cursor"];
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