#import "HIChartsJSONSerializableSubclass.h"
#import "HIDebug.h"

@implementation HIDebug

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	HIDebug *copyDebug = [[HIDebug allocWithZone: zone] init];
	copyDebug.timeKDTree = [self.timeKDTree copyWithZone: zone];
	copyDebug.timeSeriesProcessing = [self.timeSeriesProcessing copyWithZone: zone];
	copyDebug.timeBufferCopy = [self.timeBufferCopy copyWithZone: zone];
	copyDebug.timeSetup = [self.timeSetup copyWithZone: zone];
	copyDebug.timeRendering = [self.timeRendering copyWithZone: zone];
	copyDebug.showSkipSummary = [self.showSkipSummary copyWithZone: zone];
	return copyDebug;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.timeKDTree) {
		params[@"timeKDTree"] = self.timeKDTree;
	}
	if (self.timeSeriesProcessing) {
		params[@"timeSeriesProcessing"] = self.timeSeriesProcessing;
	}
	if (self.timeBufferCopy) {
		params[@"timeBufferCopy"] = self.timeBufferCopy;
	}
	if (self.timeSetup) {
		params[@"timeSetup"] = self.timeSetup;
	}
	if (self.timeRendering) {
		params[@"timeRendering"] = self.timeRendering;
	}
	if (self.showSkipSummary) {
		params[@"showSkipSummary"] = self.showSkipSummary;
	}
	return params;
}

# pragma mark - Setters

-(void)setTimeKDTree:(NSNumber *)timeKDTree {
	_timeKDTree = timeKDTree;
	[self updateNSObject:@"timeKDTree"];
}

-(void)setTimeSeriesProcessing:(NSNumber *)timeSeriesProcessing {
	_timeSeriesProcessing = timeSeriesProcessing;
	[self updateNSObject:@"timeSeriesProcessing"];
}

-(void)setTimeBufferCopy:(NSNumber *)timeBufferCopy {
	_timeBufferCopy = timeBufferCopy;
	[self updateNSObject:@"timeBufferCopy"];
}

-(void)setTimeSetup:(NSNumber *)timeSetup {
	_timeSetup = timeSetup;
	[self updateNSObject:@"timeSetup"];
}

-(void)setTimeRendering:(NSNumber *)timeRendering {
	_timeRendering = timeRendering;
	[self updateNSObject:@"timeRendering"];
}

-(void)setShowSkipSummary:(NSNumber *)showSkipSummary {
	_showSkipSummary = showSkipSummary;
	[self updateNSObject:@"showSkipSummary"];
}

@end