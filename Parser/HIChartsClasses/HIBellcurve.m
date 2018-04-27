#import "HIChartsJSONSerializableSubclass.h"
#import "HIBellcurve.h"

@implementation HIBellcurve

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"bellcurve";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	HIBellcurve *copyBellcurve = [[HIBellcurve allocWithZone: zone] init];
	copyBellcurve.intervals = [self.intervals copyWithZone: zone];
	copyBellcurve.pointsInInterval = [self.pointsInInterval copyWithZone: zone];
	copyBellcurve.negativeFillColor = [self.negativeFillColor copyWithZone: zone];
	copyBellcurve.trackByArea = [self.trackByArea copyWithZone: zone];
	copyBellcurve.fillColor = [self.fillColor copyWithZone: zone];
	copyBellcurve.lineColor = [self.lineColor copyWithZone: zone];
	copyBellcurve.fillOpacity = [self.fillOpacity copyWithZone: zone];
	copyBellcurve.baseSeries = [self.baseSeries copyWithZone: zone];
	return copyBellcurve;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.intervals) {
		params[@"intervals"] = self.intervals;
	}
	if (self.pointsInInterval) {
		params[@"pointsInInterval"] = self.pointsInInterval;
	}
	if (self.negativeFillColor) {
		params[@"negativeFillColor"] = [self.negativeFillColor getData];
	}
	if (self.trackByArea) {
		params[@"trackByArea"] = self.trackByArea;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	if (self.fillOpacity) {
		params[@"fillOpacity"] = self.fillOpacity;
	}
	if (self.baseSeries) {
		params[@"baseSeries"] = self.baseSeries;
	}
	return params;
}

# pragma mark - Setters

-(void)setIntervals:(NSNumber *)intervals {
	_intervals = intervals;
	[self updateNSObject:@"intervals"];
}

-(void)setPointsInInterval:(NSNumber *)pointsInInterval {
	_pointsInInterval = pointsInInterval;
	[self updateNSObject:@"pointsInInterval"];
}

-(void)setNegativeFillColor:(HIColor *)negativeFillColor {
	HIColor *oldValue = _negativeFillColor;
	if(self.negativeFillColor) {
		[self removeObserver:self forKeyPath:@"negativeFillColor.isUpdated"];
	}
	_negativeFillColor = negativeFillColor;
	[self updateHIObject:oldValue newValue:negativeFillColor propertyName:@"negativeFillColor"];
}

-(void)setTrackByArea:(NSNumber *)trackByArea {
	_trackByArea = trackByArea;
	[self updateNSObject:@"trackByArea"];
}

-(void)setFillColor:(HIColor *)fillColor {
	HIColor *oldValue = _fillColor;
	if(self.fillColor) {
		[self removeObserver:self forKeyPath:@"fillColor.isUpdated"];
	}
	_fillColor = fillColor;
	[self updateHIObject:oldValue newValue:fillColor propertyName:@"fillColor"];
}

-(void)setLineColor:(HIColor *)lineColor {
	HIColor *oldValue = _lineColor;
	if(self.lineColor) {
		[self removeObserver:self forKeyPath:@"lineColor.isUpdated"];
	}
	_lineColor = lineColor;
	[self updateHIObject:oldValue newValue:lineColor propertyName:@"lineColor"];
}

-(void)setFillOpacity:(NSNumber *)fillOpacity {
	_fillOpacity = fillOpacity;
	[self updateNSObject:@"fillOpacity"];
}

-(void)setBaseSeries:(id)baseSeries {
	_baseSeries = baseSeries;
	[self updateNSObject:@"baseSeries"];
}

@end