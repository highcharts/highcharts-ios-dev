#import "HIChartsJSONSerializableSubclass.h"
#import "HINavigationBindingsOptionsObject.h"

@implementation HINavigationBindingsOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HINavigationBindingsOptionsObject *copyNavigationBindingsOptionsObject = [[HINavigationBindingsOptionsObject allocWithZone: zone] init];
	copyNavigationBindingsOptionsObject.className = [self.className copyWithZone: zone];
	copyNavigationBindingsOptionsObject.end = [self.end copyWithZone: zone];
	copyNavigationBindingsOptionsObject.initial = [self.initial copyWithZone: zone];
	copyNavigationBindingsOptionsObject.start = [self.start copyWithZone: zone];
	copyNavigationBindingsOptionsObject.steps = [self.steps copyWithZone: zone];
	return copyNavigationBindingsOptionsObject;
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
	if (self.initial) {
		params[@"init"] = [self.initial getFunction];
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

-(void)setInitial:(HIFunction *)initial {
	HIFunction *oldValue = _initial;
	_initial = initial;
	[self updateHIObject:oldValue newValue:initial propertyName:@"initial"];
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
