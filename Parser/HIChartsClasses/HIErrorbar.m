#import "HIErrorbar.h"

@implementation HIErrorbar

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"errorbar";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.whiskerColor) {
		params[@"whiskerColor"] = [self.whiskerColor getData];
	}
	if (self.stemWidth) {
		params[@"stemWidth"] = self.stemWidth;
	}
	if (self.edgeWidth) {
		params[@"edgeWidth"] = self.edgeWidth;
	}
	if (self.pointWidth) {
		params[@"pointWidth"] = self.pointWidth;
	}
	if (self.whiskerWidth) {
		params[@"whiskerWidth"] = self.whiskerWidth;
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.grouping) {
		params[@"grouping"] = self.grouping;
	}
	if (self.crisp) {
		params[@"crisp"] = self.crisp;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.medianColor) {
		params[@"medianColor"] = [self.medianColor getData];
	}
	if (self.stemColor) {
		params[@"stemColor"] = [self.stemColor getData];
	}
	if (self.minPointLength) {
		params[@"minPointLength"] = self.minPointLength;
	}
	if (self.edgeColor) {
		params[@"edgeColor"] = [self.edgeColor getData];
	}
	if (self.medianWidth) {
		params[@"medianWidth"] = self.medianWidth;
	}
	if (self.pointRange) {
		params[@"pointRange"] = self.pointRange;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.whiskerLength) {
		params[@"whiskerLength"] = self.whiskerLength;
	}
	if (self.maxPointWidth) {
		params[@"maxPointWidth"] = self.maxPointWidth;
	}
	if (self.groupZPadding) {
		params[@"groupZPadding"] = self.groupZPadding;
	}
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.groupPadding) {
		params[@"groupPadding"] = self.groupPadding;
	}
	if (self.stemDashStyle) {
		params[@"stemDashStyle"] = self.stemDashStyle;
	}
	return params;
}

# pragma mark - Setters

-(void)setWhiskerColor:(HIColor *)whiskerColor {
	HIColor *oldValue = _whiskerColor;
	if(self.whiskerColor) {
		[self removeObserver:self forKeyPath:@"whiskerColor.isUpdated"];
	}
	_whiskerColor = whiskerColor;
	[self updateHIObject:oldValue newValue:whiskerColor propertyName:@"whiskerColor"];
}

-(void)setStemWidth:(NSNumber *)stemWidth {
	_stemWidth = stemWidth;
	[self updateNSObject:@"stemWidth"];
}

-(void)setEdgeWidth:(NSNumber *)edgeWidth {
	_edgeWidth = edgeWidth;
	[self updateNSObject:@"edgeWidth"];
}

-(void)setPointWidth:(NSNumber *)pointWidth {
	_pointWidth = pointWidth;
	[self updateNSObject:@"pointWidth"];
}

-(void)setWhiskerWidth:(NSNumber *)whiskerWidth {
	_whiskerWidth = whiskerWidth;
	[self updateNSObject:@"whiskerWidth"];
}

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	_colorByPoint = colorByPoint;
	[self updateNSObject:@"colorByPoint"];
}

-(void)setPointPadding:(NSNumber *)pointPadding {
	_pointPadding = pointPadding;
	[self updateNSObject:@"pointPadding"];
}

-(void)setFillColor:(HIColor *)fillColor {
	HIColor *oldValue = _fillColor;
	if(self.fillColor) {
		[self removeObserver:self forKeyPath:@"fillColor.isUpdated"];
	}
	_fillColor = fillColor;
	[self updateHIObject:oldValue newValue:fillColor propertyName:@"fillColor"];
}

-(void)setGrouping:(NSNumber *)grouping {
	_grouping = grouping;
	[self updateNSObject:@"grouping"];
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

-(void)setMedianColor:(HIColor *)medianColor {
	HIColor *oldValue = _medianColor;
	if(self.medianColor) {
		[self removeObserver:self forKeyPath:@"medianColor.isUpdated"];
	}
	_medianColor = medianColor;
	[self updateHIObject:oldValue newValue:medianColor propertyName:@"medianColor"];
}

-(void)setStemColor:(HIColor *)stemColor {
	HIColor *oldValue = _stemColor;
	if(self.stemColor) {
		[self removeObserver:self forKeyPath:@"stemColor.isUpdated"];
	}
	_stemColor = stemColor;
	[self updateHIObject:oldValue newValue:stemColor propertyName:@"stemColor"];
}

-(void)setMinPointLength:(NSNumber *)minPointLength {
	_minPointLength = minPointLength;
	[self updateNSObject:@"minPointLength"];
}

-(void)setEdgeColor:(HIColor *)edgeColor {
	HIColor *oldValue = _edgeColor;
	if(self.edgeColor) {
		[self removeObserver:self forKeyPath:@"edgeColor.isUpdated"];
	}
	_edgeColor = edgeColor;
	[self updateHIObject:oldValue newValue:edgeColor propertyName:@"edgeColor"];
}

-(void)setMedianWidth:(NSNumber *)medianWidth {
	_medianWidth = medianWidth;
	[self updateNSObject:@"medianWidth"];
}

-(void)setPointRange:(NSNumber *)pointRange {
	_pointRange = pointRange;
	[self updateNSObject:@"pointRange"];
}

-(void)setColors:(NSArray<HIColor *> *)colors {
	NSArray<HIColor *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	_borderRadius = borderRadius;
	[self updateNSObject:@"borderRadius"];
}

-(void)setWhiskerLength:(id)whiskerLength {
	_whiskerLength = whiskerLength;
	[self updateNSObject:@"whiskerLength"];
}

-(void)setMaxPointWidth:(NSNumber *)maxPointWidth {
	_maxPointWidth = maxPointWidth;
	[self updateNSObject:@"maxPointWidth"];
}

-(void)setGroupZPadding:(NSNumber *)groupZPadding {
	_groupZPadding = groupZPadding;
	[self updateNSObject:@"groupZPadding"];
}

-(void)setDepth:(NSNumber *)depth {
	_depth = depth;
	[self updateNSObject:@"depth"];
}

-(void)setGroupPadding:(NSNumber *)groupPadding {
	_groupPadding = groupPadding;
	[self updateNSObject:@"groupPadding"];
}

-(void)setStemDashStyle:(NSString *)stemDashStyle {
	_stemDashStyle = stemDashStyle;
	[self updateNSObject:@"stemDashStyle"];
}

@end