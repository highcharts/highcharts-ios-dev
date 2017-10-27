#import "HIDebug.h"

@implementation HIDebug

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.timeKDTree) {
		params[@"timeKDTree"] = self.timeKDTree;
	}
	if (self.timeBufferCopy) {
		params[@"timeBufferCopy"] = self.timeBufferCopy;
	}
	if (self.timeRendering) {
		params[@"timeRendering"] = self.timeRendering;
	}
	if (self.showSkipSummary) {
		params[@"showSkipSummary"] = self.showSkipSummary;
	}
	if (self.timeSeriesProcessing) {
		params[@"timeSeriesProcessing"] = self.timeSeriesProcessing;
	}
	if (self.timeSetup) {
		params[@"timeSetup"] = self.timeSetup;
	}
	return params;
}

@end