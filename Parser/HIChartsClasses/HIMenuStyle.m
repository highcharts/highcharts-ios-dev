#import "HIChartsJSONSerializableSubclass.h"
#import "HIMenuStyle.h"

@implementation HIMenuStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.background) {
		params[@"background"] = self.background;
	}
	if (self.border) {
		params[@"border"] = self.border;
	}
	return params;
}

# pragma mark - Setters

-(void)setPadding:(NSString *)padding {
	_padding = padding;
	[self updateNSObject:@"padding"];
}

-(void)setBackground:(NSString *)background {
	_background = background;
	[self updateNSObject:@"background"];
}

-(void)setBorder:(NSString *)border {
	_border = border;
	[self updateNSObject:@"border"];
}

@end