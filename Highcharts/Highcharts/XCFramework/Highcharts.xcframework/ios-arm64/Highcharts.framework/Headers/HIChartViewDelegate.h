/**
 * (c) 2009-2024 Highsoft AS
 *
 * License: www.highcharts.com/license
 * For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
 * In case of questions, please contact sales@highsoft.com
 */

#import <Foundation/Foundation.h>

@class HIChartView;

/**
 * The delegate of the HIChartView.
 */
@protocol HIChartViewDelegate <NSObject>

/**
 *  Called when drawing is complete.
 */
- (void) chartViewDidLoad: (HIChartView *) chart;

@optional

/**
 *  Called when the Highcharts chart has actually finished rendering its SVG in
 *  the web view (fired from the JS render callback), as opposed to
 *  `chartViewDidLoad:` which fires on `didFinishNavigation` — before the chart
 *  pixels exist. Use this to dismiss a loading skeleton without a blank gap.
 */
- (void) chartViewDidRender: (HIChartView *) chart;

@end
