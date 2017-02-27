#import "HIChartsJSONSerializable.h"


/**
* description: HTML labels that can be positioned anywhere in the chart area.
*/
@interface HILabels: HIChartsJSONSerializable

/**
* description: A HTML label that can be positioned anywhere in the chart area.
*/
@property(nonatomic, readwrite) NSMutableArray <HILabelsItems *> *items;
/**
* description: Shared CSS styles for all labels.
*/
@property(nonatomic, readwrite) NSMutableDictionary /* <NSString, NSString> */ *style;

-(NSDictionary *)getParams;

@end
