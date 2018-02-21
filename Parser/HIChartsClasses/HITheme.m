#import "HIChartsJSONSerializableSubclass.h"
#import "HITheme.h"

@implementation HITheme

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.stroke) {
		params[@"stroke"] = self.stroke;
	}
	if (self.fill) {
		params[@"fill"] = self.fill;
	}
	return params;
}

# pragma mark - Setters

-(void)setZIndex:(NSNumber *)zIndex {
	_zIndex = zIndex;
	[self updateNSObject:@"zIndex"];
}

-(void)setPadding:(NSNumber *)padding {
	_padding = padding;
	[self updateNSObject:@"padding"];
}

-(void)setStroke:(NSString *)stroke {
	_stroke = stroke;
	[self updateNSObject:@"stroke"];
}

-(void)setFill:(NSString *)fill {
	_fill = fill;
	[self updateNSObject:@"fill"];
}

@end