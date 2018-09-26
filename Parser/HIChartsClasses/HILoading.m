#import "HIChartsJSONSerializableSubclass.h"
#import "HILoading.h"

@implementation HILoading

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HILoading *copyLoading = [[HILoading allocWithZone: zone] init];
	copyLoading.style = [self.style copyWithZone: zone];
	copyLoading.labelStyle = [self.labelStyle copyWithZone: zone];
	copyLoading.hideDuration = [self.hideDuration copyWithZone: zone];
	copyLoading.showDuration = [self.showDuration copyWithZone: zone];
	return copyLoading;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.labelStyle) {
		params[@"labelStyle"] = self.labelStyle;
	}
	if (self.hideDuration) {
		params[@"hideDuration"] = self.hideDuration;
	}
	if (self.showDuration) {
		params[@"showDuration"] = self.showDuration;
	}
	return params;
}

# pragma mark - Setters

-(void)setStyle:(NSDictionary *)style {
	_style = style;
	[self updateNSObject:@"style"];
}

-(void)setLabelStyle:(NSDictionary *)labelStyle {
	_labelStyle = labelStyle;
	[self updateNSObject:@"labelStyle"];
}

-(void)setHideDuration:(NSNumber *)hideDuration {
	_hideDuration = hideDuration;
	[self updateNSObject:@"hideDuration"];
}

-(void)setShowDuration:(NSNumber *)showDuration {
	_showDuration = showDuration;
	[self updateNSObject:@"showDuration"];
}

@end