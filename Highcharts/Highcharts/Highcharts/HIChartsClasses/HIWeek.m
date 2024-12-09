#import "HIChartsJSONSerializableSubclass.h"
#import "HIWeek.h"

@implementation HIWeek

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIWeek *copyWeek = [[HIWeek allocWithZone: zone] init];
	copyWeek.main = [self.main copyWithZone: zone];
	copyWeek.list = [self.list copyWithZone: zone];
	return copyWeek;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
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