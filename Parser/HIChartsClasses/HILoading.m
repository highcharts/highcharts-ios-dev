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
		params[@"style"] = [self.style getParams];
	}
	if (self.labelStyle) {
		params[@"labelStyle"] = [self.labelStyle getParams];
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

-(void)setStyle:(HICSSObject *)style {
	HICSSObject *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setLabelStyle:(HICSSObject *)labelStyle {
	HICSSObject *oldValue = _labelStyle;
	_labelStyle = labelStyle;
	[self updateHIObject:oldValue newValue:labelStyle propertyName:@"labelStyle"];
}

-(void)setHideDuration:(NSNumber *)hideDuration {
	NSNumber *oldValue = _hideDuration;
	_hideDuration = hideDuration;
	[self updateNSObject:oldValue newValue:hideDuration propertyName:@"hideDuration"];
}

-(void)setShowDuration:(NSNumber *)showDuration {
	NSNumber *oldValue = _showDuration;
	_showDuration = showDuration;
	[self updateNSObject:oldValue newValue:showDuration propertyName:@"showDuration"];
}

@end