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

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.grouping) {
		params[@"grouping"] = self.grouping;
	}
	if (self.pointRange) {
		params[@"pointRange"] = self.pointRange;
	}
	if (self.minPointLength) {
		params[@"minPointLength"] = self.minPointLength;
	}
	if (self.pointWidth) {
		params[@"pointWidth"] = self.pointWidth;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.maxPointWidth) {
		params[@"maxPointWidth"] = self.maxPointWidth;
	}
	if (self.edgeWidth) {
		params[@"edgeWidth"] = self.edgeWidth;
	}
	if (self.yOffset) {
		params[@"yOffset"] = self.yOffset;
	}
	if (self.groupPadding) {
		params[@"groupPadding"] = self.groupPadding;
	}
	if (self.vectorLength) {
		params[@"vectorLength"] = self.vectorLength;
	}
	if (self.groupZPadding) {
		params[@"groupZPadding"] = self.groupZPadding;
	}
	if (self.edgeColor) {
		params[@"edgeColor"] = [self.edgeColor getData];
	}
	if (self.crisp) {
		params[@"crisp"] = self.crisp;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.onSeries) {
		params[@"onSeries"] = self.onSeries;
	}
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	return params;
}

# pragma mark - Setters

-(void)setGrouping:(NSNumber *)grouping {
	_grouping = grouping;
	[self updateNSObject:@"grouping"];
}

-(void)setPointRange:(NSNumber *)pointRange {
	_pointRange = pointRange;
	[self updateNSObject:@"pointRange"];
}

-(void)setMinPointLength:(NSNumber *)minPointLength {
	_minPointLength = minPointLength;
	[self updateNSObject:@"minPointLength"];
}

-(void)setPointWidth:(NSNumber *)pointWidth {
	_pointWidth = pointWidth;
	[self updateNSObject:@"pointWidth"];
}

-(void)setColors:(NSArray<HIColor *> *)colors {
	NSArray<HIColor *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
}

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	_colorByPoint = colorByPoint;
	[self updateNSObject:@"colorByPoint"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	_borderRadius = borderRadius;
	[self updateNSObject:@"borderRadius"];
}

-(void)setMaxPointWidth:(NSNumber *)maxPointWidth {
	_maxPointWidth = maxPointWidth;
	[self updateNSObject:@"maxPointWidth"];
}

-(void)setEdgeWidth:(NSNumber *)edgeWidth {
	_edgeWidth = edgeWidth;
	[self updateNSObject:@"edgeWidth"];
}

-(void)setYOffset:(NSNumber *)yOffset {
	_yOffset = yOffset;
	[self updateNSObject:@"yOffset"];
}

-(void)setGroupPadding:(NSNumber *)groupPadding {
	_groupPadding = groupPadding;
	[self updateNSObject:@"groupPadding"];
}

-(void)setVectorLength:(NSNumber *)vectorLength {
	_vectorLength = vectorLength;
	[self updateNSObject:@"vectorLength"];
}

-(void)setGroupZPadding:(NSNumber *)groupZPadding {
	_groupZPadding = groupZPadding;
	[self updateNSObject:@"groupZPadding"];
}

-(void)setEdgeColor:(HIColor *)edgeColor {
	HIColor *oldValue = _edgeColor;
	if(self.edgeColor) {
		[self removeObserver:self forKeyPath:@"edgeColor.isUpdated"];
	}
	_edgeColor = edgeColor;
	[self updateHIObject:oldValue newValue:edgeColor propertyName:@"edgeColor"];
}

-(void)setCrisp:(NSNumber *)crisp {
	_crisp = crisp;
	[self updateNSObject:@"crisp"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setDepth:(NSNumber *)depth {
	_depth = depth;
	[self updateNSObject:@"depth"];
}

-(void)setOnSeries:(NSString *)onSeries {
	_onSeries = onSeries;
	[self updateNSObject:@"onSeries"];
}

-(void)setPointPadding:(NSNumber *)pointPadding {
	_pointPadding = pointPadding;
	[self updateNSObject:@"pointPadding"];
}

@end