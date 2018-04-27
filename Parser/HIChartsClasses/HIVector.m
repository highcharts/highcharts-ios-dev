#import "HIChartsJSONSerializableSubclass.h"
#import "HIVector.h"

@implementation HIVector

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"vector";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	HIVector *copyVector = [[HIVector allocWithZone: zone] init];
	copyVector.vectorLength = [self.vectorLength copyWithZone: zone];
	copyVector.rotationOrigin = [self.rotationOrigin copyWithZone: zone];
	return copyVector;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.vectorLength) {
		params[@"vectorLength"] = self.vectorLength;
	}
	if (self.rotationOrigin) {
		params[@"rotationOrigin"] = self.rotationOrigin;
	}
	return params;
}

# pragma mark - Setters

-(void)setVectorLength:(NSNumber *)vectorLength {
	_vectorLength = vectorLength;
	[self updateNSObject:@"vectorLength"];
}

-(void)setRotationOrigin:(NSString *)rotationOrigin {
	_rotationOrigin = rotationOrigin;
	[self updateNSObject:@"rotationOrigin"];
}

@end