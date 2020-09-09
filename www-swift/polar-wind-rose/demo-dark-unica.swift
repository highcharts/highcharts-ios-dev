import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "dark-unica"

    let options = HIOptions()

    let data = HIData()
    data.table = "<table id='freq' border='0' cellspacing='0' cellpadding='0'> <tr nowrap bgcolor='#CCCCFF'> <th colspan='9' class='hdr'>Table of Frequencies (percent)</th> </tr> <tr nowrap bgcolor='#CCCCFF'> <th class='freq'>Direction</th> <th class='freq'>&lt; 0.5 m/s</th> <th class='freq'>0.5-2 m/s</th> <th class='freq'>2-4 m/s</th> <th class='freq'>4-6 m/s</th> <th class='freq'>6-8 m/s</th> <th class='freq'>8-10 m/s</th> <th class='freq'>&gt; 10 m/s</th> <th class='freq'>Total</th> </tr> <tr nowrap> <td class='dir'>N</td> <td class='data'>1.81</td> <td class='data'>1.78</td> <td class='data'>0.16</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>3.75</td> </tr> <tr nowrap bgcolor='#DDDDDD'> <td class='dir'>NNE</td> <td class='data'>0.62</td> <td class='data'>1.09</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>1.71</td> </tr> <tr nowrap> <td class='dir'>NE</td> <td class='data'>0.82</td> <td class='data'>0.82</td> <td class='data'>0.07</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>1.71</td> </tr> <tr nowrap bgcolor='#DDDDDD'> <td class='dir'>ENE</td> <td class='data'>0.59</td> <td class='data'>1.22</td> <td class='data'>0.07</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>1.88</td> </tr> <tr nowrap> <td class='dir'>E</td> <td class='data'>0.62</td> <td class='data'>2.20</td> <td class='data'>0.49</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>3.32</td> </tr> <tr nowrap bgcolor='#DDDDDD'> <td class='dir'>ESE</td> <td class='data'>1.22</td> <td class='data'>2.01</td> <td class='data'>1.55</td> <td class='data'>0.30</td> <td class='data'>0.13</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>5.20</td> </tr> <tr nowrap> <td class='dir'>SE</td> <td class='data'>1.61</td> <td class='data'>3.06</td> <td class='data'>2.37</td> <td class='data'>2.14</td> <td class='data'>1.74</td> <td class='data'>0.39</td> <td class='data'>0.13</td> <td class='data'>11.45</td> </tr> <tr nowrap bgcolor='#DDDDDD'> <td class='dir'>SSE</td> <td class='data'>2.04</td> <td class='data'>3.42</td> <td class='data'>1.97</td> <td class='data'>0.86</td> <td class='data'>0.53</td> <td class='data'>0.49</td> <td class='data'>0.00</td> <td class='data'>9.31</td> </tr> <tr nowrap> <td class='dir'>S</td> <td class='data'>2.66</td> <td class='data'>4.74</td> <td class='data'>0.43</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>7.83</td> </tr> <tr nowrap bgcolor='#DDDDDD'> <td class='dir'>SSW</td> <td class='data'>2.96</td> <td class='data'>4.14</td> <td class='data'>0.26</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>7.37</td> </tr> <tr nowrap> <td class='dir'>SW</td> <td class='data'>2.53</td> <td class='data'>4.01</td> <td class='data'>1.22</td> <td class='data'>0.49</td> <td class='data'>0.13</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>8.39</td> </tr> <tr nowrap bgcolor='#DDDDDD'> <td class='dir'>WSW</td> <td class='data'>1.97</td> <td class='data'>2.66</td> <td class='data'>1.97</td> <td class='data'>0.79</td> <td class='data'>0.30</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>7.70</td> </tr> <tr nowrap> <td class='dir'>W</td> <td class='data'>1.64</td> <td class='data'>1.71</td> <td class='data'>0.92</td> <td class='data'>1.45</td> <td class='data'>0.26</td> <td class='data'>0.10</td> <td class='data'>0.00</td> <td class='data'>6.09</td> </tr> <tr nowrap bgcolor='#DDDDDD'> <td class='dir'>WNW</td> <td class='data'>1.32</td> <td class='data'>2.40</td> <td class='data'>0.99</td> <td class='data'>1.61</td> <td class='data'>0.33</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>6.64</td> </tr> <tr nowrap> <td class='dir'>NW</td> <td class='data'>1.58</td> <td class='data'>4.28</td> <td class='data'>1.28</td> <td class='data'>0.76</td> <td class='data'>0.66</td> <td class='data'>0.69</td> <td class='data'>0.03</td> <td class='data'>9.28</td> </tr> <tr nowrap bgcolor='#DDDDDD'> <td class='dir'>NNW</td> <td class='data'>1.51</td> <td class='data'>5.00</td> <td class='data'>1.32</td> <td class='data'>0.13</td> <td class='data'>0.23</td> <td class='data'>0.13</td> <td class='data'>0.07</td> <td class='data'>8.39</td> </tr> <tr nowrap> <td class='totals'>Total</td> <td class='totals'>25.53</td> <td class='totals'>44.54</td> <td class='totals'>15.07</td> <td class='totals'>8.52</td> <td class='totals'>4.31</td> <td class='totals'>1.81</td> <td class='totals'>0.23</td> <td class='totals'>&nbsp;</td> </tr> </table>"
    data.startRow = 1
    data.endRow = 17
    data.endColumn = 7
    options.data = data

    let chart = HIChart()
    chart.polar = true
    chart.type = "column"
    options.chart = chart

    let title = HITitle()
    title.text = "Wind rose for South Shore Met Station, Oregon"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Source: or.water.usgs.gov"
    options.subtitle = subtitle

    let pane = HIPane()
    pane.size = "85%"
    options.pane = pane

    let legend = HILegend()
    legend.align = "right"
    legend.verticalAlign = "top"
    legend.y = 100
    legend.layout = "vertical"
    options.legend = legend

    let xAxis = HIXAxis()
    xAxis.tickmarkPlacement = "on"
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.min = 0
    yAxis.endOnTick = false
    yAxis.showLastLabel = true
    yAxis.title = HITitle()
    yAxis.title.text = "Frequency (%)"
    yAxis.labels = HILabels()
    yAxis.labels.formatter = HIFunction(jsFunction: "function () { return this.value + '%'; }")
    yAxis.reversedStacks = false
    options.yAxis = [yAxis]

    let tooltip = HITooltip()
    tooltip.valueSuffix = "%"
    options.tooltip = tooltip

    let plotOptions = HIPlotOptions()
    plotOptions.series = HISeries()
    plotOptions.series.stacking = "normal"
    plotOptions.series.shadow = HIShadowOptionsObject()
    plotOptions.series.shadow.opacity = 0
    // plotOptions.series.groupPadding = 0
    plotOptions.series.pointPlacement = "on"
    options.plotOptions = plotOptions

    chartView.options = options

    self.view.addSubview(chartView)
  }

}
