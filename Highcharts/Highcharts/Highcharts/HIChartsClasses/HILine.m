#import "HIChartsJSONSerializableSubclass.h"
#import "HILine.h"

@implementation HILine

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"line";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	return params;
}

@end