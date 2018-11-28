#import "HIChartsJSONSerializableSubclass.h"
#import "HIRotation.h"

@implementation HIRotation

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIRotation *copyRotation = [[HIRotation allocWithZone: zone] init];
	copyRotation.to = [self.to copyWithZone: zone];
	copyRotation.from = [self.from copyWithZone: zone];
	copyRotation.orientations = [self.orientations copyWithZone: zone];
	return copyRotation;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.to) {
		params[@"to"] = self.to;
	}
	if (self.from) {
		params[@"from"] = self.from;
	}
	if (self.orientations) {
		params[@"orientations"] = self.orientations;
	}
	return params;
}

# pragma mark - Setters

-(void)setTo:(NSNumber *)to {
	NSNumber *oldValue = _to;
	_to = to;
	[self updateNSObject:oldValue newValue:to propertyName:@"to"];
}

-(void)setFrom:(NSNumber *)from {
	NSNumber *oldValue = _from;
	_from = from;
	[self updateNSObject:oldValue newValue:from propertyName:@"from"];
}

-(void)setOrientations:(NSNumber *)orientations {
	NSNumber *oldValue = _orientations;
	_orientations = orientations;
	[self updateNSObject:oldValue newValue:orientations propertyName:@"orientations"];
}

@end