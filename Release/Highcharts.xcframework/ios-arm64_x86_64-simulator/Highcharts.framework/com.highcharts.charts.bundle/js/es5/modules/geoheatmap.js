/**
 * Highcharts JS v11.2.0 (2023-10-30)
 *
 * (c) 2009-2022
 *
 * License: www.highcharts.com/license
 */!function(t){"object"==typeof module&&module.exports?(t.default=t,module.exports=t):"function"==typeof define&&define.amd?define("highcharts/modules/geoheatmap",["highcharts"],function(o){return t(o),t.Highcharts=o,t}):t("undefined"!=typeof Highcharts?Highcharts:void 0)}(function(t){"use strict";var o=t?t._modules:{};function e(t,o,e,i){t.hasOwnProperty(o)||(t[o]=i.apply(null,e),"function"==typeof CustomEvent&&window.dispatchEvent(new CustomEvent("HighchartsModuleLoaded",{detail:{path:o,module:t[o]}})))}e(o,"Series/GeoHeatmap/GeoHeatmapPoint.js",[o["Core/Utilities.js"],o["Core/Series/SeriesRegistry.js"]],function(t,o){var e,i=this&&this.__extends||(e=function(t,o){return(e=Object.setPrototypeOf||({__proto__:[]})instanceof Array&&function(t,o){t.__proto__=o}||function(t,o){for(var e in o)Object.prototype.hasOwnProperty.call(o,e)&&(t[e]=o[e])})(t,o)},function(t,o){if("function"!=typeof o&&null!==o)throw TypeError("Class extends value "+String(o)+" is not a constructor or null");function i(){this.constructor=t}e(t,o),t.prototype=null===o?Object.create(o):(i.prototype=o.prototype,new i)}),n=o.seriesTypes.map.prototype.pointClass,r=t.isNumber;return function(t){function o(){var o=null!==t&&t.apply(this,arguments)||this;return o.lat=void 0,o.lon=void 0,o.options=void 0,o.series=void 0,o}return i(o,t),o.prototype.applyOptions=function(o,e){var i=t.prototype.applyOptions.call(this,o,e),n=i.options,a=n.lat,s=n.lon;if(r(s)&&r(a)){var p=this.series.options,l=p.colsize,h=void 0===l?1:l,c=p.rowsize,u=void 0===c?1:c,d=s-h/2,y=a-u/2;i.geometry=i.options.geometry={type:"Polygon",coordinates:[[[d,y],[d+h,y],[d+h,y+u],[d,y+u],[d,y]]]}}return i},o}(n)}),e(o,"Series/InterpolationUtilities.js",[o["Core/Globals.js"],o["Core/Utilities.js"]],function(t,o){var e=t.doc,i=o.defined,n=o.pick;return{colorFromPoint:function(t,o){var e=o.series.colorAxis;if(e){var r=e.toColor(t||0,o).split(")")[0].split("(")[1].split(",").map(function(t){return n(parseFloat(t),parseInt(t,10))});return r[3]=255*n(r[3],1),i(t)&&o.visible||(r[3]=0),r}return[0,0,0,0]},getContext:function(t){var o=t.canvas,i=t.context;return o&&i?(i.clearRect(0,0,o.width,o.height),i):(t.canvas=e.createElement("canvas"),t.context=t.canvas.getContext("2d",{willReadFrequently:!0})||void 0,t.context)}}}),e(o,"Series/GeoHeatmap/GeoHeatmapSeries.js",[o["Core/Animation/AnimationUtilities.js"],o["Series/GeoHeatmap/GeoHeatmapPoint.js"],o["Core/Globals.js"],o["Series/InterpolationUtilities.js"],o["Core/Series/SeriesRegistry.js"],o["Core/Utilities.js"]],function(t,o,e,i,n,r){var a,s=this&&this.__extends||(a=function(t,o){return(a=Object.setPrototypeOf||({__proto__:[]})instanceof Array&&function(t,o){t.__proto__=o}||function(t,o){for(var e in o)Object.prototype.hasOwnProperty.call(o,e)&&(t[e]=o[e])})(t,o)},function(t,o){if("function"!=typeof o&&null!==o)throw TypeError("Class extends value "+String(o)+" is not a constructor or null");function e(){this.constructor=t}a(t,o),t.prototype=null===o?Object.create(o):(e.prototype=o.prototype,new e)}),p=t.animObject,l=t.stop,h=e.noop,c=i.colorFromPoint,u=i.getContext,d=n.seriesTypes.map,y=r.addEvent,f=r.extend,g=r.isNumber,m=r.isObject,v=r.merge,b=r.pick;function x(t){return t-360*Math.floor((t+180)/360)}var w=function(t){function o(){var o=null!==t&&t.apply(this,arguments)||this;return o.options=void 0,o.data=void 0,o.points=void 0,o.canvas=void 0,o.context=void 0,o.isDirtyCanvas=!0,o}return s(o,t),o.prototype.update=function(){this.options=v(this.options,arguments[0]),this.getInterpolation().enabled&&(this.isDirtyCanvas=!0,this.points.forEach(function(t){t.graphic&&(t.graphic.destroy(),delete t.graphic)})),t.prototype.update.apply(this,arguments)},o.prototype.translate=function(){(!this.getInterpolation().enabled||!this.image||this.isDirty||this.isDirtyData)&&t.prototype.translate.apply(this,arguments)},o.prototype.getInterpolation=function(){return m(this.options.interpolation)?this.options.interpolation:{blur:1,enabled:this.options.interpolation}},o.prototype.drawPoints=function(){var o=this.chart.mapView,e=this.options;if(this.getInterpolation().enabled&&o&&this.bounds){var i=this.context||u(this),n=this.canvas,r=this.colorAxis,a=this.image,s=this.chart,h=this.points,d=[b(e.colsize,1),b(e.rowsize,1)],y=d[0],f=d[1],m=o.projectedUnitsToPixels({x:this.bounds.x1,y:this.bounds.y2}),x=o.projectedUnitsToPixels({x:this.bounds.x2,y:this.bounds.y1});if(n&&i&&r&&m&&x){var w={x:m.x,y:m.y,width:x.x-m.x,height:x.y-m.y};if(this.isDirtyCanvas||this.isDirtyData||"Orthographic"===o.projection.options.name){this.isDirtyCanvas=!0;var C=n.width=~~(360/y)+1,j=n.height=~~(180/f)+1,D=C*j,_=new Uint8ClampedArray(4*D);this.directTouch=!1;for(var O=0;O<h.length;O++){var P=h[O],I=new Uint8ClampedArray(c(P.value,P)),U=P.options,T=U.lon,A=U.lat;g(T)&&g(A)&&_.set(I,4*Math.ceil(C*(j-1-(A+90)/f)+(T+180)/y))}var S=this.getInterpolation().blur,L=0===S?1:11*S,H=~~(C*L),E=~~(j*L),G=~~w.width,R=~~w.height,z=new ImageData(_,C,j);n.width=H,n.height=E,i.putImageData(z,0,0),i.globalCompositeOperation="copy",i.drawImage(n,0,0,z.width,z.height,0,0,n.width,n.height);var k=i.getImageData(0,0,n.width,n.height),M=this.getProjectedImageData(o,G,R,k,n,w.x,w.y),N=new ImageData(M,G,R);i.globalCompositeOperation="copy",n.width=G,n.height=R,i.putImageData(N,0,0)}if(a){if(s.renderer.globalAnimation&&s.hasRendered){var F=Number(a.attr("x")),X=Number(a.attr("y")),V=Number(a.attr("width")),Y=Number(a.attr("height")),q=function(t,o){a.attr({x:F+(w.x-F)*o.pos,y:X+(w.y-X)*o.pos,width:V+(w.width-V)*o.pos,height:Y+(w.height-Y)*o.pos})},J=v(p(s.renderer.globalAnimation)),K=J.step;J.step=function(){K&&K.apply(this,arguments),q.apply(this,arguments)},a.attr(v({animator:0},this.isDirtyCanvas?{href:n.toDataURL("image/png",1)}:void 0)).animate({animator:1},J)}else l(a),a.attr(v(w,this.isDirtyCanvas?{href:n.toDataURL("image/png",1)}:void 0))}else this.image=s.renderer.image(n.toDataURL("image/png",1)).attr(w).add(this.group);this.isDirtyCanvas=!1}}else t.prototype.drawPoints.apply(this,arguments)},o.prototype.getProjectedImageData=function(t,o,e,i,n,r,a){for(var s,p=new Uint8ClampedArray(o*e*4),l=b(null===(s=t.projection.options.rotation)||void 0===s?void 0:s[0],0),h=n.width/360,c=-1*n.height/180,u=-1,d=0;d<p.length;d+=4){var y=d/4%o;0===y&&u++;var f=t.pixelsToLonLat({x:r+y,y:a+u});if(f){f.lon>-180-l&&f.lon<180-l&&(f.lon=x(f.lon));var g=[f.lon,f.lat],m=g[0]*h+n.width/2,v=g[1]*c+n.height/2;if(m>=0&&m<=n.width&&v>=0&&v<=n.height){var w=Math.floor(v)*n.width*4+4*Math.round(m);p[d]=i.data[w],p[d+1]=i.data[w+1],p[d+2]=i.data[w+2],p[d+3]=i.data[w+3]}}}return p},o.prototype.searchPoint=function(t,o){var e=this.chart,i=e.mapView;if(i&&this.bounds&&this.image&&e.tooltip&&e.tooltip.options.enabled){if(!1===e.pointer.hasDragged&&(.01>=+this.image.attr("animator")||+this.image.attr("animator")>=.99)){var n=i.projectedUnitsToPixels({x:this.bounds.x1,y:this.bounds.y2}),r=i.projectedUnitsToPixels({x:this.bounds.x2,y:this.bounds.y1});if(e.pointer.normalize(t),t.lon&&t.lat&&n&&r&&t.chartX-e.plotLeft>n.x&&t.chartX-e.plotLeft<r.x&&t.chartY-e.plotTop>n.y&&t.chartY-e.plotTop<r.y)return this.searchKDTree({clientX:t.chartX,lon:x(t.lon),lat:t.lat},o,t)}else e.tooltip.destroy()}},o.defaultOptions=v(d.defaultOptions,{nullColor:"transparent",tooltip:{pointFormat:"Lat: {point.lat}, Lon: {point.lon}, Value: {point.value}<br/>"},borderWidth:0,colsize:1,rowsize:1,stickyTracking:!0,interpolation:{enabled:!1,blur:1}}),o}(d);return y(w,"afterDataClassLegendClick",function(){this.isDirtyCanvas=!0,this.drawPoints()}),f(w.prototype,{type:"geoheatmap",applyJitter:h,pointClass:o,pointArrayMap:["lon","lat","value"],kdAxisArray:["lon","lat"]}),n.registerSeriesType("geoheatmap",w),w}),e(o,"masters/modules/geoheatmap.src.js",[],function(){})});//# sourceMappingURL=geoheatmap.js.map