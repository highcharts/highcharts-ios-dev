#import "HIChartsJSONSerializableSubclass.h"
#import "HIWindbarb.h"

@implementation HIWindbarb

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"windbarb";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	HIWindbarb *copyWindbarb = [[HIWindbarb allocWithZone: zone] init];
	copyWindbarb.onSeries = [self.onSeries copyWithZone: zone];
	copyWindbarb.vectorLength = [self.vectorLength copyWithZone: zone];
	copyWindbarb.yOffset = [self.yOffset copyWithZone: zone];
	copyWindbarb.xOffset = [self.xOffset copyWithZone: zone];
	copyWindbarb.borderRadius = [self.borderRadius copyWithZone: zone];
	copyWindbarb.pointRange = [self.pointRange copyWithZone: zone];
	copyWindbarb.minPointLength = [self.minPointLength copyWithZone: zone];
	copyWindbarb.groupZPadding = [self.groupZPadding copyWithZone: zone];
	copyWindbarb.colors = [self.colors copyWithZone: zone];
	copyWindbarb.borderColor = [self.borderColor copyWithZone: zone];
	copyWindbarb.edgeColor = [self.edgeColor copyWithZone: zone];
	copyWindbarb.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyWindbarb.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyWindbarb.pointWidth = [self.pointWidth copyWithZone: zone];
	copyWindbarb.pointPadding = [self.pointPadding copyWithZone: zone];
	copyWindbarb.groupPadding = [self.groupPadding copyWithZone: zone];
	copyWindbarb.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyWindbarb.crisp = [self.crisp copyWithZone: zone];
	copyWindbarb.depth = [self.depth copyWithZone: zone];
	copyWindbarb.borderWidth = [self.borderWidth copyWithZone: zone];
	copyWindbarb.grouping = [self.grouping copyWithZone: zone];
	return copyWindbarb;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.onSeries) {
		params[@"onSeries"] = self.onSeries;
	}
	if (self.vectorLength) {
		params[@"vectorLength"] = self.vectorLength;
	}
	if (self.yOffset) {
		params[@"yOffset"] = self.yOffset;
	}
	if (self.xOffset) {
		params[@"xOffset"] = self.xOffset;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.pointRange) {
		params[@"pointRange"] = self.pointRange;
	}
	if (self.minPointLength) {
		params[@"minPointLength"] = self.minPointLength;
	}
	if (self.groupZPadding) {
		params[@"groupZPadding"] = self.groupZPadding;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.edgeColor) {
		params[@"edgeColor"] = [self.edgeColor getData];
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.maxPointWidth) {
		params[@"maxPointWidth"] = self.maxPointWidth;
	}
	if (self.pointWidth) {
		params[@"pointWidth"] = self.pointWidth;
	}
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	if (self.groupPadding) {
		params[@"groupPadding"] = self.groupPadding;
	}
	if (self.edgeWidth) {
		params[@"edgeWidth"] = self.edgeWidth;
	}
	if (self.crisp) {
		params[@"crisp"] = self.crisp;
	}
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.grouping) {
		params[@"grouping"] = self.grouping;
	}
	return params;
}

# pragma mark - Setters

-(void)setOnSeries:(NSString *)onSeries {
	_onSeries = onSeries;
	[self updateNSObject:@"onSeries"];
}

-(void)setVectorLength:(NSNumber *)vectorLength {
	_vectorLength = vectorLength;
	[self updateNSObject:@"vectorLength"];
}

-(void)setYOffset:(NSNumber *)yOffset {
	_yOffset = yOffset;
	[self updateNSObject:@"yOffset"];
}

-(void)setXOffset:(NSNumber *)xOffset {
	_xOffset = xOffset;
	[self updateNSObject:@"xOffset"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	_borderRadius = borderRadius;
	[self updateNSObject:@"borderRadius"];
}

-(void)setPointRange:(NSNumber *)pointRange {
	_pointRange = pointRange;
	[self updateNSObject:@"pointRange"];
}

-(void)setMinPointLength:(NSNumber *)minPointLength {
	_minPointLength = minPointLength;
	[self updateNSObject:@"minPointLength"];
}

-(void)setGroupZPadding:(NSNumber *)groupZPadding {
	_groupZPadding = groupZPadding;
	[self updateNSObject:@"groupZPadding"];
}

-(void)setColors:(NSArray<HIColor *> *)colors {
	NSArray<HIColor *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setEdgeColor:(HIColor *)edgeColor {
	HIColor *oldValue = _edgeColor;
	if(self.edgeColor) {
		[self removeObserver:self forKeyPath:@"edgeColor.isUpdated"];
	}
	_edgeColor = edgeColor;
	[self updateHIObject:oldValue newValue:edgeColor propertyName:@"edgeColor"];
}

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	_colorByPoint = colorByPoint;
	[self updateNSObject:@"colorByPoint"];
}

-(void)setMaxPointWidth:(NSNumber *)maxPointWidth {
	_maxPointWidth = maxPointWidth;
	[self updateNSObject:@"maxPointWidth"];
}

-(void)setPointWidth:(NSNumber *)pointWidth {
	_pointWidth = pointWidth;
	[self updateNSObject:@"pointWidth"];
}

-(void)setPointPadding:(NSNumber *)pointPadding {
	_pointPadding = pointPadding;
	[self updateNSObject:@"pointPadding"];
}

-(void)setGroupPadding:(NSNumber *)groupPadding {
	_groupPadding = groupPadding;
	[self updateNSObject:@"groupPadding"];
}

-(void)setEdgeWidth:(NSNumber *)edgeWidth {
	_edgeWidth = edgeWidth;
	[self updateNSObject:@"edgeWidth"];
}

-(void)setCrisp:(NSNumber *)crisp {
	_crisp = crisp;
	[self updateNSObject:@"crisp"];
}

-(void)setDepth:(NSNumber *)depth {
	_depth = depth;
	[self updateNSObject:@"depth"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setGrouping:(NSNumber *)grouping {
	_grouping = grouping;
	[self updateNSObject:@"grouping"];
}

@end