#import "HIChartsJSONSerializableSubclass.h"
#import "HISeriesSunburstDataLabelsOptionsObject.h"

@implementation HISeriesSunburstDataLabelsOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISeriesSunburstDataLabelsOptionsObject *copySeriesSunburstDataLabelsOptionsObject = [[HISeriesSunburstDataLabelsOptionsObject allocWithZone: zone] init];
	copySeriesSunburstDataLabelsOptionsObject.align = [self.align copyWithZone: zone];
	copySeriesSunburstDataLabelsOptionsObject.allowOverlap = [self.allowOverlap copyWithZone: zone];
	copySeriesSunburstDataLabelsOptionsObject.rotationMode = [self.rotationMode copyWithZone: zone];
	return copySeriesSunburstDataLabelsOptionsObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.allowOverlap) {
		params[@"allowOverlap"] = self.allowOverlap;
	}
	if (self.rotationMode) {
		params[@"rotationMode"] = self.rotationMode;
	}
	return params;
}

# pragma mark - Setters

-(void)setAlign:(id)align {
	id oldValue = _align;
	_align = align;
	[self updateNSObject:oldValue newValue:align propertyName:@"align"];
}

-(void)setAllowOverlap:(id)allowOverlap {
	id oldValue = _allowOverlap;
	_allowOverlap = allowOverlap;
	[self updateNSObject:oldValue newValue:allowOverlap propertyName:@"allowOverlap"];
}

-(void)setRotationMode:(NSString *)rotationMode {
	NSString *oldValue = _rotationMode;
	_rotationMode = rotationMode;
	[self updateNSObject:oldValue newValue:rotationMode propertyName:@"rotationMode"];
}

@end