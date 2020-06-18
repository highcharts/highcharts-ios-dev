#import "HIChartsJSONSerializableSubclass.h"
#import "HIGeoJSON.h"

@implementation HIGeoJSON

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIGeoJSON *copyGeoJSON = [[HIGeoJSON allocWithZone: zone] init];
	copyGeoJSON.copyright = [self.copyright copyWithZone: zone];
	copyGeoJSON.copyrightShort = [self.copyrightShort copyWithZone: zone];
	copyGeoJSON.crs = [self.crs copyWithZone: zone];
	copyGeoJSON.features = [self.features copyWithZone: zone];
	copyGeoJSON.hc-transform = [self.hc-transform copyWithZone: zone];
	copyGeoJSON.title = [self.title copyWithZone: zone];
	copyGeoJSON.type = [self.type copyWithZone: zone];
	copyGeoJSON.version = [self.version copyWithZone: zone];
	return copyGeoJSON;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.copyright) {
		params[@"copyright"] = self.copyright;
	}
	if (self.copyrightShort) {
		params[@"copyrightShort"] = self.copyrightShort;
	}
	if (self.crs) {
		params[@"crs"] = self.crs;
	}
	if (self.features) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.features) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"features"] = array;
	}
	if (self.hc-transform) {
		params[@"hc-transform"] = self.hc-transform;
	}
	if (self.title) {
		params[@"title"] = self.title;
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.version) {
		params[@"version"] = self.version;
	}
	return params;
}

# pragma mark - Setters

-(void)setCopyright:(NSString *)copyright {
	NSString *oldValue = _copyright;
	_copyright = copyright;
	[self updateNSObject:oldValue newValue:copyright propertyName:@"copyright"];
}

-(void)setCopyrightShort:(NSString *)copyrightShort {
	NSString *oldValue = _copyrightShort;
	_copyrightShort = copyrightShort;
	[self updateNSObject:oldValue newValue:copyrightShort propertyName:@"copyrightShort"];
}

-(void)setCrs:(id)crs {
	id oldValue = _crs;
	_crs = crs;
	[self updateNSObject:oldValue newValue:crs propertyName:@"crs"];
}

-(void)setFeatures:(NSArray *)features {
	NSArray *oldValue = _features;
	_features = features;
	[self updateArrayObject:oldValue newValue:features propertyName:@"features"];
}

-(void)setHc-transform:(id)hc-transform {
	id oldValue = _hc-transform;
	_hc-transform = hc-transform;
	[self updateNSObject:oldValue newValue:hc-transform propertyName:@"hc-transform"];
}

-(void)setTitle:(NSString *)title {
	NSString *oldValue = _title;
	_title = title;
	[self updateNSObject:oldValue newValue:title propertyName:@"title"];
}

-(void)setType:(NSString *)type {
	NSString *oldValue = _type;
	_type = type;
	[self updateNSObject:oldValue newValue:type propertyName:@"type"];
}

-(void)setVersion:(NSString *)version {
	NSString *oldValue = _version;
	_version = version;
	[self updateNSObject:oldValue newValue:version propertyName:@"version"];
}

@end