package com.zxh.crawlerdisplay.core.utils.excel;

import com.zxh.crawlerdisplay.core.common.exception.BusinessException;
import org.apache.commons.lang.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.*;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * 操作Excel表格的功能类
 */
public class ExcelReader {
	private POIFSFileSystem fs;
	private Workbook wb;
	private Sheet sheet;
	private Row row;

	/**
	 * 读取Excel表格表头的内容
	 * 
	 * @param sheetIndex
	 *            sheet序号从0开始
	 * @return String 表头内容的数组
	 * 
	 */
	public Map<String, Object> readExcelTitle(InputStream is, Integer sheetIndex, String fileName) {

		String fileType = fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length());
		Workbook wb = null;

		try {
			if (fileType.equals("xls")) {
				wb = new HSSFWorkbook(is);
			} else if (fileType.equals("xlsx")) {
				wb = new XSSFWorkbook(is);
			} else {
				System.out.println("您输入的excel格式不正确");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}

		Map<String, Object> result = new HashMap<String, Object>();

		// try {
		// fs = new POIFSFileSystem(is);
		// wb = new HSSFWorkbook(fs);
		// } catch (IOException e) {
		// e.printStackTrace();
		// }

		sheet = wb.getSheetAt(sheetIndex);
		row = sheet.getRow(0);
		// 标题总列数
		int colNum = row.getPhysicalNumberOfCells();
		System.out.println("colNum:" + colNum);
		List<String> title = new ArrayList<String>();
		for (int i = 0; i < colNum; i++) {
			// title[i] = getStringCellValue(row.getCell((short) i));
			title.add(getCellFormatValue(row.getCell((short) i)));
		}
		result.put("title", title);
		result.put("sheetName", sheet.getSheetName());
		return result;
	}

	/**
	 * 读取Excel数据内容
	 * 
	 * @return Map 包含单元格数据内容的Map对象
	 */
	public Map<Integer, Map<Integer, String>> readExcelContent(InputStream is, Integer sheetIndex, String fileName) {
		Map<Integer, Map<Integer, String>> content = new HashMap<Integer, Map<Integer, String>>();
		String str = "";

		String fileType = fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length());
		Workbook wb = null;

		try {
			if (fileType.equals("xls")) {
				wb = new HSSFWorkbook(is);
			} else if (fileType.equals("xlsx")) {
				wb = new XSSFWorkbook(is);
			} else {
				throw new BusinessException("文件格式不是excle文件的格式！");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}

		// try {
		// fs = new POIFSFileSystem(is);
		// wb = new HSSFWorkbook(fs);
		// } catch (IOException e) {
		// e.printStackTrace();
		// }

		sheet = wb.getSheetAt(sheetIndex);
		// 得到总行数
		int rowNum = sheet.getLastRowNum();
		row = sheet.getRow(0);
		int colNum = row.getPhysicalNumberOfCells();

		StringBuilder rowContents = new StringBuilder();

		// 正文内容应该从第二行开始,第一行为表头的标题
		for (int i = 1; i <= rowNum; i++) {
			row = sheet.getRow(i);
			int j = 0;
			Map<Integer, String> rowEntry = new HashMap<Integer, String>();
			rowContents.delete(0, rowContents.length());
			while (j < colNum) {
				// 每个单元格的数据内容用"-"分割开，以后需要时用String类的replace()方法还原数据
				// 也可以将每个单元格的数据设置到一个javabean的属性中，此时需要新建一个javabean
				// str += getStringCellValue(row.getCell((short) j)).trim() +
				// "-";
				// str += getCellFormatValue(row.getCell((short) j)).trim() +
				// "    ";
				str = getCellFormatValue(row.getCell((short) j)).trim();
				rowContents.append(str);
				rowEntry.put(j, str);
				j++;
			}
            if (!StringUtils.isBlank(rowContents.toString())) {
				content.put(i, rowEntry);
			}

			str = "";
		}

		return content;
	}

	/**
	 * 读取Excel数据内容,新增范围控制(开始结束大小逻辑默认正确)
	 *
     *
	 * @return Map 包含单元格数据内容的Map对象
	 */
	public Map<Integer, Map<Integer, String>> readExcelContent2(InputStream is, Integer sheetIndex, String fileName, Integer xStart, Integer xEnd,
			Integer yStart, Integer yEnd) {

		if (xStart == null) {
			xStart = 0;
		}
		;
		if (yStart == null) {
			yStart = 0;
		}
		;

		Map<Integer, Map<Integer, String>> content = new LinkedHashMap<Integer, Map<Integer, String>>();
		String str = "";

		String fileType = fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length());
		Workbook wb = null;

		try {
			if (fileType.equals("xls")) {
				wb = new HSSFWorkbook(is);
			} else if (fileType.equals("xlsx")) {
				wb = new XSSFWorkbook(is);
			} else {
				throw new BusinessException("文件格式不是excle文件的格式！");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}

		sheet = wb.getSheetAt(sheetIndex);
		// 得到总行数
		int rowNum = sheet.getLastRowNum();
		if (yEnd != null && rowNum > yEnd) {
			rowNum = yEnd;
		}
		row = sheet.getRow(0);
		int colNum = row.getPhysicalNumberOfCells();
		if (xEnd != null && colNum > xEnd) {
			colNum = xEnd;
		}

		StringBuilder rowContents = new StringBuilder();

		// 正文内容应该从第二行开始,第一行为表头的标题
		for (int i = yStart, yresult = 0; i <= rowNum; i++, yresult++) {
			row = sheet.getRow(i);
			int j = xStart;
			Map<Integer, String> rowEntry = new HashMap<Integer, String>();
			rowContents.delete(0, rowContents.length());
			int xresult = 0;
			while (j <= colNum) {
				str = getCellFormatValue(row.getCell((short) j)).trim();
				rowContents.append(str);
				rowEntry.put(xresult, str);
				j++;
				xresult++;
			}
            if (!StringUtils.isBlank(rowContents.toString())) {
				content.put(yresult, rowEntry);
			}

			str = "";
		}

		return content;
	}

