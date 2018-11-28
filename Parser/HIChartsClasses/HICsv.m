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
	_columnHeaderFormatter = columnHeaderFormatter;
	[self updateHIObject:oldValue newValue:columnHeaderFormatter propertyName:@"columnHeaderFormatter"];
}

-(void)setDecimalPoint:(NSString *)decimalPoint {
	NSString *oldValue = _decimalPoint;
	_decimalPoint = decimalPoint;
	[self updateNSObject:oldValue newValue:decimalPoint propertyName:@"decimalPoint"];
}

-(void)setLineDelimiter:(NSString *)lineDelimiter {
	NSString *oldValue = _lineDelimiter;
	_lineDelimiter = lineDelimiter;
	[self updateNSObject:oldValue newValue:lineDelimiter propertyName:@"lineDelimiter"];
}

-(void)setItemDelimiter:(NSString *)itemDelimiter {
	NSString *oldValue = _itemDelimiter;
	_itemDelimiter = itemDelimiter;
	[self updateNSObject:oldValue newValue:itemDelimiter propertyName:@"itemDelimiter"];
}

-(void)setDateFormat:(NSString *)dateFormat {
	NSString *oldValue = _dateFormat;
	_dateFormat = dateFormat;
	[self updateNSObject:oldValue newValue:dateFormat propertyName:@"dateFormat"];
}

@end