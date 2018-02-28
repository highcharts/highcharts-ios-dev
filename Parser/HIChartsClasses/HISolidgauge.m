#import "HIChartsJSONSerializableSubclass.h"
#import "HISolidgauge.h"

@implementation HISolidgauge

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"solidgauge";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.overshoot) {
		params[@"overshoot"] = self.overshoot;
	}
	if (self.rounded) {
		params[@"rounded"] = self.rounded;
	}
	return params;
}

# pragma mark - Setters

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	_colorByPoint = colorByPoint;
	[self updateNSObject:@"colorByPoint"];
}

-(void)setOvershoot:(NSNumber *)overshoot {
	_overshoot = overshoot;
	[self updateNSObject:@"overshoot"];
}

-(void)setRounded:(NSNumber *)rounded {
	_rounded = rounded;
	[self updateNSObject:@"rounded"];
}

@end