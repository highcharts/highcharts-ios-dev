#import "HIChartsJSONSerializableSubclass.h"
#import "HIYear.h"

@implementation HIYear

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIYear *copyYear = [[HIYear allocWithZone: zone] init];
	copyYear.main = [self.main copyWithZone: zone];
	copyYear.list = [self.list copyWithZone: zone];
	return copyYear;
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