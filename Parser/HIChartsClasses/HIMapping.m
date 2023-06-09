#import "HIChartsJSONSerializableSubclass.h"
#import "HIMapping.h"

@implementation HIMapping

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIMapping *copyMapping = [[HIMapping allocWithZone: zone] init];
	copyMapping.text = [self.text copyWithZone: zone];
	copyMapping.rate = [self.rate copyWithZone: zone];
	copyMapping.pitch = [self.pitch copyWithZone: zone];
	copyMapping.playDelay = [self.playDelay copyWithZone: zone];
	copyMapping.volume = [self.volume copyWithZone: zone];
	copyMapping.time = [self.time copyWithZone: zone];
	copyMapping.noteDuration = [self.noteDuration copyWithZone: zone];
	copyMapping.tremolo = [self.tremolo copyWithZone: zone];
	copyMapping.highpass = [self.highpass copyWithZone: zone];
	copyMapping.frequency = [self.frequency copyWithZone: zone];
	copyMapping.gapBetweenNotes = [self.gapBetweenNotes copyWithZone: zone];
	copyMapping.lowpass = [self.lowpass copyWithZone: zone];
	copyMapping.pan = [self.pan copyWithZone: zone];
	return copyMapping;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.rate) {
		params[@"rate"] = [self.rate getParams];
	}
	if (self.pitch) {
		params[@"pitch"] = [self.pitch getParams];
	}
	if (self.playDelay) {
		params[@"playDelay"] = [self.playDelay getParams];
	}
	if (self.volume) {
		params[@"volume"] = [self.volume getParams];
	}
	if (self.time) {
		params[@"time"] = [self.time getParams];
	}
	if (self.noteDuration) {
		params[@"noteDuration"] = [self.noteDuration getParams];
	}
	if (self.tremolo) {
		params[@"tremolo"] = [self.tremolo getParams];
	}
	if (self.highpass) {
		params[@"highpass"] = [self.highpass getParams];
	}
	if (self.frequency) {
		params[@"frequency"] = [self.frequency getParams];
	}
	if (self.gapBetweenNotes) {
		params[@"gapBetweenNotes"] = [self.gapBetweenNotes getParams];
	}
	if (self.lowpass) {
		params[@"lowpass"] = [self.lowpass getParams];
	}
	if (self.pan) {
		params[@"pan"] = [self.pan getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setText:(NSString *)text {
	NSString *oldValue = _text;
	_text = text;
	[self updateNSObject:oldValue newValue:text propertyName:@"text"];
}

-(void)setRate:(HIRate *)rate {
	HIRate *oldValue = _rate;
	_rate = rate;
	[self updateHIObject:oldValue newValue:rate propertyName:@"rate"];
}

-(void)setPitch:(HIPitch *)pitch {
	HIPitch *oldValue = _pitch;
	_pitch = pitch;
	[self updateHIObject:oldValue newValue:pitch propertyName:@"pitch"];
}

-(void)setPlayDelay:(HIPlayDelay *)playDelay {
	HIPlayDelay *oldValue = _playDelay;
	_playDelay = playDelay;
	[self updateHIObject:oldValue newValue:playDelay propertyName:@"playDelay"];
}

-(void)setVolume:(HIVolume *)volume {
	HIVolume *oldValue = _volume;
	_volume = volume;
	[self updateHIObject:oldValue newValue:volume propertyName:@"volume"];
}

-(void)setTime:(HITime *)time {
	HITime *oldValue = _time;
	_time = time;
	[self updateHIObject:oldValue newValue:time propertyName:@"time"];
}

-(void)setNoteDuration:(HINoteDuration *)noteDuration {
	HINoteDuration *oldValue = _noteDuration;
	_noteDuration = noteDuration;
	[self updateHIObject:oldValue newValue:noteDuration propertyName:@"noteDuration"];
}

-(void)setTremolo:(HITremolo *)tremolo {
	HITremolo *oldValue = _tremolo;
	_tremolo = tremolo;
	[self updateHIObject:oldValue newValue:tremolo propertyName:@"tremolo"];
}

-(void)setHighpass:(HIHighpass *)highpass {
	HIHighpass *oldValue = _highpass;
	_highpass = highpass;
	[self updateHIObject:oldValue newValue:highpass propertyName:@"highpass"];
}

-(void)setFrequency:(HIFrequency *)frequency {
	HIFrequency *oldValue = _frequency;
	_frequency = frequency;
	[self updateHIObject:oldValue newValue:frequency propertyName:@"frequency"];
}

-(void)setGapBetweenNotes:(HIGapBetweenNotes *)gapBetweenNotes {
	HIGapBetweenNotes *oldValue = _gapBetweenNotes;
	_gapBetweenNotes = gapBetweenNotes;
	[self updateHIObject:oldValue newValue:gapBetweenNotes propertyName:@"gapBetweenNotes"];
}

-(void)setLowpass:(HILowpass *)lowpass {
	HILowpass *oldValue = _lowpass;
	_lowpass = lowpass;
	[self updateHIObject:oldValue newValue:lowpass propertyName:@"lowpass"];
}

-(void)setPan:(HIPan *)pan {
	HIPan *oldValue = _pan;
	_pan = pan;
	[self updateHIObject:oldValue newValue:pan propertyName:@"pan"];
}

@end