#import "HIChartsJSONSerializableSubclass.h"
#import "HIHour.h"

@implementation HIHour

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIHour *copyHour = [[HIHour allocWithZone: zone] init];
	copyHour.range = [self.range copyWithZone: zone];
	copyHour.main = [self.main copyWithZone: zone];
	copyHour.list = [self.list copyWithZone: zone];
	return copyHour;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.range) {
		params[@"range"] = self.range;
	}
	if (self.main) {
		params[@"main"] = [self.main getParams];
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

-(void)setMain:(HIDateTimeFormatOptions *)main {
	HIDateTimeFormatOptions *oldValue = _main;
	_main = main;
	[self updateHIObject:oldValue newValue:main propertyName:@"main"];
}

-(void)setList:(NSArray *)list {
	NSArray *oldValue = _list;
	_list = list;
	[self updateArrayObject:oldValue newValue:list propertyName:@"list"];
}

@end