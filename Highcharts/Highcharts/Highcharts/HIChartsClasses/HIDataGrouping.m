#import "HIChartsJSONSerializableSubclass.h"
#import "HIDataGrouping.h"

@implementation HIDataGrouping

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDataGrouping *copyDataGrouping = [[HIDataGrouping allocWithZone: zone] init];
	copyDataGrouping.approximation = [self.approximation copyWithZone: zone];
	copyDataGrouping.enabled = [self.enabled copyWithZone: zone];
	copyDataGrouping.groupPixelWidth = [self.groupPixelWidth copyWithZone: zone];
	return copyDataGrouping;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.approximation) {
		params[@"approximation"] = self.approximation;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.groupPixelWidth) {
		params[@"groupPixelWidth"] = self.groupPixelWidth;
	}
	return params;
}

# pragma mark - Setters

-(void)setApproximation:(NSString *)approximation {
	NSString *oldValue = _approximation;
	_approximation = approximation;
	[self updateNSObject:oldValue newValue:approximation propertyName:@"approximation"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setGroupPixelWidth:(NSNumber *)groupPixelWidth {
	NSNumber *oldValue = _groupPixelWidth;
	_groupPixelWidth = groupPixelWidth;
	[self updateNSObject:oldValue newValue:groupPixelWidth propertyName:@"groupPixelWidth"];
}

@end