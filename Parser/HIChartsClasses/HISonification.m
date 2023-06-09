#import "HIChartsJSONSerializableSubclass.h"
#import "HISonification.h"

@implementation HISonification

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISonification *copySonification = [[HISonification allocWithZone: zone] init];
	copySonification.showCrosshair = [self.showCrosshair copyWithZone: zone];
	copySonification.afterSeriesWait = [self.afterSeriesWait copyWithZone: zone];
	copySonification.masterVolume = [self.masterVolume copyWithZone: zone];
	copySonification.showTooltip = [self.showTooltip copyWithZone: zone];
	copySonification.defaultInstrumentOptions = [self.defaultInstrumentOptions copyWithZone: zone];
	copySonification.enabled = [self.enabled copyWithZone: zone];
	copySonification.globalContextTracks = [self.globalContextTracks copyWithZone: zone];
	copySonification.events = [self.events copyWithZone: zone];
	copySonification.pointGrouping = [self.pointGrouping copyWithZone: zone];
	copySonification.duration = [self.duration copyWithZone: zone];
	copySonification.globalTracks = [self.globalTracks copyWithZone: zone];
	copySonification.updateInterval = [self.updateInterval copyWithZone: zone];
	copySonification.order = [self.order copyWithZone: zone];
	copySonification.defaultSpeechOptions = [self.defaultSpeechOptions copyWithZone: zone];
	copySonification.playAsSoundClickAnnouncement = [self.playAsSoundClickAnnouncement copyWithZone: zone];
	copySonification.playAsSoundButtonText = [self.playAsSoundButtonText copyWithZone: zone];
	copySonification.tracks = [self.tracks copyWithZone: zone];
	copySonification.contextTracks = [self.contextTracks copyWithZone: zone];
	return copySonification;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.showCrosshair) {
		params[@"showCrosshair"] = self.showCrosshair;
	}
	if (self.afterSeriesWait) {
		params[@"afterSeriesWait"] = self.afterSeriesWait;
	}
	if (self.masterVolume) {
		params[@"masterVolume"] = self.masterVolume;
	}
	if (self.showTooltip) {
		params[@"showTooltip"] = self.showTooltip;
	}
	if (self.defaultInstrumentOptions) {
		params[@"defaultInstrumentOptions"] = [self.defaultInstrumentOptions getParams];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.globalContextTracks) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.globalContextTracks) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"globalContextTracks"] = array;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.pointGrouping) {
		params[@"pointGrouping"] = [self.pointGrouping getParams];
	}
	if (self.duration) {
		params[@"duration"] = self.duration;
	}
	if (self.globalTracks) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.globalTracks) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"globalTracks"] = array;
	}
	if (self.updateInterval) {
		params[@"updateInterval"] = self.updateInterval;
	}
	if (self.order) {
		params[@"order"] = self.order;
	}
	if (self.defaultSpeechOptions) {
		params[@"defaultSpeechOptions"] = [self.defaultSpeechOptions getParams];
	}
	if (self.playAsSoundClickAnnouncement) {
		params[@"playAsSoundClickAnnouncement"] = self.playAsSoundClickAnnouncement;
	}
	if (self.playAsSoundButtonText) {
		params[@"playAsSoundButtonText"] = self.playAsSoundButtonText;
	}
	if (self.tracks) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.tracks) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"tracks"] = array;
	}
	if (self.contextTracks) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.contextTracks) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"contextTracks"] = array;
	}
	return params;
}

# pragma mark - Setters

-(void)setShowCrosshair:(NSNumber *)showCrosshair {
	NSNumber *oldValue = _showCrosshair;
	_showCrosshair = showCrosshair;
	[self updateNSObject:oldValue newValue:showCrosshair propertyName:@"showCrosshair"];
}

-(void)setAfterSeriesWait:(NSNumber *)afterSeriesWait {
	NSNumber *oldValue = _afterSeriesWait;
	_afterSeriesWait = afterSeriesWait;
	[self updateNSObject:oldValue newValue:afterSeriesWait propertyName:@"afterSeriesWait"];
}

-(void)setMasterVolume:(NSNumber *)masterVolume {
	NSNumber *oldValue = _masterVolume;
	_masterVolume = masterVolume;
	[self updateNSObject:oldValue newValue:masterVolume propertyName:@"masterVolume"];
}

-(void)setShowTooltip:(NSNumber *)showTooltip {
	NSNumber *oldValue = _showTooltip;
	_showTooltip = showTooltip;
	[self updateNSObject:oldValue newValue:showTooltip propertyName:@"showTooltip"];
}

-(void)setDefaultInstrumentOptions:(HIDefaultInstrumentOptions *)defaultInstrumentOptions {
	HIDefaultInstrumentOptions *oldValue = _defaultInstrumentOptions;
	_defaultInstrumentOptions = defaultInstrumentOptions;
	[self updateHIObject:oldValue newValue:defaultInstrumentOptions propertyName:@"defaultInstrumentOptions"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setGlobalContextTracks:(NSArray <HIGlobalContextTracks *> *)globalContextTracks {
	NSArray <HIGlobalContextTracks *> *oldValue = _globalContextTracks;
	_globalContextTracks = globalContextTracks;
	[self updateArrayObject:oldValue newValue:globalContextTracks propertyName:@"globalContextTracks"];
}

-(void)setEvents:(HIEvents *)events {
	HIEvents *oldValue = _events;
	_events = events;
	[self updateHIObject:oldValue newValue:events propertyName:@"events"];
}

-(void)setPointGrouping:(HIPointGrouping *)pointGrouping {
	HIPointGrouping *oldValue = _pointGrouping;
	_pointGrouping = pointGrouping;
	[self updateHIObject:oldValue newValue:pointGrouping propertyName:@"pointGrouping"];
}

-(void)setDuration:(NSNumber *)duration {
	NSNumber *oldValue = _duration;
	_duration = duration;
	[self updateNSObject:oldValue newValue:duration propertyName:@"duration"];
}

-(void)setGlobalTracks:(NSArray <HIGlobalTracks *> *)globalTracks {
	NSArray <HIGlobalTracks *> *oldValue = _globalTracks;
	_globalTracks = globalTracks;
	[self updateArrayObject:oldValue newValue:globalTracks propertyName:@"globalTracks"];
}

-(void)setUpdateInterval:(NSNumber *)updateInterval {
	NSNumber *oldValue = _updateInterval;
	_updateInterval = updateInterval;
	[self updateNSObject:oldValue newValue:updateInterval propertyName:@"updateInterval"];
}

-(void)setOrder:(NSString *)order {
	NSString *oldValue = _order;
	_order = order;
	[self updateNSObject:oldValue newValue:order propertyName:@"order"];
}

-(void)setDefaultSpeechOptions:(HIDefaultSpeechOptions *)defaultSpeechOptions {
	HIDefaultSpeechOptions *oldValue = _defaultSpeechOptions;
	_defaultSpeechOptions = defaultSpeechOptions;
	[self updateHIObject:oldValue newValue:defaultSpeechOptions propertyName:@"defaultSpeechOptions"];
}

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

-(void)setTracks:(NSArray <HITracks *> *)tracks {
	NSArray <HITracks *> *oldValue = _tracks;
	_tracks = tracks;
	[self updateArrayObject:oldValue newValue:tracks propertyName:@"tracks"];
}

-(void)setContextTracks:(NSArray <HIContextTracks *> *)contextTracks {
	NSArray <HIContextTracks *> *oldValue = _contextTracks;
	_contextTracks = contextTracks;
	[self updateArrayObject:oldValue newValue:contextTracks propertyName:@"contextTracks"];
}

@end