package model;

import ChartDirector.Chart;
import ChartDirector.LegendBox;
import ChartDirector.PolarChart;

public class ChartService {
	PolarChart c = null;

	public ChartService() {

		// Create a PolarChart object of size 450 x 5000 pixels. Set background
		// color, with 1 pixel
		// 3D border effect
		c = new PolarChart(450, 500, 0x80ffffff, 0x666666, 1);

		// Add a title to the chart using 12pt Verdane Bold Italic font. The
		// title
		// text is white (ffffff) on a (0xd4e3e5) background
		c.addTitle("Dependency of securitygoals and their level of security", "Verdana Bold Italic", 12, 0xffffff)
				.setBackground(0xd4e3e5);

		// Set plot area center at (240, 210), with 150 pixels radius, and a
		// white (ffffff) background.
		c.setPlotArea(225, 200, 130, 0xffffff);

		// Add a legend box at top righrt corner (470, 35) using 10pt Verdana
		// Bold
		// font. Set the background, with 1 pixel 3D border effect.
		LegendBox b = c.addLegend(350, 380, true, "Verdana Bold", 7);
		b.setAlignment(Chart.BottomRight2);
		b.setBackground(0xd4e3e5, Chart.Transparent, 1);
		b.addKey("[1] QM", 0xffffff);
		b.addKey("[2] Low", 0xffffff);
		b.addKey("[3] Medium", 0xffffff);
		b.addKey("[4] High", 0xffffff);
		b.addKey("[5] Critical", 0xffffff);

	}

	public PolarChart getChart() {
		return c;
	}

	public void setData(double currentData[], String dataName) {
		// add an area layer to the chart using semi-transparent;
		// add a line layer using the same data with 2 pixel line width to
		// highlight the border of the area.
		c.addAreaLayer(currentData, 0x50729ea5, dataName);
		c.addLineLayer(currentData, 0x729ea5).setLineWidth(2);
		c.addLineLayer(currentData, 0x729ea5).setDataSymbol(Chart.TriangleSymbol, 5);
	}

	public void setAxisLabels(String labels[]) {
		// Set the labels to the angular axis as spokes.
		c.angularAxis().setLabels(labels).setFontSize(7);
	}
}