	/**
	 * 获取单元格数据内容为字符串类型的数据
	 * 
	 * @param cell
	 *            Excel单元格
	 * @return String 单元格数据内容
	 */
	private String getStringCellValue(HSSFCell cell) {
		String strCell = "";
		switch (cell.getCellType()) {
		case HSSFCell.CELL_TYPE_STRING:
			strCell = cell.getStringCellValue();
			break;
		case HSSFCell.CELL_TYPE_NUMERIC:
			strCell = String.valueOf(cell.getNumericCellValue());
			break;
		case HSSFCell.CELL_TYPE_BOOLEAN:
			strCell = String.valueOf(cell.getBooleanCellValue());
			break;
		case HSSFCell.CELL_TYPE_BLANK:
			strCell = "";
			break;
		default:
			strCell = "";
			break;
		}
		if (strCell.equals("") || strCell == null) {
			return "";
		}
		if (cell == null) {
			return "";
		}
		return strCell;
	}

	/**
	 * 获取单元格数据内容为日期类型的数据
	 * 
	 * @param cell
	 *            Excel单元格
	 * @return String 单元格数据内容
	 */
	private String getDateCellValue(HSSFCell cell) {
		String result = "";
		try {
			int cellType = cell.getCellType();
			if (cellType == HSSFCell.CELL_TYPE_NUMERIC) {
				Date date = cell.getDateCellValue();
				result = (date.getYear() + 1900) + "-" + (date.getMonth() + 1) + "-" + date.getDate();
			} else if (cellType == HSSFCell.CELL_TYPE_STRING) {
				String date = getStringCellValue(cell);
				result = date.replaceAll("[年月]", "-").replace("日", "").trim();
			} else if (cellType == HSSFCell.CELL_TYPE_BLANK) {
				result = "";
			}
		} catch (Exception e) {
			System.out.println("日期格式不正确!");
			e.printStackTrace();
		}
		return result;
	}

	/**
	 * 根据HSSFCell类型设置数据
	 * 
	 * @param cell
	 * @return
	 */
	private String getCellFormatValue(Cell cell) {
		String cellvalue = "";
		if (cell != null) {
			// 判断当前Cell的Type
			switch (cell.getCellType()) {
			// 如果当前Cell的Type为NUMERIC
			case HSSFCell.CELL_TYPE_NUMERIC:
			case HSSFCell.CELL_TYPE_FORMULA: {
				// 判断当前的cell是否为Date
				if (HSSFDateUtil.isCellDateFormatted(cell)) {
					// 如果是Date类型则，转化为Data格式

					// 方法1：这样子的data格式是带时分秒的：2011-10-12 0:00:00
					// cellvalue = cell.getDateCellValue().toLocaleString();

					// 方法2：这样子的data格式是不带带时分秒的：2011-10-12
					Date date = cell.getDateCellValue();
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
					cellvalue = sdf.format(date);

				}
				// 如果是纯数字
				else {
					// 取得当前Cell的数值
					// cellvalue = String.valueOf(cell.getNumericCellValue());

					// ------------------修改,若日期输入为一数字串,会使用科学计数法
					DecimalFormat df = new DecimalFormat("#");
					cellvalue = df.format(cell.getNumericCellValue());
				}
				break;
			}
			// 如果当前Cell的Type为STRIN
			case HSSFCell.CELL_TYPE_STRING:
				// 取得当前的Cell字符串
				cellvalue = cell.getRichStringCellValue().getString();
				break;
			// 默认的Cell值
			default:
				cellvalue = " ";
			}
		} else {
			cellvalue = "";
		}
		return cellvalue;

	}

	public static void main(String[] args) {
		try {
			// 对读取Excel表格标题测试
			// InputStream is = new
			// FileInputStream("C:\\Users\\Java2\\Desktop\\软件\\文件移交导入模板2.xls");
			ExcelReader excelReader = new ExcelReader();
			// String[] title = excelReader.readExcelTitle(is,1);
			// System.out.println("获得Excel表格的标题:");
			// for (String s : title) {
			// System.out.print(s + " ");
			// }

			// 对读取Excel表格内容测试
			// InputStream is2 = new
			// FileInputStream("C:\\Users\\Java2\\Desktop\\软件\\文件移交导入模板2.xls");
			// InputStream is2 = new
			// FileInputStream("C:\\Users\\Java2\\Desktop\\软件\\文件移交导入模板.xlsx");
			// Map<Integer, Map<Integer, String>> map =
			// excelReader.readExcelContent(is2, 1, "文件移交导入模板.xlsx");
			// System.out.println("获得Excel表格的内容:");
			// for (int i = 1; i <= map.size(); i++) {
			// for (int j = 0; j < map.get(i).size(); j++) {
			// System.out.print(map.get(i).get(j) + "	");
			// }
			// System.out.println();
			// }

			Workbook wb = null;

			try {

				wb = new HSSFWorkbook(new FileInputStream(new File("D:/temp.xls")));

			} catch (IOException e) {
				e.printStackTrace();
			}

			wb.removeSheetAt(3);

			File out = new File("D:/temp1.xls");
			wb.write(new FileOutputStream(out));

			System.out.println("over");

		} catch (Exception e) {
			System.out.println("未找到指定路径的文件!");
			e.printStackTrace();
		}
	}
}
