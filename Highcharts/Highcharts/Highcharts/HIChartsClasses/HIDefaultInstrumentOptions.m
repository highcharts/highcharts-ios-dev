#import "HIChartsJSONSerializableSubclass.h"
#import "HIDefaultInstrumentOptions.h"

@implementation HIDefaultInstrumentOptions

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDefaultInstrumentOptions *copyDefaultInstrumentOptions = [[HIDefaultInstrumentOptions allocWithZone: zone] init];
	copyDefaultInstrumentOptions.showPlayMarker = [self.showPlayMarker copyWithZone: zone];
	copyDefaultInstrumentOptions.type = [self.type copyWithZone: zone];
	copyDefaultInstrumentOptions.mapping = [self.mapping copyWithZone: zone];
	copyDefaultInstrumentOptions.roundToMusicalNotes = [self.roundToMusicalNotes copyWithZone: zone];
	copyDefaultInstrumentOptions.pointGrouping = [self.pointGrouping copyWithZone: zone];
	copyDefaultInstrumentOptions.instrument = [self.instrument copyWithZone: zone];
	copyDefaultInstrumentOptions.activeWhen = [self.activeWhen copyWithZone: zone];
	copyDefaultInstrumentOptions.midiName = [self.midiName copyWithZone: zone];
	return copyDefaultInstrumentOptions;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.showPlayMarker) {
		params[@"showPlayMarker"] = self.showPlayMarker;
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.mapping) {
		params[@"mapping"] = [self.mapping getParams];
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
		params[@"activeWhen"] = [self.activeWhen getFunction];
	}
	if (self.midiName) {
		params[@"midiName"] = self.midiName;
	}
	return params;
}

# pragma mark - Setters

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

-(void)setMapping:(HIMapping *)mapping {
	HIMapping *oldValue = _mapping;
	_mapping = mapping;
	[self updateHIObject:oldValue newValue:mapping propertyName:@"mapping"];
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

-(void)setActiveWhen:(HIFunction *)activeWhen {
	HIFunction *oldValue = _activeWhen;
	_activeWhen = activeWhen;
	[self updateHIObject:oldValue newValue:activeWhen propertyName:@"activeWhen"];
}

-(void)setMidiName:(NSString *)midiName {
	NSString *oldValue = _midiName;
	_midiName = midiName;
	[self updateNSObject:oldValue newValue:midiName propertyName:@"midiName"];
}

@end