#import "HIChartsJSONSerializableSubclass.h"
#import "HIContextTracks.h"

@implementation HIContextTracks

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIContextTracks *copyContextTracks = [[HIContextTracks allocWithZone: zone] init];
	copyContextTracks.timeInterval = [self.timeInterval copyWithZone: zone];
	copyContextTracks.valueInterval = [self.valueInterval copyWithZone: zone];
	copyContextTracks.valueMapFunction = [self.valueMapFunction copyWithZone: zone];
	copyContextTracks.valueProp = [self.valueProp copyWithZone: zone];
	copyContextTracks.mapping = [self.mapping copyWithZone: zone];
	copyContextTracks.showPlayMarker = [self.showPlayMarker copyWithZone: zone];
	copyContextTracks.type = [self.type copyWithZone: zone];
	copyContextTracks.roundToMusicalNotes = [self.roundToMusicalNotes copyWithZone: zone];
	copyContextTracks.pointGrouping = [self.pointGrouping copyWithZone: zone];
	copyContextTracks.instrument = [self.instrument copyWithZone: zone];
	copyContextTracks.activeWhen = [self.activeWhen copyWithZone: zone];
	copyContextTracks.midiName = [self.midiName copyWithZone: zone];
	return copyContextTracks;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.timeInterval) {
		params[@"timeInterval"] = self.timeInterval;
	}
	if (self.valueInterval) {
		params[@"valueInterval"] = self.valueInterval;
	}
	if (self.valueMapFunction) {
		params[@"valueMapFunction"] = self.valueMapFunction;
	}
	if (self.valueProp) {
		params[@"valueProp"] = self.valueProp;
	}
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

-(void)setTimeInterval:(NSNumber *)timeInterval {
	NSNumber *oldValue = _timeInterval;
	_timeInterval = timeInterval;
	[self updateNSObject:oldValue newValue:timeInterval propertyName:@"timeInterval"];
}

-(void)setValueInterval:(NSNumber *)valueInterval {
	NSNumber *oldValue = _valueInterval;
	_valueInterval = valueInterval;
	[self updateNSObject:oldValue newValue:valueInterval propertyName:@"valueInterval"];
}

-(void)setValueMapFunction:(NSString *)valueMapFunction {
	NSString *oldValue = _valueMapFunction;
	_valueMapFunction = valueMapFunction;
	[self updateNSObject:oldValue newValue:valueMapFunction propertyName:@"valueMapFunction"];
}

-(void)setValueProp:(NSString *)valueProp {
	NSString *oldValue = _valueProp;
	_valueProp = valueProp;
	[self updateNSObject:oldValue newValue:valueProp propertyName:@"valueProp"];
}

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