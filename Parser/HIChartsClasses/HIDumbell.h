/**
* (c) 2009-2024 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HISeries.h"
#import "HIColor.h"


/**
 A `dumbell` series. If the `type` option is not specified, it is inherited from `chart.type`.
 
 Configuration options for the series are given in three levels:
 
 1. Options for all series in a chart are defined in the `plotOptions.series` object.
 
 2. Options for all `dumbell` series are defined in `plotOptions.dumbell`.
 
 3. Options for one single series are given in `the series instance array`.
 
 <pre>
 Highcharts.chart('container', {
    plotOptions: {
        series: {
            // general options for all series
        },
        dumbell: {
            // shared options for all dumbell series
        }
    },
    series: [{
        // specific options for this series instance
        type: 'dumbell'
    }]
 });
 <pre>
 */
@interface HIDumbell: HISeries

/**
Color of the start markers in a twojastara dumbbell graph. This option takes priority over the series color. To avoid this, set `lowColor` to `undefined`.
*/
@property(nonatomic, readwrite) HIColor *lowColor;

-(NSDictionary *)getParams;

@end
