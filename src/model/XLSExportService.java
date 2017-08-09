package model;

import java.io.FileOutputStream;
import java.io.IOException;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

public class XLSExportService {
	private Workbook wb = null;
	private CreationHelper ch = null;

	private Sheet sheet = null;
	private Row row = null;
	private Cell cell = null;
	private CellStyle style = null;
	private Font font = null;

	private String filename = "";
	private int currentRow = 0;

	public XLSExportService(String filename) {
		this.filename = filename;

		wb = new HSSFWorkbook();
		ch = wb.getCreationHelper();
	}

	// creates a (excel-) sheet
	public void creatSheet(String sheetname) {
		this.sheet = wb.createSheet(sheetname);
	}

	// add rows
	public void createRowIntoSheet(int numberOfRow) {
		currentRow = numberOfRow;
		row = this.sheet.createRow((short) numberOfRow);
	}

	// set value into cells
	public void setCellvalueIntoRow(int numberOfColumn, String columnValue) {
		if (currentRow == 0) {
			cell = row.createCell(numberOfColumn);
			cell.setCellValue(ch.createRichTextString(columnValue));
			cell.setCellStyle(styleHeader());
		} else {
			cell = row.createCell(numberOfColumn);
			cell.setCellValue(ch.createRichTextString(columnValue));
			cell.setCellStyle(styleContent());
		}
	}

	// store file the hard disk
	public void fileOut() {
		FileOutputStream fileOut;
		try {
			fileOut = new FileOutputStream(filename + ".xls");
			wb.write(fileOut);
			fileOut.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private CellStyle styleHeader() {
		style = wb.createCellStyle();
		style.setBorderBottom(CellStyle.BORDER_THICK);
		style.setBorderTop(CellStyle.BORDER_THICK);
		style.setBorderLeft(CellStyle.BORDER_THICK);
		style.setBorderRight(CellStyle.BORDER_THICK);
		style.setFont(headerFont());
		style.setFillForegroundColor(IndexedColors.GREY_25_PERCENT.getIndex());
		style.setFillPattern(CellStyle.SOLID_FOREGROUND);

		return style;
	}

	private CellStyle styleContent() {
		style = wb.createCellStyle();
		style.setBorderLeft(CellStyle.BORDER_THIN);
		style.setBorderRight(CellStyle.BORDER_THIN);
		style.setBorderBottom(CellStyle.BORDER_THIN);

		return style;
	}

	private Font headerFont() {
		font = wb.createFont();
		font.setFontHeightInPoints((short) 12);

		return font;
	}

}
