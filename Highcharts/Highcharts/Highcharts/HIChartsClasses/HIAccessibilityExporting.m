#import "HIChartsJSONSerializableSubclass.h"
#import "HIAccessibilityExporting.h"

@implementation HIAccessibilityExporting

-(instancetype)init {
    return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
    [super copyWithZone:zone];
    HIAccessibilityExporting *copyAccessibility = [[HIAccessibilityExporting allocWithZone: zone] init];
    copyAccessibility.chartMenuLabel = [self.chartMenuLabel copyWithZone: zone];
    copyAccessibility.exportRegionLabel = [self.exportRegionLabel copyWithZone: zone];
    copyAccessibility.menuButtonLabel = [self.menuButtonLabel copyWithZone: zone];
    return copyAccessibility;
}

-(NSDictionary *)getParams
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
    if (self.chartMenuLabel) {
        params[@"chartMenuLabel"] = self.chartMenuLabel;
    }
    if (self.exportRegionLabel) {
        params[@"exportRegionLabel"] = self.exportRegionLabel;
    }
    if (self.menuButtonLabel) {
        params[@"menuButtonLabel"] = self.menuButtonLabel;
    }
    return params;
}

# pragma mark - Setters

-(void)setChartMenuLabel:(NSString *)chartMenuLabel {
    NSString *oldValue = _chartMenuLabel;
    _chartMenuLabel = chartMenuLabel;
    [self updateNSObject:oldValue newValue:chartMenuLabel propertyName:@"chartMenuLabel"];
}

-(void)setExportRegionLabel:(NSString *)exportRegionLabel {
    NSString *oldValue = exportRegionLabel;
    _exportRegionLabel = exportRegionLabel;
    [self updateNSObject:oldValue newValue:exportRegionLabel propertyName:@"exportRegionLabel"];
}

-(void)setMenuButtonLabel:(NSString *)menuButtonLabel {
    NSString *oldValue = menuButtonLabel;
    _menuButtonLabel = menuButtonLabel;
    [self updateNSObject:oldValue newValue:menuButtonLabel propertyName:@"menuButtonLabel"];
}

@end
