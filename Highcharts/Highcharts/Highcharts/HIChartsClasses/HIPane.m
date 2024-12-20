#import "HIChartsJSONSerializableSubclass.h"
#import "HIPane.h"

@implementation HIPane

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPane *copyPane = [[HIPane allocWithZone: zone] init];
	copyPane.innerSize = [self.innerSize copyWithZone: zone];
	copyPane.center = [self.center copyWithZone: zone];
	copyPane.endAngle = [self.endAngle copyWithZone: zone];
	copyPane.background = [self.background copyWithZone: zone];
	copyPane.startAngle = [self.startAngle copyWithZone: zone];
	copyPane.size = [self.size copyWithZone: zone];
	return copyPane;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.innerSize) {
		params[@"innerSize"] = self.innerSize;
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
	if (self.endAngle) {
		params[@"endAngle"] = self.endAngle;
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
	if (self.startAngle) {
		params[@"startAngle"] = self.startAngle;
	}
	if (self.size) {
		params[@"size"] = self.size;
	}
	return params;
}

# pragma mark - Setters

-(void)setInnerSize:(id)innerSize {
	id oldValue = _innerSize;
	_innerSize = innerSize;
	[self updateNSObject:oldValue newValue:innerSize propertyName:@"innerSize"];
}

-(void)setCenter:(NSArray *)center {
	NSArray *oldValue = _center;
	_center = center;
	[self updateArrayObject:oldValue newValue:center propertyName:@"center"];
}

-(void)setEndAngle:(NSNumber *)endAngle {
	NSNumber *oldValue = _endAngle;
	_endAngle = endAngle;
	[self updateNSObject:oldValue newValue:endAngle propertyName:@"endAngle"];
}

-(void)setBackground:(NSArray <HIBackground *> *)background {
	NSArray <HIBackground *> *oldValue = _background;
	_background = background;
	[self updateArrayObject:oldValue newValue:background propertyName:@"background"];
}

-(void)setStartAngle:(NSNumber *)startAngle {
	NSNumber *oldValue = _startAngle;
	_startAngle = startAngle;
	[self updateNSObject:oldValue newValue:startAngle propertyName:@"startAngle"];
}

-(void)setSize:(id)size {
	id oldValue = _size;
	_size = size;
	[self updateNSObject:oldValue newValue:size propertyName:@"size"];
}

@end