#import "HIChartsJSONSerializableSubclass.h"
#import "HIAnnounceNewData.h"

@implementation HIAnnounceNewData

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIAnnounceNewData *copyAnnounceNewData = [[HIAnnounceNewData allocWithZone: zone] init];
	copyAnnounceNewData.dataAnnounce = [self.dataAnnounce copyWithZone: zone];
	copyAnnounceNewData.seriesAnnounceMultiple = [self.seriesAnnounceMultiple copyWithZone: zone];
	copyAnnounceNewData.seriesAnnounceSingle = [self.seriesAnnounceSingle copyWithZone: zone];
	copyAnnounceNewData.pointAnnounceMultiple = [self.pointAnnounceMultiple copyWithZone: zone];
	copyAnnounceNewData.pointAnnounceSingle = [self.pointAnnounceSingle copyWithZone: zone];
	copyAnnounceNewData.enabled = [self.enabled copyWithZone: zone];
	copyAnnounceNewData.announcementFormatter = [self.announcementFormatter copyWithZone: zone];
	copyAnnounceNewData.interruptUser = [self.interruptUser copyWithZone: zone];
	copyAnnounceNewData.minAnnounceInterval = [self.minAnnounceInterval copyWithZone: zone];
	return copyAnnounceNewData;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.dataAnnounce) {
		params[@"newDataAnnounce"] = self.dataAnnounce;
	}
	if (self.seriesAnnounceMultiple) {
		params[@"newSeriesAnnounceMultiple"] = self.seriesAnnounceMultiple;
	}
	if (self.seriesAnnounceSingle) {
		params[@"newSeriesAnnounceSingle"] = self.seriesAnnounceSingle;
	}
	if (self.pointAnnounceMultiple) {
		params[@"newPointAnnounceMultiple"] = self.pointAnnounceMultiple;
	}
	if (self.pointAnnounceSingle) {
		params[@"newPointAnnounceSingle"] = self.pointAnnounceSingle;
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

-(void)setDataAnnounce:(NSString *)dataAnnounce {
	NSString *oldValue = _dataAnnounce;
	_dataAnnounce = dataAnnounce;
	[self updateNSObject:oldValue newValue:dataAnnounce propertyName:@"dataAnnounce"];
}

-(void)setSeriesAnnounceMultiple:(NSString *)seriesAnnounceMultiple {
	NSString *oldValue = _seriesAnnounceMultiple;
	_seriesAnnounceMultiple = seriesAnnounceMultiple;
	[self updateNSObject:oldValue newValue:seriesAnnounceMultiple propertyName:@"seriesAnnounceMultiple"];
}

-(void)setSeriesAnnounceSingle:(NSString *)seriesAnnounceSingle {
	NSString *oldValue = _seriesAnnounceSingle;
	_seriesAnnounceSingle = seriesAnnounceSingle;
	[self updateNSObject:oldValue newValue:seriesAnnounceSingle propertyName:@"seriesAnnounceSingle"];
}

-(void)setPointAnnounceMultiple:(NSString *)pointAnnounceMultiple {
	NSString *oldValue = pointAnnounceMultiple;
	_pointAnnounceMultiple = pointAnnounceMultiple;
	[self updateNSObject:oldValue newValue:pointAnnounceMultiple propertyName:@"pointAnnounceMultiple"];
}

-(void)setPointAnnounceSingle:(NSString *)pointAnnounceSingle {
	NSString *oldValue = pointAnnounceSingle;
	_pointAnnounceSingle = pointAnnounceSingle;
	[self updateNSObject:oldValue newValue:pointAnnounceSingle propertyName:@"pointAnnounceSingle"];
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
