#import "HIChartsJSONSerializableSubclass.h"
#import "HIKeyboardNavigation.h"

@implementation HIKeyboardNavigation

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIKeyboardNavigation *copyKeyboardNavigation = [[HIKeyboardNavigation allocWithZone: zone] init];
	copyKeyboardNavigation.enabled = [self.enabled copyWithZone: zone];
	copyKeyboardNavigation.wrapAround = [self.wrapAround copyWithZone: zone];
	copyKeyboardNavigation.focusBorder = [self.focusBorder copyWithZone: zone];
	copyKeyboardNavigation.order = [self.order copyWithZone: zone];
	copyKeyboardNavigation.seriesNavigation = [self.seriesNavigation copyWithZone: zone];
	return copyKeyboardNavigation;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.wrapAround) {
		params[@"wrapAround"] = self.wrapAround;
	}
	if (self.focusBorder) {
		params[@"focusBorder"] = [self.focusBorder getParams];
	}
	if (self.order) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.order) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"order"] = array;
	}
	if (self.seriesNavigation) {
		params[@"seriesNavigation"] = [self.seriesNavigation getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setWrapAround:(NSNumber *)wrapAround {
	NSNumber *oldValue = _wrapAround;
	_wrapAround = wrapAround;
	[self updateNSObject:oldValue newValue:wrapAround propertyName:@"wrapAround"];
}

-(void)setFocusBorder:(HIFocusBorder *)focusBorder {
	HIFocusBorder *oldValue = _focusBorder;
	_focusBorder = focusBorder;
	[self updateHIObject:oldValue newValue:focusBorder propertyName:@"focusBorder"];
}

-(void)setOrder:(NSArray<NSString *> *)order {
	NSArray<NSString *> *oldValue = _order;
	_order = order;
	[self updateArrayObject:oldValue newValue:order propertyName:@"order"];
}

-(void)setSeriesNavigation:(HISeriesNavigation *)seriesNavigation {
	HISeriesNavigation *oldValue = _seriesNavigation;
	_seriesNavigation = seriesNavigation;
	[self updateHIObject:oldValue newValue:seriesNavigation propertyName:@"seriesNavigation"];
}

@end