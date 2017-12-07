#import "HISubtitle.h"

@interface HISubtitle ()
@property (nonatomic, assign) BOOL isUpdated;
@end

@implementation HISubtitle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.floating) {
		params[@"floating"] = self.floating;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.widthAdjust) {
		params[@"widthAdjust"] = self.widthAdjust;
	}
	return params;
}

#pragma mark - NSKeyValueObserving

+ (BOOL)automaticallyNotifiesObserversForKey:(NSString *)key {
    return NO;
}

#pragma mark - Setters / Getters

-(void)setText:(NSString *)text {
    if (self.text) {
        if (text) {
            NSLog(@"HISUBTITLE -- IT IS NOT THE NIL NEW TEXT! TEXT UPDATED");
            _text = text;
            [self willChangeValueForKey:@"isUpdated"];
            self.isUpdated = YES;
            [self didChangeValueForKey:@"isUpdated"];
        }
        else {
            NSLog(@"HISUBTITLE -- IT IS THE NIL NEW TEXT! Not updated!");
        }
    }
    else {
        NSLog(@"HISUBTITLE -- FIRST SET TITLE TEXT");
        _text = text;
    }
    [self willChangeValueForKey:@"isUpdated"];
    self.isUpdated = NO;
    [self didChangeValueForKey:@"isUpdated"];
}

@end
