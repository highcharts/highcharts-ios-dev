#import "HIChartsJSONSerializableSubclass.h"
#import "HIDebug.h"

@implementation HIDebug

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
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
	NSNumber *oldValue = _timeKDTree;
	_timeKDTree = timeKDTree;
	[self updateNSObject:oldValue newValue:timeKDTree propertyName:@"timeKDTree"];
}

-(void)setTimeSeriesProcessing:(NSNumber *)timeSeriesProcessing {
	NSNumber *oldValue = _timeSeriesProcessing;
	_timeSeriesProcessing = timeSeriesProcessing;
	[self updateNSObject:oldValue newValue:timeSeriesProcessing propertyName:@"timeSeriesProcessing"];
}

-(void)setTimeBufferCopy:(NSNumber *)timeBufferCopy {
	NSNumber *oldValue = _timeBufferCopy;
	_timeBufferCopy = timeBufferCopy;
	[self updateNSObject:oldValue newValue:timeBufferCopy propertyName:@"timeBufferCopy"];
}

-(void)setTimeSetup:(NSNumber *)timeSetup {
	NSNumber *oldValue = _timeSetup;
	_timeSetup = timeSetup;
	[self updateNSObject:oldValue newValue:timeSetup propertyName:@"timeSetup"];
}

-(void)setTimeRendering:(NSNumber *)timeRendering {
	NSNumber *oldValue = _timeRendering;
	_timeRendering = timeRendering;
	[self updateNSObject:oldValue newValue:timeRendering propertyName:@"timeRendering"];
}

-(void)setShowSkipSummary:(NSNumber *)showSkipSummary {
	NSNumber *oldValue = _showSkipSummary;
	_showSkipSummary = showSkipSummary;
	[self updateNSObject:oldValue newValue:showSkipSummary propertyName:@"showSkipSummary"];
}

@end