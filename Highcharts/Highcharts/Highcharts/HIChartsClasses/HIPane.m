#import "HIPane.h"

@implementation HIPane

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
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
	if (self.endAngle) {
		params[@"endAngle"] = self.endAngle;
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
	if (self.startAngle) {
		params[@"startAngle"] = self.startAngle;
	}
	return params;
}

# pragma mark - Setters

-(void)setBackground:(NSArray <HIBackground *> *)background {
	NSArray <HIBackground *> *oldValue = _background;
	_background = background;
	[self updateArrayObject:oldValue newValue:background propertyName:@"background"];
}

-(void)setSize:(id)size {
	_size = size;
	[self updateNSObject:@"size"];
}

-(void)setEndAngle:(NSNumber *)endAngle {
	_endAngle = endAngle;
	[self updateNSObject:@"endAngle"];
}

-(void)setCenter:(NSArray *)center {
	NSArray *oldValue = _center;
	_center = center;
	[self updateArrayObject:oldValue newValue:center propertyName:@"center"];
}

-(void)setStartAngle:(NSNumber *)startAngle {
	_startAngle = startAngle;
	[self updateNSObject:@"startAngle"];
}

@end