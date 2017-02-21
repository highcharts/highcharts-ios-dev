#import "HIChartsJSONSerializable.h"


/**
* description: A HTML label that can be positioned anywhere in the chart area.
*/
@interface LabelsItems: HIChartsJSONSerializable

/**
* description: CSS styles for each label. To position the label, use left and top like this:
<pre>style: {
	left: '100px',
	top: '100px'
}</pre>
*/
@property(nonatomic, readwrite) NSMutableDictionary /* <NSString, NSString> */ *style;
/**
* description: Inner HTML or text for the label.
*/
@property(nonatomic, readwrite) NSString *html;

-(NSDictionary *)getParams;

@end
