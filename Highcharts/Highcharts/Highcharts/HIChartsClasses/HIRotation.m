#import "HIChartsJSONSerializableSubclass.h"
#import "HIRotation.h"

@implementation HIRotation

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.to) {
		params[@"to"] = self.to;
	}
	if (self.orientations) {
		params[@"orientations"] = self.orientations;
	}
	if (self.from) {
		params[@"from"] = self.from;
	}
	return params;
}

# pragma mark - Setters

-(void)setTo:(NSNumber *)to {
	_to = to;
	[self updateNSObject:@"to"];
}

-(void)setOrientations:(NSNumber *)orientations {
	_orientations = orientations;
	[self updateNSObject:@"orientations"];
}

-(void)setFrom:(NSNumber *)from {
	_from = from;
	[self updateNSObject:@"from"];
}

@end