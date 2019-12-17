#import "HIChartsJSONSerializableSubclass.h"
#import "HIDataSorting.h"

@implementation HIDataSorting

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDataSorting *copyDataSorting = [[HIDataSorting allocWithZone: zone] init];
	copyDataSorting.matchByName = [self.matchByName copyWithZone: zone];
	copyDataSorting.enabled = [self.enabled copyWithZone: zone];
	copyDataSorting.sortKey = [self.sortKey copyWithZone: zone];
	return copyDataSorting;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.matchByName) {
		params[@"matchByName"] = self.matchByName;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.sortKey) {
		params[@"sortKey"] = self.sortKey;
	}
	return params;
}

# pragma mark - Setters

-(void)setMatchByName:(NSNumber *)matchByName {
	NSNumber *oldValue = _matchByName;
	_matchByName = matchByName;
	[self updateNSObject:oldValue newValue:matchByName propertyName:@"matchByName"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setSortKey:(NSString *)sortKey {
	NSString *oldValue = _sortKey;
	_sortKey = sortKey;
	[self updateNSObject:oldValue newValue:sortKey propertyName:@"sortKey"];
}

@end