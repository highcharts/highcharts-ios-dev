#import "HIChartsJSONSerializableSubclass.h"
#import "HIExportData.h"

@implementation HIExportData

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIExportData *copyExportData = [[HIExportData allocWithZone: zone] init];
	copyExportData.categoryHeader = [self.categoryHeader copyWithZone: zone];
	copyExportData.categoryDatetimeHeader = [self.categoryDatetimeHeader copyWithZone: zone];
	return copyExportData;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.categoryHeader) {
		params[@"categoryHeader"] = self.categoryHeader;
	}
	if (self.categoryDatetimeHeader) {
		params[@"categoryDatetimeHeader"] = self.categoryDatetimeHeader;
	}
	return params;
}

# pragma mark - Setters

-(void)setCategoryHeader:(NSString *)categoryHeader {
	NSString *oldValue = _categoryHeader;
	_categoryHeader = categoryHeader;
	[self updateNSObject:oldValue newValue:categoryHeader propertyName:@"categoryHeader"];
}

-(void)setCategoryDatetimeHeader:(NSString *)categoryDatetimeHeader {
	NSString *oldValue = _categoryDatetimeHeader;
	_categoryDatetimeHeader = categoryDatetimeHeader;
	[self updateNSObject:oldValue newValue:categoryDatetimeHeader propertyName:@"categoryDatetimeHeader"];
}

@end