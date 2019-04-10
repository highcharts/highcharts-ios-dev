#import "HIChartsJSONSerializableSubclass.h"
#import "HIAnnounceNewData.h"

@implementation HIAnnounceNewData

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIAnnounceNewData *copyAnnounceNewData = [[HIAnnounceNewData allocWithZone: zone] init];
	copyAnnounceNewData.newDataAnnounce = [self.newDataAnnounce copyWithZone: zone];
	copyAnnounceNewData.newSeriesAnnounceMultiple = [self.newSeriesAnnounceMultiple copyWithZone: zone];
	copyAnnounceNewData.newSeriesAnnounceSingle = [self.newSeriesAnnounceSingle copyWithZone: zone];
	copyAnnounceNewData.newPointAnnounceMultiple = [self.newPointAnnounceMultiple copyWithZone: zone];
	copyAnnounceNewData.newPointAnnounceSingle = [self.newPointAnnounceSingle copyWithZone: zone];
	copyAnnounceNewData.enabled = [self.enabled copyWithZone: zone];
	copyAnnounceNewData.announcementFormatter = [self.announcementFormatter copyWithZone: zone];
	copyAnnounceNewData.interruptUser = [self.interruptUser copyWithZone: zone];
	copyAnnounceNewData.minAnnounceInterval = [self.minAnnounceInterval copyWithZone: zone];
	return copyAnnounceNewData;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.newDataAnnounce) {
		params[@"newDataAnnounce"] = self.newDataAnnounce;
	}
	if (self.newSeriesAnnounceMultiple) {
		params[@"newSeriesAnnounceMultiple"] = self.newSeriesAnnounceMultiple;
	}
	if (self.newSeriesAnnounceSingle) {
		params[@"newSeriesAnnounceSingle"] = self.newSeriesAnnounceSingle;
	}
	if (self.newPointAnnounceMultiple) {
		params[@"newPointAnnounceMultiple"] = self.newPointAnnounceMultiple;
	}
	if (self.newPointAnnounceSingle) {
		params[@"newPointAnnounceSingle"] = self.newPointAnnounceSingle;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.announcementFormatter) {
		params[@"announcementFormatter"] = [self.announcementFormatter getFunction];
	}
	if (self.interruptUser) {
		params[@"interruptUser"] = self.interruptUser;
	}
	if (self.minAnnounceInterval) {
		params[@"minAnnounceInterval"] = self.minAnnounceInterval;
	}
	return params;
}

# pragma mark - Setters

-(void)setNewDataAnnounce:(NSString *)newDataAnnounce {
	NSString *oldValue = _newDataAnnounce;
	_newDataAnnounce = newDataAnnounce;
	[self updateNSObject:oldValue newValue:newDataAnnounce propertyName:@"newDataAnnounce"];
}

-(void)setNewSeriesAnnounceMultiple:(NSString *)newSeriesAnnounceMultiple {
	NSString *oldValue = _newSeriesAnnounceMultiple;
	_newSeriesAnnounceMultiple = newSeriesAnnounceMultiple;
	[self updateNSObject:oldValue newValue:newSeriesAnnounceMultiple propertyName:@"newSeriesAnnounceMultiple"];
}

-(void)setNewSeriesAnnounceSingle:(NSString *)newSeriesAnnounceSingle {
	NSString *oldValue = _newSeriesAnnounceSingle;
	_newSeriesAnnounceSingle = newSeriesAnnounceSingle;
	[self updateNSObject:oldValue newValue:newSeriesAnnounceSingle propertyName:@"newSeriesAnnounceSingle"];
}

-(void)setNewPointAnnounceMultiple:(NSString *)newPointAnnounceMultiple {
	NSString *oldValue = _newPointAnnounceMultiple;
	_newPointAnnounceMultiple = newPointAnnounceMultiple;
	[self updateNSObject:oldValue newValue:newPointAnnounceMultiple propertyName:@"newPointAnnounceMultiple"];
}

-(void)setNewPointAnnounceSingle:(NSString *)newPointAnnounceSingle {
	NSString *oldValue = _newPointAnnounceSingle;
	_newPointAnnounceSingle = newPointAnnounceSingle;
	[self updateNSObject:oldValue newValue:newPointAnnounceSingle propertyName:@"newPointAnnounceSingle"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setAnnouncementFormatter:(HIFunction *)announcementFormatter {
	HIFunction *oldValue = _announcementFormatter;
	_announcementFormatter = announcementFormatter;
	[self updateHIObject:oldValue newValue:announcementFormatter propertyName:@"announcementFormatter"];
}

-(void)setInterruptUser:(NSNumber *)interruptUser {
	NSNumber *oldValue = _interruptUser;
	_interruptUser = interruptUser;
	[self updateNSObject:oldValue newValue:interruptUser propertyName:@"interruptUser"];
}

-(void)setMinAnnounceInterval:(NSNumber *)minAnnounceInterval {
	NSNumber *oldValue = _minAnnounceInterval;
	_minAnnounceInterval = minAnnounceInterval;
	[self updateNSObject:oldValue newValue:minAnnounceInterval propertyName:@"minAnnounceInterval"];
}

@end