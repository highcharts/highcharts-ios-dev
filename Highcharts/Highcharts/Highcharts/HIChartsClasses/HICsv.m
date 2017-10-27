#import "HICsv.h"

@implementation HICsv

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.lineDelimiter) {
		params[@"lineDelimiter"] = self.lineDelimiter;
	}
	if (self.columnHeaderFormatter) {
		params[@"columnHeaderFormatter"] = [self.columnHeaderFormatter getFunction];
	}
	if (self.dateFormat) {
		params[@"dateFormat"] = self.dateFormat;
	}
	if (self.itemDelimiter) {
		params[@"itemDelimiter"] = self.itemDelimiter;
	}
	return params;
}

@end