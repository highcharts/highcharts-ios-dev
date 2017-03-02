#import "HILabelsItems.h"


/**
* description: HTML labels that can be positioned anywhere in the chart area.
*/
@interface HILabels: HIChartsJSONSerializable

/**
* description: A HTML label that can be positioned anywhere in the chart area.
*/
@property(nonatomic, readwrite) NSArray <HILabelsItems *> *items;
/**
* description: Shared CSS styles for all labels.
*/
@property(nonatomic, readwrite) NSDictionary /* <NSString, NSString> */ *style;

-(NSDictionary *)getParams;

@end
