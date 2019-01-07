#import "HIChartsJSONSerializableSubclass.h"
#import "HIStockToolsBindingsObject.h"

@implementation HIStockToolsBindingsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIStockToolsBindingsObject *copyStockToolsBindingsObject = [[HIStockToolsBindingsObject allocWithZone: zone] init];
	copyStockToolsBindingsObject.className = [self.className copyWithZone: zone];
	copyStockToolsBindingsObject.end = [self.end copyWithZone: zone];
	copyStockToolsBindingsObject.init = [self.init copyWithZone: zone];
	copyStockToolsBindingsObject.start = [self.start copyWithZone: zone];
	copyStockToolsBindingsObject.steps = [self.steps copyWithZone: zone];
	return copyStockToolsBindingsObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.end) {
		params[@"end"] = [self.end getFunction];
	}
	if (self.init) {
		params[@"init"] = [self.init getFunction];
	}
	if (self.start) {
		params[@"start"] = [self.start getFunction];
	}
	if (self.steps) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.steps) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"steps"] = array;
	}
	return params;
}

# pragma mark - Setters

-(void)setClassName:(NSString *)className {
	NSString *oldValue = _className;
	_className = className;
	[self updateNSObject:oldValue newValue:className propertyName:@"className"];
}

-(void)setEnd:(HIFunction *)end {
	HIFunction *oldValue = _end;
	_end = end;
	[self updateHIObject:oldValue newValue:end propertyName:@"end"];
}

-(void)setInit:(HIFunction *)init {
	HIFunction *oldValue = _init;
	_init = init;
	[self updateHIObject:oldValue newValue:init propertyName:@"init"];
}

-(void)setStart:(HIFunction *)start {
	HIFunction *oldValue = _start;
	_start = start;
	[self updateHIObject:oldValue newValue:start propertyName:@"start"];
}

-(void)setSteps:(NSArray<HIFunction *> *)steps {
	NSArray<HIFunction *> *oldValue = _steps;
	_steps = steps;
	[self updateArrayObject:oldValue newValue:steps propertyName:@"steps"];
}

@end