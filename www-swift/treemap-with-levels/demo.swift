import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.plugins = ["treemap"]

    let options = HIOptions()

    let title = HITitle()
    title.text = "Fruit consumption"
    options.title = title

    let treemap = HITreemap()
    treemap.layoutAlgorithm = "stripes"
    treemap.alternateStartingDirection = true

    let level = HILevels()
    level.level = 1
    level.layoutAlgorithm = "sliceAndDice"

    let dataLabels = HIDataLabels()
    dataLabels.enabled = true
    dataLabels.align = "left"
    dataLabels.verticalAlign = "top"
    dataLabels.style = HIStyle()
    dataLabels.style.fontSize = "15px"
    dataLabels.style.fontWeight = "bold"

    level.dataLabels = dataLabels

    treemap.levels = [level]

    let apples = HIData()
    apples.name = "Apples"
    apples.id = "A"
    apples.color = HIColor(hexValue: "EC2500")

    let bananas = HIData()
    apples.name = "Bananas"
    bananas.id = "B"
    bananas.color = HIColor(hexValue: "ECE100")

    let oranges = HIData()
    oranges.name = "Oranges"
    oranges.id = "O"
    oranges.color = HIColor(hexValue: "EC9800")

    let anneA = HIData()
    anneA.name = "Anne"
    anneA.parent = "A"
    anneA.value = 5

    let rickA = HIData()
    rickA.name = "Rick"
    rickA.parent = "A"
    rickA.value = 3

    let peterA = HIData()
    peterA.name = "Peter"
    peterA.parent = "A"
    peterA.value = 4

    let anneB = HIData()
    anneB.name = "Anne"
    anneB.parent = "B"
    anneB.value = 4

    let rickB = HIData()
    rickA.name = "Rick"
    rickA.parent = "B"
    rickA.value = 10

    let peterB = HIData()
    peterA.name = "Peter"
    peterA.parent = "B"
    peterA.value = 1

    let anneO = HIData()
    anneO.name = "Anne"
    anneO.parent = "O"
    anneO.value = 1

    let rickO = HIData()
    rickO.name = "Rick"
    rickO.parent = "O"
    rickO.value = 3

    let peterO = HIData()
    peterO.name = "Peter"
    peterO.parent = "O"
    peterO.value = 3

    let susanne = HIData()
    susanne.name = "Susanne"
    susanne.parent = "Kiwi"
    susanne.value = 2
    susanne.color = HIColor(hexValue: "9EDE00")

    treemap.data = [apples, bananas, oranges, anneA, rickA, peterA, anneB, rickB, peterB, anneO, rickO, peterO, susanne]

    options.series = [treemap]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}
