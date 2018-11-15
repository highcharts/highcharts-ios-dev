#import "HIChartsJSONSerializableSubclass.h"
#import "HIItems.h"

@implementation HIItems

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIItems *copyItems = [[HIItems allocWithZone: zone] init];
	copyItems.style = [self.style copyWithZone: zone];
	copyItems.html = [self.html copyWithZone: zone];
	return copyItems;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.html) {
		params[@"html"] = self.html;
	}
	return params;
}

# pragma mark - Setters

-(void)setStyle:(HICSSObject *)style {
	HICSSObject *oldValue = _style;
	if(self.style) {
		[self removeObserver:self forKeyPath:@"style.isUpdated"];
	}
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setHtml:(NSString *)html {
	_html = html;
	[self updateNSObject:@"html"];
}

@end