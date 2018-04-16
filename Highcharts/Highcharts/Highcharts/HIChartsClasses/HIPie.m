#import "HIChartsJSONSerializableSubclass.h"
#import "HIPie.h"

@implementation HIPie

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"pie";
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
	if (self.endAngle) {
		params[@"endAngle"] = self.endAngle;
	}
	if (self.innerSize) {
		params[@"innerSize"] = self.innerSize;
	}
	if (self.center) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.center) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"center"] = array;
	}
	if (self.clip) {
		params[@"clip"] = self.clip;
	}
	if (self.slicedOffset) {
		params[@"slicedOffset"] = self.slicedOffset;
	}
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.minSize) {
		params[@"minSize"] = self.minSize;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.startAngle) {
		params[@"startAngle"] = self.startAngle;
	}
	if (self.size) {
		params[@"size"] = self.size;
	}
	if (self.ignoreHiddenPoint) {
		params[@"ignoreHiddenPoint"] = self.ignoreHiddenPoint;
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

-(void)setEndAngle:(NSNumber *)endAngle {
	_endAngle = endAngle;
	[self updateNSObject:@"endAngle"];
}

-(void)setInnerSize:(id)innerSize {
	_innerSize = innerSize;
	[self updateNSObject:@"innerSize"];
}

-(void)setCenter:(NSArray *)center {
	NSArray *oldValue = _center;
	_center = center;
	[self updateArrayObject:oldValue newValue:center propertyName:@"center"];
}

-(void)setClip:(NSNumber *)clip {
	_clip = clip;
	[self updateNSObject:@"clip"];
}

-(void)setSlicedOffset:(NSNumber *)slicedOffset {
	_slicedOffset = slicedOffset;
	[self updateNSObject:@"slicedOffset"];
}

-(void)setDepth:(NSNumber *)depth {
	_depth = depth;
	[self updateNSObject:@"depth"];
}

-(void)setColors:(NSArray<HIColor *> *)colors {
	NSArray<HIColor *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
}

-(void)setMinSize:(NSNumber *)minSize {
	_minSize = minSize;
	[self updateNSObject:@"minSize"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setStartAngle:(NSNumber *)startAngle {
	_startAngle = startAngle;
	[self updateNSObject:@"startAngle"];
}

-(void)setSize:(id)size {
	_size = size;
	[self updateNSObject:@"size"];
}

-(void)setIgnoreHiddenPoint:(NSNumber *)ignoreHiddenPoint {
	_ignoreHiddenPoint = ignoreHiddenPoint;
	[self updateNSObject:@"ignoreHiddenPoint"];
}

@end