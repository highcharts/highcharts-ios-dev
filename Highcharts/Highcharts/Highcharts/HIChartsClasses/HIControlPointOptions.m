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
	return params;
}

# pragma mark - Setters

-(void)setStyle:(HIStyle *)style {
	HIStyle *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setWidth:(NSNumber *)width {
	NSNumber *oldValue = _width;
	_width = width;
	[self updateNSObject:oldValue newValue:width propertyName:@"width"];
}

-(void)setSymbol:(NSString *)symbol {
	NSString *oldValue = _symbol;
	_symbol = symbol;
	[self updateNSObject:oldValue newValue:symbol propertyName:@"symbol"];
}

-(void)setHeight:(NSNumber *)height {
	NSNumber *oldValue = _height;
	_height = height;
	[self updateNSObject:oldValue newValue:height propertyName:@"height"];
}

-(void)setVisible:(NSNumber *)visible {
	NSNumber *oldValue = _visible;
	_visible = visible;
	[self updateNSObject:oldValue newValue:visible propertyName:@"visible"];
}

-(void)setPositioner:(id)positioner {
	id oldValue = _positioner;
	_positioner = positioner;
	[self updateNSObject:oldValue newValue:positioner propertyName:@"positioner"];
}

@end