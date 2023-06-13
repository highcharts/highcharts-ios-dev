#import "HIChartsJSONSerializableSubclass.h"
#import "HISynthPatchOptionsObject.h"

@implementation HISynthPatchOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISynthPatchOptionsObject *copySynthPatchOptionsObject = [[HISynthPatchOptionsObject allocWithZone: zone] init];
	copySynthPatchOptionsObject.eq = [self.eq copyWithZone: zone];
	copySynthPatchOptionsObject.masterAttackEnvelope = [self.masterAttackEnvelope copyWithZone: zone];
	copySynthPatchOptionsObject.masterReleaseEnvelope = [self.masterReleaseEnvelope copyWithZone: zone];
	copySynthPatchOptionsObject.masterVolume = [self.masterVolume copyWithZone: zone];
	copySynthPatchOptionsObject.midiInstrument = [self.midiInstrument copyWithZone: zone];
	copySynthPatchOptionsObject.noteGlideDuration = [self.noteGlideDuration copyWithZone: zone];
	copySynthPatchOptionsObject.oscillators = [self.oscillators copyWithZone: zone];
	return copySynthPatchOptionsObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.eq) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.eq) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"eq"] = array;
	}
	if (self.masterAttackEnvelope) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.masterAttackEnvelope) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"masterAttackEnvelope"] = array;
	}
	if (self.masterReleaseEnvelope) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.masterReleaseEnvelope) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"masterReleaseEnvelope"] = array;
	}
	if (self.masterVolume) {
		params[@"masterVolume"] = self.masterVolume;
	}
	if (self.midiInstrument) {
		params[@"midiInstrument"] = self.midiInstrument;
	}
	if (self.noteGlideDuration) {
		params[@"noteGlideDuration"] = self.noteGlideDuration;
	}
	if (self.oscillators) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.oscillators) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"oscillators"] = array;
	}
	return params;
}

# pragma mark - Setters

-(void)setEq:(NSArray *)eq {
	NSArray *oldValue = _eq;
	_eq = eq;
	[self updateArrayObject:oldValue newValue:eq propertyName:@"eq"];
}

-(void)setMasterAttackEnvelope:(NSArray<NSString *> *)masterAttackEnvelope {
	NSArray<NSString *> *oldValue = _masterAttackEnvelope;
	_masterAttackEnvelope = masterAttackEnvelope;
	[self updateArrayObject:oldValue newValue:masterAttackEnvelope propertyName:@"masterAttackEnvelope"];
}

-(void)setMasterReleaseEnvelope:(NSArray<NSString *> *)masterReleaseEnvelope {
	NSArray<NSString *> *oldValue = _masterReleaseEnvelope;
	_masterReleaseEnvelope = masterReleaseEnvelope;
	[self updateArrayObject:oldValue newValue:masterReleaseEnvelope propertyName:@"masterReleaseEnvelope"];
}

-(void)setMasterVolume:(NSNumber *)masterVolume {
	NSNumber *oldValue = _masterVolume;
	_masterVolume = masterVolume;
	[self updateNSObject:oldValue newValue:masterVolume propertyName:@"masterVolume"];
}

-(void)setMidiInstrument:(NSNumber *)midiInstrument {
	NSNumber *oldValue = _midiInstrument;
	_midiInstrument = midiInstrument;
	[self updateNSObject:oldValue newValue:midiInstrument propertyName:@"midiInstrument"];
}

-(void)setNoteGlideDuration:(NSNumber *)noteGlideDuration {
	NSNumber *oldValue = _noteGlideDuration;
	_noteGlideDuration = noteGlideDuration;
	[self updateNSObject:oldValue newValue:noteGlideDuration propertyName:@"noteGlideDuration"];
}

-(void)setOscillators:(NSArray *)oscillators {
	NSArray *oldValue = _oscillators;
	_oscillators = oscillators;
	[self updateArrayObject:oldValue newValue:oscillators propertyName:@"oscillators"];
}

@end