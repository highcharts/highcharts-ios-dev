#import "HIChartsJSONSerializableSubclass.h"
#import "HITilemap.h"

@implementation HITilemap

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"tilemap";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.colsize) {
		params[@"colsize"] = self.colsize;
	}
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	if (self.rowsize) {
		params[@"rowsize"] = self.rowsize;
	}
	if (self.nullColor) {
		params[@"nullColor"] = [self.nullColor getData];
	}
	if (self.tileShape) {
		params[@"tileShape"] = self.tileShape;
	}
	return params;
}

# pragma mark - Setters

-(void)setColsize:(NSNumber *)colsize {
	_colsize = colsize;
	[self updateNSObject:@"colsize"];
}

-(void)setPointPadding:(NSNumber *)pointPadding {
	_pointPadding = pointPadding;
	[self updateNSObject:@"pointPadding"];
}

-(void)setRowsize:(NSNumber *)rowsize {
	_rowsize = rowsize;
	[self updateNSObject:@"rowsize"];
}

-(void)setNullColor:(HIColor *)nullColor {
	HIColor *oldValue = _nullColor;
	if(self.nullColor) {
		[self removeObserver:self forKeyPath:@"nullColor.isUpdated"];
	}
	_nullColor = nullColor;
	[self updateHIObject:oldValue newValue:nullColor propertyName:@"nullColor"];
}

-(void)setTileShape:(NSString *)tileShape {
	_tileShape = tileShape;
	[self updateNSObject:@"tileShape"];
}

@end