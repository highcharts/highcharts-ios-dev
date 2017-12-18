#import "HIChartsJSONSerializableSubclass.h"
#import "HIButtons.h"

@implementation HIButtons

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.contextButton) {
		params[@"contextButton"] = [self.contextButton getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setContextButton:(HIContextButton *)contextButton {
	HIContextButton *oldValue = _contextButton;
	if(self.contextButton) {
		[self removeObserver:self forKeyPath:@"contextButton.isUpdated"];
	}
	_contextButton = contextButton;
	[self updateHIObject:oldValue newValue:contextButton propertyName:@"contextButton"];
}

@end