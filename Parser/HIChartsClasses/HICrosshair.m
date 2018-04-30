#import "HIChartsJSONSerializableSubclass.h"
#import "HICrosshair.h"

@implementation HICrosshair

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HICrosshair *copyCrosshair = [[HICrosshair allocWithZone: zone] init];
	copyCrosshair.zIndex = [self.zIndex copyWithZone: zone];
	copyCrosshair.dashStyle = [self.dashStyle copyWithZone: zone];
	copyCrosshair.color = [self.color copyWithZone: zone];
	copyCrosshair.className = [self.className copyWithZone: zone];
	copyCrosshair.width = [self.width copyWithZone: zone];
	copyCrosshair.snap = [self.snap copyWithZone: zone];
	return copyCrosshair;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.snap) {
		params[@"snap"] = self.snap;
	}
	return params;
}

# pragma mark - Setters

-(void)setZIndex:(NSNumber *)zIndex {
	_zIndex = zIndex;
	[self updateNSObject:@"zIndex"];
}

-(void)setDashStyle:(NSString *)dashStyle {
	_dashStyle = dashStyle;
	[self updateNSObject:@"dashStyle"];
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

-(void)setWidth:(NSNumber *)width {
	_width = width;
	[self updateNSObject:@"width"];
}

-(void)setSnap:(NSNumber *)snap {
	_snap = snap;
	[self updateNSObject:@"snap"];
}

@end