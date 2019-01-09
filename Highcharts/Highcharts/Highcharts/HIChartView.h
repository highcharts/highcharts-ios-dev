/**
 * (c) 2009-2018 Highsoft AS
 *
 * License: www.highcharts.com/license
 * For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
 * In case of questions, please contact sales@highsoft.com
 */

#import <UIKit/UIKit.h>
#import "HIOptions.h"
#import "HIGChartViewDelegate.h"
#import "HILang.h"
#import "HIGlobal.h"

/**
 *  Highcharts Chart View Class.
 *  @warning The view requires #options# to render.
 */
@interface HIChartView : UIView

/**
 *  An optional method to be called when the application starts. Speeds up subsequent chart loads.
 */
+ (void)preload;

/**
 *  A method for update the chart options manually.
 */
- (void)updateOptions;

/**
 *  A method to load the chart options from JSON.
 */
- (void)loadJSONOptions:(NSDictionary*)options;

/**
 *  Options object that configures the chart.
 */
@property (strong, nonatomic) HIOptions *options;
/**
 *  Language object. The language object is global and it can't be set on each chart initiation.
 */
@property (strong, nonatomic) HILang *lang;
/**
 *  Global object. Global options that don't apply to each chart.
 */
@property (strong, nonatomic) HIGlobal *global;

/**
 *  Theme name to load.
 */
@property (strong, nonatomic) NSString *theme;

/**
 *  Additional plugins to load.
 */
@property (strong, nonatomic) NSArray *plugins;

/**
 *  The chart might need to understand its encompassing UIViewController to properly export itself into an image.
 */
@property (weak, nonatomic) UIViewController *viewController;

/**
 *  A delegate that notifies on chart state changes.
 */
@property (weak, nonatomic) id<HIChartViewDelegate> delegate;

/** 
 *  Deprecated methods and attributes. 
 */
@property (assign, nonatomic) BOOL debug __attribute__((deprecated));
- (void)loadChart __attribute__((deprecated));
- (void)reload __attribute__((deprecated));




-(void)addAnnotation:(HIAnnotations *)options;
-(void)addAnnotation:(HIAnnotations *)options redraw:(NSNumber /* Bool */ *)redraw;
-(void)addXAxis:(HIXAxis *)options;
-(void)addXAxis:(HIXAxis *)options redraw:(NSNumber /* Bool */ *)redraw;
-(void)addXAxis:(HIXAxis *)options redraw:(NSNumber /* Bool */ *)redraw animation:(HIAnimationOptionsObject *)animation;
-(void)addYAxis:(HIYAxis *)options;
-(void)addYAxis:(HIYAxis *)options redraw:(NSNumber /* Bool */ *)redraw;
-(void)addYAxis:(HIYAxis *)options redraw:(NSNumber /* Bool */ *)redraw animation:(HIAnimationOptionsObject *)animation;
-(void)addCredits:(HICredits *)options;
-(void)addSeries:(HISeries *)options;
-(void)addSeries:(HISeries *)options redraw:(NSNumber /* Bool */ *)redraw;
-(void)addSeries:(HISeries *)options redraw:(NSNumber /* Bool */ *)redraw animation:(HIAnimationOptionsObject *)animation;
-(void)addSeriesAsDrilldown:(HIPoint *)point options:(HISeries *)options;
-(void)cancelSonify;
-(void)cancelSonify:(NSNumber /* Bool */ *)fadeOut;
-(void)destroy;
-(void)drillUp;
-(void)hideLoading;
-(void)openInCloud;
-(void)pauseSonify;
-(void)pauseSonify:(NSNumber /* Bool */ *)fadeOut;
-(void)print;
-(void)redraw;
-(void)redraw:(HIAnimationOptionsObject *)animation;
-(void)removeAnnotationById:(NSString *)id;
-(void)removeAnnotation:(HIAnnotations *)annotation;
-(void)resetSonifyCursor;
-(void)resetSonifyCursorEnd;
-(void)setSonifyCursorToPoint:(HIPoint *)point;
-(void)setSonifyCursorToPoints:(NSArray<HIPoint *> *)points;
-(void)setSubtitle:(HISubtitle *)options;
-(void)setTitle:(HITitle *)titleOptions subtitleOptions:(HISubtitle *)subtitleOptions redraw:(NSNumber /* Bool */ *)redraw;
-(void)showLoading:(NSString *)str;
-(void)sonify:(NSDictionary *)options;
-(void)update:(HIOptions *)options;
-(void)update:(HIOptions *)options redraw:(NSNumber /* Bool */ *)redraw;
-(void)update:(HIOptions *)options redraw:(NSNumber /* Bool */ *)redraw oneToOne:(NSNumber /* Bool */ *)oneToOne;
-(void)update:(HIOptions *)options redraw:(NSNumber /* Bool */ *)redraw oneToOne:(NSNumber /* Bool */ *)oneToOne animation:(HIAnimationOptionsObject *)animation;
-(void)viewData;
-(void)zoomOut;

@end
