#import "HIChartsJSONSerializableSubclass.h"
#import "HIAccessibilityLegend.h"

@implementation HIAccessibilityLegend

-(instancetype)init {
    return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
    [super copyWithZone:zone];
    HIAccessibilityLegend *copyAccessibility = [[HIAccessibilityLegend allocWithZone: zone] init];
    copyAccessibility.legendItem = [self.legendItem copyWithZone: zone];
    copyAccessibility.legendLabel = [self.legendLabel copyWithZone: zone];
    copyAccessibility.legendLabelNoTitle = [self.legendLabelNoTitle copyWithZone: zone];
    return copyAccessibility;
}

-(NSDictionary *)getParams
{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
    if (self.legendItem) {
        params[@"legendItem"] = self.legendItem;
    }
    if (self.legendLabel) {
        params[@"legendLabel"] = self.legendLabel;
    }
    if (self.legendLabelNoTitle) {
        params[@"legendLabelNoTitle"] = self.legendLabelNoTitle;
    }
    return params;
}

# pragma mark - Setters

-(void)setLegendItem:(NSString *)legendItem {
    NSString *oldValue = _legendItem;
    _legendItem = legendItem;
    [self updateNSObject:oldValue newValue:legendItem propertyName:@"legendItem"];
}

-(void)setLegendLabel:(NSString *)legendLabel {
    NSString *oldValue = _legendLabel;
    _legendLabel = legendLabel;
    [self updateNSObject:oldValue newValue:legendLabel propertyName:@"legendLabel"];
}

-(void)setLegendLabelNoTitle:(NSString *)legendLabelNoTitle {
    NSString *oldValue = _legendLabelNoTitle;
    _legendLabelNoTitle = legendLabelNoTitle;
    [self updateNSObject:oldValue newValue:legendLabelNoTitle propertyName:@"legendLabelNoTitle"];
}

@end
