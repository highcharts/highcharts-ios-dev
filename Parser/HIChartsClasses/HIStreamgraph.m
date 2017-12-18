#import "HIChartsJSONSerializableSubclass.h"
#import "HIStreamgraph.h"

@implementation HIStreamgraph

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"streamgraph";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.negativeFillColor) {
		params[@"negativeFillColor"] = [self.negativeFillColor getData];
	}
	if (self.fillOpacity) {
		params[@"fillOpacity"] = self.fillOpacity;
	}
	if (self.trackByArea) {
		params[@"trackByArea"] = self.trackByArea;
	}
	return params;
}

# pragma mark - Setters

-(void)setLineColor:(HIColor *)lineColor {
	HIColor *oldValue = _lineColor;
	if(self.lineColor) {
		[self removeObserver:self forKeyPath:@"lineColor.isUpdated"];
	}
	_lineColor = lineColor;
	[self updateHIObject:oldValue newValue:lineColor propertyName:@"lineColor"];
}

-(void)setFillColor:(HIColor *)fillColor {
	HIColor *oldValue = _fillColor;
	if(self.fillColor) {
		[self removeObserver:self forKeyPath:@"fillColor.isUpdated"];
	}
	_fillColor = fillColor;
	[self updateHIObject:oldValue newValue:fillColor propertyName:@"fillColor"];
}

-(void)setNegativeFillColor:(HIColor *)negativeFillColor {
	HIColor *oldValue = _negativeFillColor;
	if(self.negativeFillColor) {
		[self removeObserver:self forKeyPath:@"negativeFillColor.isUpdated"];
	}
	_negativeFillColor = negativeFillColor;
	[self updateHIObject:oldValue newValue:negativeFillColor propertyName:@"negativeFillColor"];
}

-(void)setFillOpacity:(NSNumber *)fillOpacity {
	_fillOpacity = fillOpacity;
	[self updateNSObject:@"fillOpacity"];
}

-(void)setTrackByArea:(NSNumber *)trackByArea {
	_trackByArea = trackByArea;
	[self updateNSObject:@"trackByArea"];
}

@end