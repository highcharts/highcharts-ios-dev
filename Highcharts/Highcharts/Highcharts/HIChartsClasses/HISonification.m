#import "HIChartsJSONSerializableSubclass.h"
#import "HISonification.h"

@implementation HISonification

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISonification *copySonification = [[HISonification allocWithZone: zone] init];
	copySonification.playAsSoundClickAnnouncement = [self.playAsSoundClickAnnouncement copyWithZone: zone];
	copySonification.playAsSoundButtonText = [self.playAsSoundButtonText copyWithZone: zone];
	return copySonification;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.playAsSoundClickAnnouncement) {
		params[@"playAsSoundClickAnnouncement"] = self.playAsSoundClickAnnouncement;
	}
	if (self.playAsSoundButtonText) {
		params[@"playAsSoundButtonText"] = self.playAsSoundButtonText;
	}
	return params;
}

# pragma mark - Setters

-(void)setPlayAsSoundClickAnnouncement:(NSString *)playAsSoundClickAnnouncement {
	NSString *oldValue = _playAsSoundClickAnnouncement;
	_playAsSoundClickAnnouncement = playAsSoundClickAnnouncement;
	[self updateNSObject:oldValue newValue:playAsSoundClickAnnouncement propertyName:@"playAsSoundClickAnnouncement"];
}

-(void)setPlayAsSoundButtonText:(NSString *)playAsSoundButtonText {
	NSString *oldValue = _playAsSoundButtonText;
	_playAsSoundButtonText = playAsSoundButtonText;
	[self updateNSObject:oldValue newValue:playAsSoundButtonText propertyName:@"playAsSoundButtonText"];
}

@end