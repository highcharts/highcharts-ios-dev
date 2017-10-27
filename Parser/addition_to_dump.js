{
    "name": "series-data",
    "returnType": "Array<Object|Array|Number>",
    "description": "An array of data points for the series. The points can be given in three ways:\r\n <ol>\r\n \t<li>An array of numerical values. In this case, the numerical values will \r\n \tbe interpreted as y values, and x values will be automatically calculated,\r\n \teither starting at 0 and incrementing by 1, or from <code>pointStart</code> \r\n \tand <code>pointInterval</code> given in the plotOptions. If the axis is\r\n \thas categories, these will be used. This option is not available for range series. Example:\r\n<pre>data: [0, 5, 3, 5]</pre>\r\n \t</li>\r\n \t<li><p>An array of arrays with two values. In this case, the first value is the\r\n \tx value and the second is the y value. If the first value is a string, it is\r\n \tapplied as the name of the point, and the x value is incremented following\r\n \tthe above rules.</p>\r\n<p>For range series, the arrays will be interpreted as <code>[x, low, high]</code>. In this cases, the X value can be skipped altogether to make use of <code>pointStart</code> and <code>pointRange</code>.</p>\r\n\r\n Example:\r\n<pre>data: [[5, 2], [6, 3], [8, 2]]</pre></li>\r\n\r\n\r\n<li><p>An array of objects with named values. In this case the objects are\r\n \tpoint configuration objects as seen below.</p>\r\n\r\n<p>Range series values are given by <code>low</code> and <code>high</code>.</p>\r\n\r\nExample:\r\n<pre>data: [{\r\n\tname: 'Point 1',\r\n\tcolor: '#00FF00',\r\n\ty: 0\r\n}, {\r\n\tname: 'Point 2',\r\n\tcolor: '#FF00FF',\r\n\ty: 5\r\n}]</pre></li>\r\n </ol>\r\n\r\n<p>Note that line series and derived types like spline and area, require data to be sorted by X because it interpolates mouse coordinates for the tooltip. Column and scatter series, where each point has its own mouse event, does not require sorting.</p>",
    "demo": "<ul>\r\n<li><a href=\"http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/reflow-true/\" target=\"_blank\">1) Numerical values</a></li>\r\n\r\n<li><a href=\"http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-arrays/\" target=\"_blank\">2a) arrays of numeric x and y</a></li>\r\n\r\n<li><a href=\"http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-arrays-datetime/\" target=\"_blank\">2b) arrays of datetime x and y</a></li>\r\n\r\n<li><a href=\"http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-name-value/\" target=\"_blank\">2c) arrays of point.name and y</a></li>\r\n\r\n<li><a href=\"http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-objects/\" target=\"_blank\">3) config objects</a></li>\r\n\r\n<li><a href=\"http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/3d-column-null-values/\" target=\"_blank\">4) 3D column with null values</a></li>\r\n</ul>",
    "deprecated": false,
    "fullname": "series.data",
    "title": "data",
    "parent": "series",
    "isParent": true,
    "products": [
      "highcharts"
    ]
  },
  {
    "name": "series--id",
    "returnType": "String",
    "since": "1.2.0",
    "description": "An id for the series. This can be used after render time to get a pointer to the series object through <code>chart.get()</code>.",
    "demo": "<a href=\"http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-id/\" target=\"_blank\">Get series by id</a>",
    "deprecated": false,
    "fullname": "series.id",
    "title": "id",
    "parent": "series",
    "isParent": false,
    "products": [
      "highcharts"
    ],
    "defaults": "",
    "values": "",
    "seeAlso": ""
  },
  {
    "name": "series--index",
    "returnType": "Number",
    "since": "2.3.0",
    "description": "The index of the series in the chart, affecting the internal index in the <code>chart.series</code> array, the visible Z index as well as the order in the legend.",
    "demo": "",
    "deprecated": false,
    "fullname": "series.index",
    "title": "index",
    "parent": "series",
    "isParent": false,
    "products": [
      "highcharts"
    ],
    "seeAlso": ""
  },
  {
    "name": "series--legendIndex",
    "returnType": "Number",
    "description": "The sequential index of the series in the legend.  <div class=\"demo\">Try it:  \t<a href=\"http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/legendindex/\" target=\"_blank\">Legend in opposite order</a> </div>.",
    "deprecated": false,
    "fullname": "series.legendIndex",
    "title": "legendIndex",
    "parent": "series",
    "isParent": false,
    "products": [
      "highcharts"
    ],
    "seeAlso": "<a href=\"#legend.reversed\">legend.reversed</a>, <a href=\"#yAxis.reversedStacks\">yAxis.reversedStacks</a>"
  },
  {
    "name": "series--name",
    "returnType": "String",
    "description": "The name of the series as shown in the legend, tooltip etc.",
    "demo": "<a href=\"http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/name/\" target=\"_blank\">Series name</a>",
    "fullname": "series.name",
    "title": "name",
    "parent": "series",
    "isParent": false,
    "products": [
      "highcharts"
    ]
  },
  {
    "name": "series--stack",
    "returnType": "String",
    "since": "2.1",
    "description": "This option allows grouping series in a stacked chart. The stack option can be a string  or a number or anything else, as long as the grouped series' stack options match each other.",
    "demo": "<a href=\"http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/stack/\" target=\"_blank\">Stacked and grouped columns</a>",
    "deprecated": false,
    "fullname": "series.stack",
    "title": "stack",
    "parent": "series",
    "isParent": false,
    "products": [
      "highcharts"
    ]
  },
  {
    "name": "series--type",
    "returnType": "String",
    "since": "",
    "description": "The type of series. Can be one of <code>area</code>, <code>areaspline</code>,\r <code>bar</code>, <code>column</code>, <code>line</code>, <code>pie</code>,\r <code>scatter</code> or <code>spline</code>. From version 2.3, <code>arearange</code>, <code>areasplinerange</code> and <code>columnrange</code> are supported with the highcharts-more.js component.",
    "demo": "<a href=\"http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/type/\" target=\"_blank\">Line and column in the same chart</a>",
    "deprecated": false,
    "fullname": "series.type",
    "title": "type",
    "parent": "series",
    "isParent": false,
    "products": [
      "highcharts"
    ],
    "values": "[null, \"line\", \"spline\", \"column\", \"area\", \"areaspline\", \"pie\", \"arearange\", \"areasplinerange\", \"boxplot\", \"bubble\", \"columnrange\", \"errorbar\", \"funnel\", \"gauge\", \"scatter\", \"waterfall\"]",
    "seeAlso": ""
  },
  {
    "name": "series--xAxis",
    "returnType": "Number|String",
    "description": "When using dual or multiple x axes, this number defines which xAxis the particular series is connected to. It refers to either the <a href=\"#xAxis.id\">axis id</a> or the index of the axis in the xAxis array, with 0 being the first.",
    "deprecated": false,
    "fullname": "series.xAxis",
    "title": "xAxis",
    "parent": "series",
    "isParent": false,
    "products": [
      "highcharts"
    ],
    "defaults": "0"
  },
  {
    "name": "series--yAxis",
    "returnType": "Number|String",
    "description": "When using dual or multiple y axes, this number defines which yAxis the particular series is connected to. It refers to either the <a href=\"#yAxis.id\">axis id</a> or the index of the axis in the yAxis array, with 0 being the first.",
    "demo": "<a href=\"http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/yaxis/\" target=\"_blank\">Apply the column series to the secondary Y axis</a>",
    "deprecated": false,
    "fullname": "series.yAxis",
    "title": "yAxis",
    "parent": "series",
    "isParent": false,
    "products": [
      "highcharts"
    ],
    "defaults": "0"
  },
  {
    "name": "series--zIndex",
    "returnType": "Number",
    "since": "",
    "description": "Define the visual z index of the series.",
    "demo": "<a href=\"http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-zindex-default/\" target=\"_blank\">With no z index, the series defined last are on top</a>,\r\n\t\t\t<a href=\"http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-zindex/\" target=\"_blank\">with a z index, the series with the highest z index is on top</a>.",
    "deprecated": false,
    "fullname": "series.zIndex",
    "title": "zIndex",
    "parent": "series",
    "isParent": false,
    "products": [
      "highcharts"
    ],
    "defaults": "",
    "values": "",
    "seeAlso": ""
  }