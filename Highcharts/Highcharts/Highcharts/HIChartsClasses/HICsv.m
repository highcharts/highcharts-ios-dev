#import "HIChartsJSONSerializableSubclass.h"
#import "HICsv.h"

@implementation HICsv

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.lineDelimiter) {
		params[@"lineDelimiter"] = self.lineDelimiter;
	}
	if (self.columnHeaderFormatter) {
		params[@"columnHeaderFormatter"] = [self.columnHeaderFormatter getFunction];
	}
	if (self.dateFormat) {
		params[@"dateFormat"] = self.dateFormat;
	}
	if (self.itemDelimiter) {
		params[@"itemDelimiter"] = self.itemDelimiter;
	}
	return params;
}

# pragma mark - Setters

-(void)setLineDelimiter:(NSString *)lineDelimiter {
	_lineDelimiter = lineDelimiter;
	[self updateNSObject:@"lineDelimiter"];
}

-(void)setColumnHeaderFormatter:(HIFunction *)columnHeaderFormatter {
	HIFunction *oldValue = _columnHeaderFormatter;
	if(self.columnHeaderFormatter) {
		[self removeObserver:self forKeyPath:@"columnHeaderFormatter.isUpdated"];
	}
	_columnHeaderFormatter = columnHeaderFormatter;
	[self updateHIObject:oldValue newValue:columnHeaderFormatter propertyName:@"columnHeaderFormatter"];
}

-(void)setDateFormat:(NSString *)dateFormat {
	_dateFormat = dateFormat;
	[self updateNSObject:@"dateFormat"];
}

-(void)setItemDelimiter:(NSString *)itemDelimiter {
	_itemDelimiter = itemDelimiter;
	[self updateNSObject:@"itemDelimiter"];
}

@end