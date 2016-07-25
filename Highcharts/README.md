Highcharts iOS wrapper .xcodeproj project.

## System Requirementss
- Xcode 7.0+

## Documentation
All internal documentation is in code of clases. For development purposes.

## Building Framework

Best way to build framework is to use [Carthage](https://github.com/Carthage/Carthage)

- [Install](https://github.com/Carthage/Carthage#installing-carthage) Carthage and follow instructions below to build framework.

#### Trial 
This is limited build for trial users with restrictions.

1. run `terminal`
2. run command ``carthage build --configuration Trial --no-skip-current``


#### Full
This is full comercial build for users with license.

1. run `terminal`
2. run command ``carthage build --no-skip-current`` withou

Al builds willl be in `Carthage/Build` directory.

## Tests

Unit Tests as separate TARGET in Xcode project. They can be executed in xcode.


## Framework structure and flow

Framework is build with MVC pattern. Classes are divided betwen Private and Public.


**Public**

This is what developer of app can use in his development. Chart View and other supporting classes for colors or images.


**Private**
These classes are working uder the hood for preparing and displaying chart.

#### How Highchart iOS works

###### Initialization.

Wrapper loads directory `com.highcharts.charts.bundle` that contains Higcharts JS for further use and display of chart.

```
com.highcharts.charts.bundle/
├── css
├── fonts
├── gfx
├── graphics
└── js
    ├── modules
    └── themes
```

Next step is loading html file bundle `highchart.html` is loaded to prepare chart.

```
+-----------------------------------------------------+
|                                                     |
|                         APP                         |
|                                                     |
+-----------------------------------------------------+

     +                                            ^
     |                                            |
     |                                            |
     |                                            |
     |                                            |
     |                                            |
     v                                            +

+-----------------------------------------------------+
|                                                     |
|                    HIGHCHARTS IOS                   |
|                                                     |
|      +---------------------------------------+      |
|      |                                       |      |
|      |                                       |      |
|      |                                       |      |
|      |               WKWEBVIEW               |      |
|      |                                       |      |
|      |                                       |      |
|      |                                       |      |
|      +---------------------------------------+      |
|                                                     |
|                                                     |
+-----------------------------------------------------+
```

After loading html for displaying html WKWebView if added.


###### Trial

After preparing main view if Wrapper is buid with TRIAL switch there is two more things added before loading chart.

1. Label with text 'TRAIL VERSION' is added to the view.
2. Alert with information about trial is displayed.

Alert and label are secured that cannot be removed from trial version build.

###### Preparation

When moment before view is displayed there is few steps for preparing Highcharts JS and options.

This is mostly JS preparation in steps described bellow.

1. All Highcharts required JS liblaries and user added liblaries are added to  list for loading.
2. Options that are in objective-c literals are converted to JS and added to list for loading.

This is done by JSPreparer that inject this before displaying view to the user.

###### Display

This is last step and easiest. View is displayed and WKVebView start loads HTML and JS Prepared by JSInjector

## JS Objective-c Communication

In current version communication is alowed in one direction from js -> obj-c. All steps are described bellow.

#### JS Bridge

JS side works on location href change with custom protocol and JSON parameters. 

```
win.location.href = 'hig://'+objc.action+'#' + escape((JSON.stringify(params)));
```

#### Objective-c Bridge.

On Objective-c side WKWebView detect location change and parse JSON params and create objective-c NSDictionary that can me used in further actions.
