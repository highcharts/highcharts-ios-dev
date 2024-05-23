#import "HIChartsJSONSerializableSubclass.h"
#import "HIDefaultSpeechOptions.h"

@implementation HIDefaultSpeechOptions

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDefaultSpeechOptions *copyDefaultSpeechOptions = [[HIDefaultSpeechOptions allocWithZone: zone] init];
	copyDefaultSpeechOptions.pointGrouping = [self.pointGrouping copyWithZone: zone];
	copyDefaultSpeechOptions.type = [self.type copyWithZone: zone];
	copyDefaultSpeechOptions.mapping = [self.mapping copyWithZone: zone];
	copyDefaultSpeechOptions.language = [self.language copyWithZone: zone];
	copyDefaultSpeechOptions.preferredVoice = [self.preferredVoice copyWithZone: zone];
	copyDefaultSpeechOptions.showPlayMarker = [self.showPlayMarker copyWithZone: zone];
	copyDefaultSpeechOptions.activeWhen = [self.activeWhen copyWithZone: zone];
	return copyDefaultSpeechOptions;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.pointGrouping) {
		params[@"pointGrouping"] = [self.pointGrouping getParams];
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.mapping) {
		params[@"mapping"] = [self.mapping getParams];
	}
	if (self.language) {
		params[@"language"] = self.language;
	}
	if (self.preferredVoice) {
		params[@"preferredVoice"] = self.preferredVoice;
	}
	if (self.showPlayMarker) {
		params[@"showPlayMarker"] = self.showPlayMarker;
	}
	if (self.activeWhen) {
		params[@"activeWhen"] = [self.activeWhen getFunction];
	}
	return params;
}

# pragma mark - Setters

-(void)setPointGrouping:(HIPointGrouping *)pointGrouping {
	HIPointGrouping *oldValue = _pointGrouping;
	_pointGrouping = pointGrouping;
	[self updateHIObject:oldValue newValue:pointGrouping propertyName:@"pointGrouping"];
}

-(void)setType:(NSString *)type {
	NSString *oldValue = _type;
	_type = type;
	[self updateNSObject:oldValue newValue:type propertyName:@"type"];
}

-(void)setMapping:(HIMapping *)mapping {
	HIMapping *oldValue = _mapping;
	_mapping = mapping;
	[self updateHIObject:oldValue newValue:mapping propertyName:@"mapping"];
}

-(void)setLanguage:(NSString *)language {
	NSString *oldValue = _language;
	_language = language;
	[self updateNSObject:oldValue newValue:language propertyName:@"language"];
}

-(void)setPreferredVoice:(NSString *)preferredVoice {
	NSString *oldValue = _preferredVoice;
	_preferredVoice = preferredVoice;
	[self updateNSObject:oldValue newValue:preferredVoice propertyName:@"preferredVoice"];
}

-(void)setShowPlayMarker:(NSNumber *)showPlayMarker {
	NSNumber *oldValue = _showPlayMarker;
	_showPlayMarker = showPlayMarker;
	[self updateNSObject:oldValue newValue:showPlayMarker propertyName:@"showPlayMarker"];
}

-(void)setActiveWhen:(HIFunction *)activeWhen {
	HIFunction *oldValue = _activeWhen;
	_activeWhen = activeWhen;
	[self updateHIObject:oldValue newValue:activeWhen propertyName:@"activeWhen"];
}

@end