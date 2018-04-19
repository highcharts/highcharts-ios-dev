#import "HIChartsJSONSerializableSubclass.h"
#import "HILinearGradient.h"

@implementation HILinearGradient

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.y1) {
		params[@"y1"] = self.y1;
	}
	if (self.x2) {
		params[@"x2"] = self.x2;
	}
	if (self.x1) {
		params[@"x1"] = self.x1;
	}
	if (self.y2) {
		params[@"y2"] = self.y2;
	}
	return params;
}

# pragma mark - Setters

-(void)setY1:(NSNumber *)y1 {
	_y1 = y1;
	[self updateNSObject:@"y1"];
}

-(void)setX2:(NSNumber *)x2 {
	_x2 = x2;
	[self updateNSObject:@"x2"];
}

-(void)setX1:(NSNumber *)x1 {
	_x1 = x1;
	[self updateNSObject:@"x1"];
}

-(void)setY2:(NSNumber *)y2 {
	_y2 = y2;
	[self updateNSObject:@"y2"];
}

@end
