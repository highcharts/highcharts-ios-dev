#import "HIPolygon.h"

@implementation HIPolygon

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"polygon";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.trackByArea) {
		params[@"trackByArea"] = self.trackByArea;
	}
	return params;
}

# pragma mark - Setters

-(void)setTrackByArea:(NSNumber *)trackByArea {
	_trackByArea = trackByArea;
	[self updateNSObject:@"trackByArea"];
}

@end