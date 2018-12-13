#import "HIChartsJSONSerializableSubclass.h"
#import "HIMapDataObject.h"

@implementation HIMapDataObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIMapDataObject *copyMapDataObject = [[HIMapDataObject allocWithZone: zone] init];
	copyMapDataObject.name = [self.name copyWithZone: zone];
	copyMapDataObject.path = [self.path copyWithZone: zone];
	copyMapDataObject.properties = [self.properties copyWithZone: zone];
	return copyMapDataObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.path) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.path) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"path"] = array;
	}
	if (self.properties) {
		params[@"properties"] = self.properties;
	}
	return params;
}

# pragma mark - Setters

-(void)setName:(NSString *)name {
	_name = name;
	[self updateNSObject:@"name"];
}

-(void)setPath:(NSArray *)path {
	NSArray *oldValue = _path;
	_path = path;
	[self updateArrayObject:oldValue newValue:path propertyName:@"path"];
}

-(void)setProperties:(id)properties {
	_properties = properties;
	[self updateNSObject:@"properties"];
}

@end