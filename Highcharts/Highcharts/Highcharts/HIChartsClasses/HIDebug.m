#import "HIChartsJSONSerializableSubclass.h"
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

# pragma mark - Setters

-(void)setTimeKDTree:(NSNumber *)timeKDTree {
	_timeKDTree = timeKDTree;
	[self updateNSObject:@"timeKDTree"];
}

-(void)setTimeBufferCopy:(NSNumber *)timeBufferCopy {
	_timeBufferCopy = timeBufferCopy;
	[self updateNSObject:@"timeBufferCopy"];
}

-(void)setTimeRendering:(NSNumber *)timeRendering {
	_timeRendering = timeRendering;
	[self updateNSObject:@"timeRendering"];
}

-(void)setShowSkipSummary:(NSNumber *)showSkipSummary {
	_showSkipSummary = showSkipSummary;
	[self updateNSObject:@"showSkipSummary"];
}

-(void)setTimeSeriesProcessing:(NSNumber *)timeSeriesProcessing {
	_timeSeriesProcessing = timeSeriesProcessing;
	[self updateNSObject:@"timeSeriesProcessing"];
}

-(void)setTimeSetup:(NSNumber *)timeSetup {
	_timeSetup = timeSetup;
	[self updateNSObject:@"timeSetup"];
}

@end