#import "HIChartsJSONSerializableSubclass.h"
#import "HIBreaks.h"

@implementation HIBreaks

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.breakSize) {
		params[@"breakSize"] = self.breakSize;
	}
	if (self.repeat) {
		params[@"repeat"] = self.repeat;
	}
	if (self.to) {
		params[@"to"] = self.to;
	}
	if (self.from) {
		params[@"from"] = self.from;
	}
	return params;
}

# pragma mark - Setters

-(void)setBreakSize:(NSNumber *)breakSize {
	_breakSize = breakSize;
	[self updateNSObject:@"breakSize"];
}

-(void)setRepeat:(NSNumber *)repeat {
	_repeat = repeat;
	[self updateNSObject:@"repeat"];
}

-(void)setTo:(NSNumber *)to {
	_to = to;
	[self updateNSObject:@"to"];
}

-(void)setFrom:(NSNumber *)from {
	_from = from;
	[self updateNSObject:@"from"];
}

@end