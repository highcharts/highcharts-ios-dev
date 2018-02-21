#import "HIChartsJSONSerializableSubclass.h"
#import "HITheme.h"

@implementation HITheme

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.stroke) {
		params[@"stroke"] = self.stroke;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.fill) {
		params[@"fill"] = self.fill;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	return params;
}

# pragma mark - Setters

-(void)setStroke:(NSString *)stroke {
	_stroke = stroke;
	[self updateNSObject:@"stroke"];
}

-(void)setPadding:(NSNumber *)padding {
	_padding = padding;
	[self updateNSObject:@"padding"];
}

-(void)setFill:(NSString *)fill {
	_fill = fill;
	[self updateNSObject:@"fill"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	_zIndex = zIndex;
	[self updateNSObject:@"zIndex"];
}

@end