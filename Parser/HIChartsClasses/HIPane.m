#import "HIChartsJSONSerializableSubclass.h"
#import "HIPane.h"

@implementation HIPane

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	HIPane *copyPane = [[HIPane allocWithZone: zone] init];
	copyPane.endAngle = [self.endAngle copyWithZone: zone];
	copyPane.startAngle = [self.startAngle copyWithZone: zone];
	copyPane.center = [self.center copyWithZone: zone];
	copyPane.background = [self.background copyWithZone: zone];
	copyPane.size = [self.size copyWithZone: zone];
	return copyPane;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.endAngle) {
		params[@"endAngle"] = self.endAngle;
	}
	if (self.startAngle) {
		params[@"startAngle"] = self.startAngle;
	}
	if (self.center) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.center) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"center"] = array;
	}
	if (self.background) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.background) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"background"] = array;
	}
	if (self.size) {
		params[@"size"] = self.size;
	}
	return params;
}

# pragma mark - Setters

-(void)setEndAngle:(NSNumber *)endAngle {
	_endAngle = endAngle;
	[self updateNSObject:@"endAngle"];
}

-(void)setStartAngle:(NSNumber *)startAngle {
	_startAngle = startAngle;
	[self updateNSObject:@"startAngle"];
}

-(void)setCenter:(NSArray *)center {
	NSArray *oldValue = _center;
	_center = center;
	[self updateArrayObject:oldValue newValue:center propertyName:@"center"];
}

-(void)setBackground:(NSArray <HIBackground *> *)background {
	NSArray <HIBackground *> *oldValue = _background;
	_background = background;
	[self updateArrayObject:oldValue newValue:background propertyName:@"background"];
}

-(void)setSize:(id)size {
	_size = size;
	[self updateNSObject:@"size"];
}

@end