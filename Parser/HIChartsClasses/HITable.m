#import "HIChartsJSONSerializableSubclass.h"
#import "HITable.h"

@implementation HITable

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HITable *copyTable = [[HITable allocWithZone: zone] init];
	copyTable.tableSummary = [self.tableSummary copyWithZone: zone];
	copyTable.viewAsDataTableButtonText = [self.viewAsDataTableButtonText copyWithZone: zone];
	return copyTable;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.tableSummary) {
		params[@"tableSummary"] = self.tableSummary;
	}
	if (self.viewAsDataTableButtonText) {
		params[@"viewAsDataTableButtonText"] = self.viewAsDataTableButtonText;
	}
	return params;
}

# pragma mark - Setters

-(void)setTableSummary:(NSString *)tableSummary {
	NSString *oldValue = _tableSummary;
	_tableSummary = tableSummary;
	[self updateNSObject:oldValue newValue:tableSummary propertyName:@"tableSummary"];
}

-(void)setViewAsDataTableButtonText:(NSString *)viewAsDataTableButtonText {
	NSString *oldValue = _viewAsDataTableButtonText;
	_viewAsDataTableButtonText = viewAsDataTableButtonText;
	[self updateNSObject:oldValue newValue:viewAsDataTableButtonText propertyName:@"viewAsDataTableButtonText"];
}

@end