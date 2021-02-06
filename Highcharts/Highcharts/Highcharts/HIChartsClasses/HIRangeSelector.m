#import "HIChartsJSONSerializableSubclass.h"
#import "HIRangeSelector.h"

@implementation HIRangeSelector

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIRangeSelector *copyRangeSelector = [[HIRangeSelector allocWithZone: zone] init];
	copyRangeSelector.dropdownLabel = [self.dropdownLabel copyWithZone: zone];
	copyRangeSelector.maxInputLabel = [self.maxInputLabel copyWithZone: zone];
	copyRangeSelector.clickButtonAnnouncement = [self.clickButtonAnnouncement copyWithZone: zone];
	copyRangeSelector.minInputLabel = [self.minInputLabel copyWithZone: zone];
	return copyRangeSelector;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.dropdownLabel) {
		params[@"dropdownLabel"] = self.dropdownLabel;
	}
	if (self.maxInputLabel) {
		params[@"maxInputLabel"] = self.maxInputLabel;
	}
	if (self.clickButtonAnnouncement) {
		params[@"clickButtonAnnouncement"] = self.clickButtonAnnouncement;
	}
	if (self.minInputLabel) {
		params[@"minInputLabel"] = self.minInputLabel;
	}
	return params;
}

# pragma mark - Setters

-(void)setDropdownLabel:(NSString *)dropdownLabel {
	NSString *oldValue = _dropdownLabel;
	_dropdownLabel = dropdownLabel;
	[self updateNSObject:oldValue newValue:dropdownLabel propertyName:@"dropdownLabel"];
}

-(void)setMaxInputLabel:(NSString *)maxInputLabel {
	NSString *oldValue = _maxInputLabel;
	_maxInputLabel = maxInputLabel;
	[self updateNSObject:oldValue newValue:maxInputLabel propertyName:@"maxInputLabel"];
}

-(void)setClickButtonAnnouncement:(NSString *)clickButtonAnnouncement {
	NSString *oldValue = _clickButtonAnnouncement;
	_clickButtonAnnouncement = clickButtonAnnouncement;
	[self updateNSObject:oldValue newValue:clickButtonAnnouncement propertyName:@"clickButtonAnnouncement"];
}

-(void)setMinInputLabel:(NSString *)minInputLabel {
	NSString *oldValue = _minInputLabel;
	_minInputLabel = minInputLabel;
	[self updateNSObject:oldValue newValue:minInputLabel propertyName:@"minInputLabel"];
}

@end