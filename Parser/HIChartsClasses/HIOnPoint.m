#import "HIChartsJSONSerializableSubclass.h"
#import "HIOnPoint.h"

@implementation HIOnPoint

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIOnPoint *copyOnPoint = [[HIOnPoint allocWithZone: zone] init];
	copyOnPoint.position = [self.position copyWithZone: zone];
	copyOnPoint.connectorOptions = [self.connectorOptions copyWithZone: zone];
	copyOnPoint.id = [self.id copyWithZone: zone];
	return copyOnPoint;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.position) {
		params[@"position"] = [self.position getParams];
	}
	if (self.connectorOptions) {
		params[@"connectorOptions"] = [self.connectorOptions getParams];
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	return params;
}

# pragma mark - Setters

-(void)setPosition:(HIPosition *)position {
	HIPosition *oldValue = _position;
	_position = position;
	[self updateHIObject:oldValue newValue:position propertyName:@"position"];
}

-(void)setConnectorOptions:(HISVGAttributes *)connectorOptions {
	HISVGAttributes *oldValue = _connectorOptions;
	_connectorOptions = connectorOptions;
	[self updateHIObject:oldValue newValue:connectorOptions propertyName:@"connectorOptions"];
}

-(void)setId:(NSString *)id {
	NSString *oldValue = _id;
	_id = id;
	[self updateNSObject:oldValue newValue:id propertyName:@"id"];
}

@end