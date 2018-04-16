#import "HIChartsJSONSerializableSubclass.h"
#import "HIWaterfall.h"

@implementation HIWaterfall

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"waterfall";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.upColor) {
		params[@"upColor"] = [self.upColor getData];
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
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

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setUpColor:(HIColor *)upColor {
	HIColor *oldValue = _upColor;
	if(self.upColor) {
		[self removeObserver:self forKeyPath:@"upColor.isUpdated"];
	}
	_upColor = upColor;
	[self updateHIObject:oldValue newValue:upColor propertyName:@"upColor"];
}

-(void)setLineColor:(HIColor *)lineColor {
	HIColor *oldValue = _lineColor;
	if(self.lineColor) {
		[self removeObserver:self forKeyPath:@"lineColor.isUpdated"];
	}
	_lineColor = lineColor;
	[self updateHIObject:oldValue newValue:lineColor propertyName:@"lineColor"];
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