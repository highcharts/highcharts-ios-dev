#import "HIChartsJSONSerializableSubclass.h"
#import "HIDataSortingOptionsObject.h"

@implementation HIDataSortingOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDataSortingOptionsObject *copyDataSortingOptionsObject = [[HIDataSortingOptionsObject allocWithZone: zone] init];
	copyDataSortingOptionsObject.enabled = [self.enabled copyWithZone: zone];
	copyDataSortingOptionsObject.matchByName = [self.matchByName copyWithZone: zone];
	copyDataSortingOptionsObject.sortKey = [self.sortKey copyWithZone: zone];
	return copyDataSortingOptionsObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.matchByName) {
		params[@"matchByName"] = self.matchByName;
	}
	if (self.sortKey) {
		params[@"sortKey"] = self.sortKey;
	}
	return params;
}

# pragma mark - Setters

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setMatchByName:(NSNumber *)matchByName {
	NSNumber *oldValue = _matchByName;
	_matchByName = matchByName;
	[self updateNSObject:oldValue newValue:matchByName propertyName:@"matchByName"];
}

-(void)setSortKey:(NSString *)sortKey {
	NSString *oldValue = _sortKey;
	_sortKey = sortKey;
	[self updateNSObject:oldValue newValue:sortKey propertyName:@"sortKey"];
}

@end