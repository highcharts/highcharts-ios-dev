#import "HIChartsJSONSerializableSubclass.h"
#import "HIControlPointOptions.h"

@implementation HIControlPointOptions

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIControlPointOptions *copyControlPointOptions = [[HIControlPointOptions allocWithZone: zone] init];
	copyControlPointOptions.style = [self.style copyWithZone: zone];
	copyControlPointOptions.width = [self.width copyWithZone: zone];
	copyControlPointOptions.symbol = [self.symbol copyWithZone: zone];
	copyControlPointOptions.height = [self.height copyWithZone: zone];
	copyControlPointOptions.visible = [self.visible copyWithZone: zone];
	copyControlPointOptions.positioner = [self.positioner copyWithZone: zone];
	copyControlPointOptions.events = [self.events copyWithZone: zone];
	return copyControlPointOptions;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.symbol) {
		params[@"symbol"] = self.symbol;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.positioner) {
	}
	if (self.events) {
	}
	return params;
}

# pragma mark - Setters

-(void)setStyle:(HIStyle *)style {
	HIStyle *oldValue = _style;
	if(self.style) {
		[self removeObserver:self forKeyPath:@"style.isUpdated"];
	}
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setWidth:(NSNumber *)width {
	_width = width;
	[self updateNSObject:@"width"];
}

-(void)setSymbol:(NSString *)symbol {
	_symbol = symbol;
	[self updateNSObject:@"symbol"];
}

-(void)setHeight:(NSNumber *)height {
	_height = height;
	[self updateNSObject:@"height"];
}

-(void)setVisible:(NSNumber *)visible {
	_visible = visible;
	[self updateNSObject:@"visible"];
}

-(void)setPositioner:(id)positioner {
	_positioner = positioner;
	[self updateNSObject:@"positioner"];
}

-(void)setEvents:(id)events {
	_events = events;
	[self updateNSObject:@"events"];
}

@end