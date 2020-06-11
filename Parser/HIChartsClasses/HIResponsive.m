#import "HIChartsJSONSerializableSubclass.h"
#import "HIResponsive.h"

@implementation HIResponsive

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIResponsive *copyResponsive = [[HIResponsive allocWithZone: zone] init];
	copyResponsive.rules = [self.rules copyWithZone: zone];
	return copyResponsive;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.rules) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.rules) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"rules"] = array;
	}
	return params;
}

# pragma mark - Setters

-(void)setRules:(NSArray <HIRules *> *)rules {
	NSArray <HIRules *> *oldValue = _rules;
	_rules = rules;
	[self updateArrayObject:oldValue newValue:rules propertyName:@"rules"];
}

@end