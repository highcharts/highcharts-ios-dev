#import "HIChartsJSONSerializableSubclass.h"
#import "HIPlotPieDataLabelsOptionsObject.h"

@implementation HIPlotPieDataLabelsOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPlotPieDataLabelsOptionsObject *copyPlotPieDataLabelsOptionsObject = [[HIPlotPieDataLabelsOptionsObject allocWithZone: zone] init];
	copyPlotPieDataLabelsOptionsObject.alignTo = [self.alignTo copyWithZone: zone];
	copyPlotPieDataLabelsOptionsObject.connectorColor = [self.connectorColor copyWithZone: zone];
	copyPlotPieDataLabelsOptionsObject.connectorPadding = [self.connectorPadding copyWithZone: zone];
	copyPlotPieDataLabelsOptionsObject.connectorShape = [self.connectorShape copyWithZone: zone];
	copyPlotPieDataLabelsOptionsObject.connectorWidth = [self.connectorWidth copyWithZone: zone];
	copyPlotPieDataLabelsOptionsObject.crookDistance = [self.crookDistance copyWithZone: zone];
	copyPlotPieDataLabelsOptionsObject.distance = [self.distance copyWithZone: zone];
	copyPlotPieDataLabelsOptionsObject.softConnector = [self.softConnector copyWithZone: zone];
	return copyPlotPieDataLabelsOptionsObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.alignTo) {
		params[@"alignTo"] = self.alignTo;
	}
	if (self.connectorColor) {
		params[@"connectorColor"] = self.connectorColor;
	}
	if (self.connectorPadding) {
		params[@"connectorPadding"] = self.connectorPadding;
	}
	if (self.connectorShape) {
		params[@"connectorShape"] = self.connectorShape;
	}
	if (self.connectorWidth) {
		params[@"connectorWidth"] = self.connectorWidth;
	}
	if (self.crookDistance) {
		params[@"crookDistance"] = self.crookDistance;
	}
	if (self.distance) {
		params[@"distance"] = self.distance;
	}
	if (self.softConnector) {
		params[@"softConnector"] = self.softConnector;
	}
	return params;
}

# pragma mark - Setters

-(void)setAlignTo:(NSString *)alignTo {
	NSString *oldValue = _alignTo;
	_alignTo = alignTo;
	[self updateNSObject:oldValue newValue:alignTo propertyName:@"alignTo"];
}

-(void)setConnectorColor:(NSString *)connectorColor {
	NSString *oldValue = _connectorColor;
	_connectorColor = connectorColor;
	[self updateNSObject:oldValue newValue:connectorColor propertyName:@"connectorColor"];
}

-(void)setConnectorPadding:(NSNumber *)connectorPadding {
	NSNumber *oldValue = _connectorPadding;
	_connectorPadding = connectorPadding;
	[self updateNSObject:oldValue newValue:connectorPadding propertyName:@"connectorPadding"];
}

-(void)setConnectorShape:(id)connectorShape {
	id oldValue = _connectorShape;
	_connectorShape = connectorShape;
	[self updateNSObject:oldValue newValue:connectorShape propertyName:@"connectorShape"];
}

-(void)setConnectorWidth:(NSNumber *)connectorWidth {
	NSNumber *oldValue = _connectorWidth;
	_connectorWidth = connectorWidth;
	[self updateNSObject:oldValue newValue:connectorWidth propertyName:@"connectorWidth"];
}

-(void)setCrookDistance:(NSString *)crookDistance {
	NSString *oldValue = _crookDistance;
	_crookDistance = crookDistance;
	[self updateNSObject:oldValue newValue:crookDistance propertyName:@"crookDistance"];
}

-(void)setDistance:(NSNumber *)distance {
	NSNumber *oldValue = _distance;
	_distance = distance;
	[self updateNSObject:oldValue newValue:distance propertyName:@"distance"];
}

-(void)setSoftConnector:(NSNumber *)softConnector {
	NSNumber *oldValue = _softConnector;
	_softConnector = softConnector;
	[self updateNSObject:oldValue newValue:softConnector propertyName:@"softConnector"];
}

@end