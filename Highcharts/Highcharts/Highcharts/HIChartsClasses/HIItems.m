#import "HIItems.h"

@implementation HIItems

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.html) {
		params[@"html"] = self.html;
	}
	return params;
}

# pragma mark - Setters

-(void)setStyle:(NSDictionary *)style {
	_style = style;
	[self updateNSObject:@"style"];
}

-(void)setHtml:(NSString *)html {
	_html = html;
	[self updateNSObject:@"html"];
}

@end