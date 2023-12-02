$(document).ready(function () {
  lineChart();
  donutChart();
  pieChart();
  $(window).resize(function () {
    window.lineChart.redraw();
    window.donutChart.redraw();
    window.pieChart.redraw();
  });
});
function lineChart() {
  window.lineChart = Morris.Line({
    element: "line-chart",
    data: [
      { y: "2017", a: 50, b: 50 },
      { y: "2018", a: 55, b: 60 },
      { y: "2019", a: 50, b: 65 },
      { y: "2020", a: 60, b: 55 },
      { y: "2021", a: 65, b: 70 },
      { y: "2022", a: 70, b: 75 },
      { y: "2023", a: 80, b: 75 },
    ],
    xkey: "y",
    ykeys: ["a", "b"],
    labels: ["Profit", "Expected Profit"],
    lineColors: ["#009688", "#cdc6c6"],
    lineWidth: "3px",
    resize: true,
    redraw: true,
  });
}
function donutChart() {
  window.donutChart = Morris.Donut({
    element: "donut-chart",
    data: [
      { label: "Completed Products", value: 2 },
      { label: "Pending Products", value: 3 },
   
    ],
    backgroundColor: "#f2f5fa",
    labelColor: "#009688",
    colors: ["#0BA462", "#39B580", "#67C69D", "#95D7BB"],
    resize: true,
    redraw: true,
  });
}
function pieChart() {
  var paper = Raphael("pie-chart");
  paper.piechart(100, 100, 90, [18.373, 18.686, 2.867, 23.991, 9.592, 0.213], {
    legend: [
      "Windows/Windows Live",
      "Server/Tools",
      "Online Services",
      "Business",
      "Entertainment/Devices",
      "Unallocated/Other",
    ],
  });
}
