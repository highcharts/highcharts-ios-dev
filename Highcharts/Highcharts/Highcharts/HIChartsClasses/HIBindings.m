#import "HIChartsJSONSerializableSubclass.h"
#import "HIBindings.h"

@implementation HIBindings

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIBindings *copyBindings = [[HIBindings allocWithZone: zone] init];
	copyBindings.rectangleAnnotation = [self.rectangleAnnotation copyWithZone: zone];
	copyBindings.labelAnnotation = [self.labelAnnotation copyWithZone: zone];
	copyBindings.circleAnnotation = [self.circleAnnotation copyWithZone: zone];
	return copyBindings;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.rectangleAnnotation) {
		params[@"rectangleAnnotation"] = [self.rectangleAnnotation getParams];
	}
	if (self.labelAnnotation) {
		params[@"labelAnnotation"] = [self.labelAnnotation getParams];
	}
	if (self.circleAnnotation) {
		params[@"circleAnnotation"] = [self.circleAnnotation getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setRectangleAnnotation:(HIStockToolsBindingsObject *)rectangleAnnotation {
	HIStockToolsBindingsObject *oldValue = _rectangleAnnotation;
	if(self.rectangleAnnotation) {
		[self removeObserver:self forKeyPath:@"rectangleAnnotation.isUpdated"];
	}
	_rectangleAnnotation = rectangleAnnotation;
	[self updateHIObject:oldValue newValue:rectangleAnnotation propertyName:@"rectangleAnnotation"];
}

-(void)setLabelAnnotation:(HIStockToolsBindingsObject *)labelAnnotation {
	HIStockToolsBindingsObject *oldValue = _labelAnnotation;
	if(self.labelAnnotation) {
		[self removeObserver:self forKeyPath:@"labelAnnotation.isUpdated"];
	}
	_labelAnnotation = labelAnnotation;
	[self updateHIObject:oldValue newValue:labelAnnotation propertyName:@"labelAnnotation"];
}

-(void)setCircleAnnotation:(HIStockToolsBindingsObject *)circleAnnotation {
	HIStockToolsBindingsObject *oldValue = _circleAnnotation;
	if(self.circleAnnotation) {
		[self removeObserver:self forKeyPath:@"circleAnnotation.isUpdated"];
	}
	_circleAnnotation = circleAnnotation;
	[self updateHIObject:oldValue newValue:circleAnnotation propertyName:@"circleAnnotation"];
}

@end