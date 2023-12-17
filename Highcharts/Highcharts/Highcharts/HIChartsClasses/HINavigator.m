#import "HIChartsJSONSerializableSubclass.h"
#import "HINavigator.h"

@implementation HINavigator

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HINavigator *copyNavigator = [[HINavigator allocWithZone: zone] init];
	copyNavigator.groupLabel = [self.groupLabel copyWithZone: zone];
	copyNavigator.handleLabel = [self.handleLabel copyWithZone: zone];
	copyNavigator.changeAnnouncement = [self.changeAnnouncement copyWithZone: zone];
	return copyNavigator;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.groupLabel) {
		params[@"groupLabel"] = self.groupLabel;
	}
	if (self.handleLabel) {
		params[@"handleLabel"] = self.handleLabel;
	}
	if (self.changeAnnouncement) {
		params[@"changeAnnouncement"] = self.changeAnnouncement;
	}
	return params;
}

# pragma mark - Setters

-(void)setGroupLabel:(NSString *)groupLabel {
	NSString *oldValue = _groupLabel;
	_groupLabel = groupLabel;
	[self updateNSObject:oldValue newValue:groupLabel propertyName:@"groupLabel"];
}

-(void)setHandleLabel:(NSString *)handleLabel {
	NSString *oldValue = _handleLabel;
	_handleLabel = handleLabel;
	[self updateNSObject:oldValue newValue:handleLabel propertyName:@"handleLabel"];
}

-(void)setChangeAnnouncement:(NSString *)changeAnnouncement {
	NSString *oldValue = _changeAnnouncement;
	_changeAnnouncement = changeAnnouncement;
	[self updateNSObject:oldValue newValue:changeAnnouncement propertyName:@"changeAnnouncement"];
}

@end