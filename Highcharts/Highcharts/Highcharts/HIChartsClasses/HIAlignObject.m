#import "HIChartsJSONSerializableSubclass.h"
#import "HIAlignObject.h"

@implementation HIAlignObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIAlignObject *copyAlignObject = [[HIAlignObject allocWithZone: zone] init];
	copyAlignObject.align = [self.align copyWithZone: zone];
	copyAlignObject.alignByTranslate = [self.alignByTranslate copyWithZone: zone];
	copyAlignObject.verticalAlign = [self.verticalAlign copyWithZone: zone];
	copyAlignObject.x = [self.x copyWithZone: zone];
	copyAlignObject.y = [self.y copyWithZone: zone];
	return copyAlignObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.alignByTranslate) {
		params[@"alignByTranslate"] = self.alignByTranslate;
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

-(void)setAlign:(NSString *)align {
	NSString *oldValue = _align;
	_align = align;
	[self updateNSObject:oldValue newValue:align propertyName:@"align"];
}

-(void)setAlignByTranslate:(NSNumber *)alignByTranslate {
	NSNumber *oldValue = _alignByTranslate;
	_alignByTranslate = alignByTranslate;
	[self updateNSObject:oldValue newValue:alignByTranslate propertyName:@"alignByTranslate"];
}

-(void)setVerticalAlign:(NSString *)verticalAlign {
	NSString *oldValue = _verticalAlign;
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