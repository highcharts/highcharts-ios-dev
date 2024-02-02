#import "HIChartsJSONSerializableSubclass.h"
#import "HISecond.h"

@implementation HISecond

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISecond *copySecond = [[HISecond allocWithZone: zone] init];
	copySecond.range = [self.range copyWithZone: zone];
	copySecond.main = [self.main copyWithZone: zone];
	copySecond.list = [self.list copyWithZone: zone];
	return copySecond;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.range) {
		params[@"range"] = self.range;
	}
	if (self.main) {
		params[@"main"] = self.main;
	}
	if (self.list) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.list) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"list"] = array;
	}
	return params;
}

# pragma mark - Setters

-(void)setRange:(NSNumber *)range {
	NSNumber *oldValue = _range;
	_range = range;
	[self updateNSObject:oldValue newValue:range propertyName:@"range"];
}

-(void)setMain:(NSString *)main {
	NSString *oldValue = _main;
	_main = main;
	[self updateNSObject:oldValue newValue:main propertyName:@"main"];
}

-(void)setList:(NSArray<NSString *> *)list {
	NSArray<NSString *> *oldValue = _list;
	_list = list;
	[self updateArrayObject:oldValue newValue:list propertyName:@"list"];
}

@end