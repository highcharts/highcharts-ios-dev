#import "HIChartsJSONSerializableSubclass.h"
#import "HICsv.h"

@implementation HICsv

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HICsv *copyCsv = [[HICsv allocWithZone: zone] init];
	copyCsv.columnHeaderFormatter = [self.columnHeaderFormatter copyWithZone: zone];
	copyCsv.decimalPoint = [self.decimalPoint copyWithZone: zone];
	copyCsv.lineDelimiter = [self.lineDelimiter copyWithZone: zone];
	copyCsv.itemDelimiter = [self.itemDelimiter copyWithZone: zone];
	copyCsv.dateFormat = [self.dateFormat copyWithZone: zone];
	return copyCsv;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.columnHeaderFormatter) {
		params[@"columnHeaderFormatter"] = [self.columnHeaderFormatter getFunction];
	}
	if (self.decimalPoint) {
		params[@"decimalPoint"] = self.decimalPoint;
	}
	if (self.lineDelimiter) {
		params[@"lineDelimiter"] = self.lineDelimiter;
	}
	if (self.itemDelimiter) {
		params[@"itemDelimiter"] = self.itemDelimiter;
	}
	if (self.dateFormat) {
		params[@"dateFormat"] = self.dateFormat;
	}
	return params;
}

# pragma mark - Setters

-(void)setColumnHeaderFormatter:(HIFunction *)columnHeaderFormatter {
	HIFunction *oldValue = _columnHeaderFormatter;
	if(self.columnHeaderFormatter) {
		[self removeObserver:self forKeyPath:@"columnHeaderFormatter.isUpdated"];
	}
	_columnHeaderFormatter = columnHeaderFormatter;
	[self updateHIObject:oldValue newValue:columnHeaderFormatter propertyName:@"columnHeaderFormatter"];
}

-(void)setDecimalPoint:(NSString *)decimalPoint {
	_decimalPoint = decimalPoint;
	[self updateNSObject:@"decimalPoint"];
}

-(void)setLineDelimiter:(NSString *)lineDelimiter {
	_lineDelimiter = lineDelimiter;
	[self updateNSObject:@"lineDelimiter"];
}

-(void)setItemDelimiter:(NSString *)itemDelimiter {
	_itemDelimiter = itemDelimiter;
	[self updateNSObject:@"itemDelimiter"];
}

-(void)setDateFormat:(NSString *)dateFormat {
	_dateFormat = dateFormat;
	[self updateNSObject:@"dateFormat"];
}

@end