#import "HIChartsJSONSerializableSubclass.h"
#import "HITracks.h"

@implementation HITracks

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HITracks *copyTracks = [[HITracks allocWithZone: zone] init];
	copyTracks.mapping = [self.mapping copyWithZone: zone];
	copyTracks.showPlayMarker = [self.showPlayMarker copyWithZone: zone];
	copyTracks.type = [self.type copyWithZone: zone];
	copyTracks.roundToMusicalNotes = [self.roundToMusicalNotes copyWithZone: zone];
	copyTracks.pointGrouping = [self.pointGrouping copyWithZone: zone];
	copyTracks.instrument = [self.instrument copyWithZone: zone];
	copyTracks.activeWhen = [self.activeWhen copyWithZone: zone];
	copyTracks.midiName = [self.midiName copyWithZone: zone];
	return copyTracks;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.mapping) {
		params[@"mapping"] = [self.mapping getParams];
	}
	if (self.showPlayMarker) {
		params[@"showPlayMarker"] = self.showPlayMarker;
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.roundToMusicalNotes) {
		params[@"roundToMusicalNotes"] = self.roundToMusicalNotes;
	}
	if (self.pointGrouping) {
		params[@"pointGrouping"] = [self.pointGrouping getParams];
	}
	if (self.instrument) {
		params[@"instrument"] = [self.instrument getParams];
	}
	if (self.activeWhen) {
		params[@"activeWhen"] = [self.activeWhen getParams];
	}
	if (self.midiName) {
		params[@"midiName"] = self.midiName;
	}
	return params;
}

# pragma mark - Setters

-(void)setMapping:(HIMapping *)mapping {
	HIMapping *oldValue = _mapping;
	_mapping = mapping;
	[self updateHIObject:oldValue newValue:mapping propertyName:@"mapping"];
}

-(void)setShowPlayMarker:(NSNumber *)showPlayMarker {
	NSNumber *oldValue = _showPlayMarker;
	_showPlayMarker = showPlayMarker;
	[self updateNSObject:oldValue newValue:showPlayMarker propertyName:@"showPlayMarker"];
}

-(void)setType:(NSString *)type {
	NSString *oldValue = _type;
	_type = type;
	[self updateNSObject:oldValue newValue:type propertyName:@"type"];
}

-(void)setRoundToMusicalNotes:(NSNumber *)roundToMusicalNotes {
	NSNumber *oldValue = _roundToMusicalNotes;
	_roundToMusicalNotes = roundToMusicalNotes;
	[self updateNSObject:oldValue newValue:roundToMusicalNotes propertyName:@"roundToMusicalNotes"];
}

-(void)setPointGrouping:(HIPointGrouping *)pointGrouping {
	HIPointGrouping *oldValue = _pointGrouping;
	_pointGrouping = pointGrouping;
	[self updateHIObject:oldValue newValue:pointGrouping propertyName:@"pointGrouping"];
}

-(void)setInstrument:(HISynthPatchOptionsObject *)instrument {
	HISynthPatchOptionsObject *oldValue = _instrument;
	_instrument = instrument;
	[self updateHIObject:oldValue newValue:instrument propertyName:@"instrument"];
}

-(void)setActiveWhen:(HIActiveWhen *)activeWhen {
	HIActiveWhen *oldValue = _activeWhen;
	_activeWhen = activeWhen;
	[self updateHIObject:oldValue newValue:activeWhen propertyName:@"activeWhen"];
}

-(void)setMidiName:(NSString *)midiName {
	NSString *oldValue = _midiName;
	_midiName = midiName;
	[self updateNSObject:oldValue newValue:midiName propertyName:@"midiName"];
}

@end