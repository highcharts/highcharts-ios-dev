/*
 Highcharts JS v8.1.0 (2020-05-05)

 Highcharts variwide module

 (c) 2010-2019 Torstein Honsi

 License: www.highcharts.com/license
*/
(function(a){"object"===typeof module&&module.exports?(a["default"]=a,module.exports=a):"function"===typeof define&&define.amd?define("highcharts/modules/variwide",["highcharts"],function(f){a(f);a.Highcharts=f;return a}):a("undefined"!==typeof Highcharts?Highcharts:void 0)})(function(a){function f(a,e,f,l){a.hasOwnProperty(e)||(a[e]=l.apply(null,f))}a=a?a._modules:{};f(a,"modules/variwide.src.js",[a["parts/Globals.js"],a["parts/Utilities.js"]],function(a,e){var f=e.addEvent,l=e.isNumber,n=e.pick,
q=e.seriesType;e=e.wrap;var p=a.seriesTypes;q("variwide","column",{pointPadding:0,groupPadding:0},{irregularWidths:!0,pointArrayMap:["y","z"],parallelArrays:["x","y","z"],processData:function(b){this.totalZ=0;this.relZ=[];p.column.prototype.processData.call(this,b);(this.xAxis.reversed?this.zData.slice().reverse():this.zData).forEach(function(b,a){this.relZ[a]=this.totalZ;this.totalZ+=b},this);this.xAxis.categories&&(this.xAxis.variwide=!0,this.xAxis.zData=this.zData)},postTranslate:function(b,a,
h){var g=this.xAxis,c=this.relZ;b=g.reversed?c.length-b:b;var d=g.reversed?-1:1,m=g.len,k=this.totalZ;g=b/c.length*m;var f=(b+d)/c.length*m,e=n(c[b],k)/k*m;c=n(c[b+d],k)/k*m;h&&(h.crosshairWidth=c-e);return e+(a-g)*(c-e)/(f-g)},translate:function(){var b=this.options.crisp,a=this.xAxis;this.options.crisp=!1;p.column.prototype.translate.call(this);this.options.crisp=b;var h=this.chart.inverted,g=this.borderWidth%2/2;this.points.forEach(function(c,b){if(a.variwide){var d=this.postTranslate(b,c.shapeArgs.x,
c);b=this.postTranslate(b,c.shapeArgs.x+c.shapeArgs.width)}else d=c.plotX,b=a.translate(c.x+c.z,0,0,0,1);this.options.crisp&&(d=Math.round(d)-g,b=Math.round(b)-g);c.shapeArgs.x=d;c.shapeArgs.width=Math.max(b-d,1);c.plotX=(d+b)/2;h?c.tooltipPos[1]=a.len-c.shapeArgs.x-c.shapeArgs.width/2:c.tooltipPos[0]=c.shapeArgs.x+c.shapeArgs.width/2},this);this.options.stacking&&this.correctStackLabels()},correctStackLabels:function(){var b=this,a=b.options,h=b.yAxis,g,c,e,f;b.points.forEach(function(d){f=d.x;c=
d.shapeArgs.width;(e=h.stacking.stacks[(b.negStacks&&d.y<(a.startFromThreshold?0:a.threshold)?"-":"")+b.stackKey])&&(g=e[f])&&!d.isNull&&g.setOffset(-(c/2)||0,c||0,void 0,void 0,d.plotX)})}},{isValid:function(){return l(this.y)&&l(this.z)}});a.Tick.prototype.postTranslate=function(b,a,e){var d=this.axis,c=b[a]-d.pos;d.horiz||(c=d.len-c);c=d.series[0].postTranslate(e,c);d.horiz||(c=d.len-c);b[a]=d.pos+c};f(a.Axis,"afterDrawCrosshair",function(b){this.variwide&&this.cross&&this.cross.attr("stroke-width",
b.point&&b.point.crosshairWidth)});f(a.Axis,"afterRender",function(){var b=this;!this.horiz&&this.variwide&&this.chart.labelCollectors.push(function(){return b.tickPositions.filter(function(a){return b.ticks[a].label}).map(function(a,e){a=b.ticks[a].label;a.labelrank=b.zData[e];return a})})});f(a.Tick,"afterGetPosition",function(a){var b=this.axis,e=b.horiz?"x":"y";b.variwide&&(this[e+"Orig"]=a.pos[e],this.postTranslate(a.pos,e,this.pos))});e(a.Tick.prototype,"getLabelPosition",function(a,e,f,g,c,
l,m,k){var b=Array.prototype.slice.call(arguments,1),d=c?"x":"y";this.axis.variwide&&"number"===typeof this[d+"Orig"]&&(b[c?0:1]=this[d+"Orig"]);b=a.apply(this,b);this.axis.variwide&&this.axis.categories&&this.postTranslate(b,d,k);return b});""});f(a,"masters/modules/variwide.src.js",[],function(){})});
//# sourceMappingURL=variwide.js.map