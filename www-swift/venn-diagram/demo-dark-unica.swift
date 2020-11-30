import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "dark-unica"
    chartView.plugins = ["venn"]

    let options = HIOptions()

    let accessibility = HIAccessibility()
    accessibility.point = HIPoint()
    accessibility.point.descriptionFormatter = HIFunction(jsFunction: "function (point) { var intersection = point.sets.join(', '), name = point.name, ix = point.index + 1, val = point.value; return ix + '. Intersection: ' + intersection + '. ' + (point.sets.length > 1 ? name + '. ' : '') + 'Value ' + val + '.'; }")
    options.accessibility = accessibility

    let title = HITitle()
    title.text = "The Unattainable Triangle"
    options.title = title

    let venn = HIVenn()
    venn.name = "The Unattainable Triangle"

    let data1 = HIData()
    data1.sets = ["Good"]
    data1.value = 2

    let data2 = HIData()
    data2.sets = ["Fast"]
    data2.value = 2

    let data3 = HIData()
    data3.sets = ["Cheap"]
    data3.value = 2

    let data4 = HIData()
    data4.sets = ["Good", "Fast"]
    data4.value = 1
    data4.name = "More expensive"

    let data5 = HIData()
    data5.sets = ["Good", "Cheap"]
    data5.value = 1
    data5.name = "Will take time to deliver"

    let data6 = HIData()
    data6.sets = ["Fast", "Cheap"]
    data6.value = 1
    data6.name = "Not the best quality"

    let data7 = HIData()
    data7.sets = ["Fast", "Cheap", "Good"]
    data7.value = 1
    data7.name = "They\'re dreaming"

    venn.data = [data1, data2, data3, data4, data5, data6, data7]

    options.series = [venn]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}
