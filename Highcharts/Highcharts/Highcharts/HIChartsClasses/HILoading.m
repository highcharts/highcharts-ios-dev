#import "HIChartsJSONSerializableSubclass.h"
#import "HILoading.h"

@implementation HILoading

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.labelStyle) {
		params[@"labelStyle"] = [self.labelStyle getParams];
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
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

-(void)setLabelStyle:(HILabelStyle *)labelStyle {
	HILabelStyle *oldValue = _labelStyle;
	if(self.labelStyle) {
		[self removeObserver:self forKeyPath:@"labelStyle.isUpdated"];
	}
	_labelStyle = labelStyle;
	[self updateHIObject:oldValue newValue:labelStyle propertyName:@"labelStyle"];
}

-(void)setStyle:(HIStyle *)style {
	HIStyle *oldValue = _style;
	if(self.style) {
		[self removeObserver:self forKeyPath:@"style.isUpdated"];
	}
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
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