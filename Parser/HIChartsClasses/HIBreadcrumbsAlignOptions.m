#import "HIChartsJSONSerializableSubclass.h"
#import "HIBreadcrumbsAlignOptions.h"

@implementation HIBreadcrumbsAlignOptions

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIBreadcrumbsAlignOptions *copyBreadcrumbsAlignOptions = [[HIBreadcrumbsAlignOptions allocWithZone: zone] init];
	copyBreadcrumbsAlignOptions.align = [self.align copyWithZone: zone];
	copyBreadcrumbsAlignOptions.verticalAlign = [self.verticalAlign copyWithZone: zone];
	copyBreadcrumbsAlignOptions.x = [self.x copyWithZone: zone];
	copyBreadcrumbsAlignOptions.y = [self.y copyWithZone: zone];
	return copyBreadcrumbsAlignOptions;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	return params;
}

# pragma mark - Setters

-(void)setAlign:(id)align {
	id oldValue = _align;
	_align = align;
	[self updateNSObject:oldValue newValue:align propertyName:@"align"];
}

-(void)setVerticalAlign:(id)verticalAlign {
	id oldValue = _verticalAlign;
	_verticalAlign = verticalAlign;
	[self updateNSObject:oldValue newValue:verticalAlign propertyName:@"verticalAlign"];
}

-(void)setX:(NSNumber *)x {
	NSNumber *oldValue = _x;
	_x = x;
	[self updateNSObject:oldValue newValue:x propertyName:@"x"];
}

-(void)setY:(NSNumber *)y {
	NSNumber *oldValue = _y;
	_y = y;
	[self updateNSObject:oldValue newValue:y propertyName:@"y"];
}

@end