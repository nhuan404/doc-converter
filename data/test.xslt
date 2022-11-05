<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="UTF-8" omit-xml-declaration="yes" indent="yes" />
	<xsl:strip-space elements="*"/>

	<xsl:template match="/">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<title>HTML to PDF</title>
				<meta charset="utf-8" />
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
				<link href="style.css" rel="stylesheet" type="text/css" />
			</head>
			<body>
				<table class="header">
					<tbody>
						<tr>
							<td style="text-align: center; vertical-align: top;">FUSHAN TECHNOLOGY <br/>(VIETNAM)</td>
							<td style="text-align: center; vertical-align: top;">MONTHLY INDIVIDUAL PAYSLIP/BẢNG THANH TOÁN LƯƠNG HÀNG THÁNG</td>
						</tr>
					</tbody>
				</table>
				<table>
					<tbody>
						<tr>
							<td style="width: 50%"></td>
							<td style="width: 50%" class="txt-bold">Pay period/Tháng: <xsl:value-of select="root/data/DATE_MONTH_YEAH_US_1" /></td>
						</tr>
					</tbody>
				</table>
				<table>
					<tbody>
							<tr>
								<td style="vertical-align: top;">
									<table style="vertical-align: top;">
											<tbody>
													<xsl:if test="root/data/G != ''">
													<tr>
														<td>Department/Phòng ban</td>
														<td><xsl:value-of select="root/data/G" /></td>
													</tr>
													</xsl:if>
													<xsl:if test="root/data/C != ''">
													<tr>
														<td>Employee Code/Mã nhân viên</td>
														<td><xsl:value-of select="root/data/C" /></td>
													</tr>
													</xsl:if>
													<xsl:if test="root/data/D != ''">
													<tr>
														<td>Name/Tên</td>
														<td><xsl:value-of select="root/data/D" /></td>
													</tr>
													</xsl:if>
													<xsl:if test="root/data/EB != ''">
													<tr>
														<td>Tax code/Mã số thuế</td>
														<td><xsl:value-of select="root/data/EB" /></td>
													</tr>
													</xsl:if>
													<xsl:if test="root/data/E != ''">
													<tr>
														<td>Job title/Chức danh</td>
														<td><xsl:value-of select="root/data/E" /></td>
													</tr>
													</xsl:if>
													<xsl:if test="root/data/H != ''">
													<tr>
														<td>Join date/Ngày vào làm</td>
														<td><xsl:value-of select="root/data/H" /></td>
													</tr>
													</xsl:if>
											</tbody>
									</table>
								</td>
								<td style="vertical-align: top;">
									<table style="vertical-align: top;">
											<tbody>
													<xsl:if test="root/data/V != ''">
													<tr>
														<td>Standard working hours/Giờ công tiêu chuẩn</td>
														<td><xsl:value-of select="root/data/V" /></td>
													</tr>
													</xsl:if>
													<xsl:if test="root/data/Y != ''">
													<tr>
														<td>Actual day WK hours/Giờ công thực tế (ngày)</td>
														<td><xsl:value-of select="root/data/Y" /></td>
													</tr>
													</xsl:if>
													<xsl:if test="root/data/Z != ''">
													<tr>
														<td>Actual night WK hours/Giờ công thực tế (đêm)</td>
														<td><xsl:value-of select="root/data/Z" /></td>
													</tr>
													</xsl:if>
													<xsl:if test="root/data/AA != ''">
													<tr>
														<td>Annual leave/Nghỉ phép năm</td>
														<td><xsl:value-of select="root/data/AA" /></td>
													</tr>
													</xsl:if>
													<xsl:if test="root/data/AB != ''">
													<tr>
														<td>PHL &amp; LSX/Nghỉ lễ &amp; nghỉ sản xuất</td>
														<td><xsl:value-of select="root/data/AB" /></td>
													</tr>
													</xsl:if>
													<xsl:if test="root/data/AC != ''">
													<tr>
														<td>Paid sick leave/Nghỉ ốm đơn lẻ</td>
														<td><xsl:value-of select="root/data/AC" /></td>
													</tr>
													</xsl:if>
													<xsl:if test="root/data/AC != ''">
													<tr>
														<td>Paid sick leave/Nghỉ ốm đơn lẻ</td>
														<td><xsl:value-of select="root/data/AC" /></td>
													</tr>
													</xsl:if>
													<xsl:variable name="tempAD" select="root/data/AD"/>
													<xsl:variable name="tempAE" select="root/data/AE"/>
													<xsl:if test="($tempAD + $tempAE) != ''">
													<tr>
														<td>Paid leave/Nghỉ hưởng lương</td>
														<td>
															<xsl:value-of select="$tempAD + $tempAE" />
														</td>
													</tr>
													</xsl:if>
													<xsl:if test="root/data/AF != ''">
													<tr>
														<td>UL/Nghỉ không lương</td>
														<td><xsl:value-of select="root/data/AF" /></td>
													</tr>
													</xsl:if>
													<xsl:if test="root/data/AG != ''">
													<tr>
														<td>UAL/Nghỉ không  xin phép</td>
														<td><xsl:value-of select="root/data/AG" /></td>
													</tr>
													</xsl:if>
													<xsl:if test="root/data/AH != ''">
													<tr>
														<td>SL/Nghỉ ốm hưởng BHXH</td>
														<td><xsl:value-of select="root/data/AH" /></td>
													</tr>
													</xsl:if>
											</tbody>
									</table>
								</td>
							</tr>
					</tbody>
				</table>
				<p style="margin: 5px 0px;text-align: center;font-size: 12px;font-weight: bold;">SALARY DESCRIPTION/DIỄN GIẢI</p>
				<table class="description">
					<tbody>
						<tr class="txt-center">
							<td style="width: 85%;"></td>
							<td style="width: 15%;">Current month/Tháng này</td>
						</tr>
						<tr>
							<td colspan="2">&#x00A0;</td>
						</tr>
						<xsl:variable name="K" select="root/data/K"/>
						<tr class="txt-bold txt-center">
							<td class="txt-left">(A) GROSS SALARY/LƯƠNG GỘP</td>
							<td><xsl:value-of select="format-number($K,'#,###')" /></td>
						</tr>
						<xsl:variable name="DA" select="root/data/DA"/>
						<tr class="txt-center txt-bold">
							<td class="txt-left">(B) TOTAL INCOME/TỔNG THU NHẬP</td>
							<td><xsl:value-of select="format-number($DA,'#,###')" /></td>
						</tr>
						<tr>
							<td colspan="2">
								<table>
									<tbody>
										<tr>
											<td style="width: 65%;font-weight: bold;text-align: left;font-style: italic;">Actual Salary/Lương thực tế</td>
											<td class="txt-center" style="width: 20%;"></td>
											<td class="txt-center" style="width: 15%;"></td>
										</tr>
										<xsl:variable name="tempAP" select="root/data/AP"/>
										<xsl:if test="$tempAP != ''">
										<tr>
											<td class="p-l-30">Actual WK day Salary/Lương thực tế (ngày)</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number($tempAP,'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:variable name="tempY" select="root/data/Y"/>
										<xsl:variable name="tempZ" select="root/data/Z"/>
										<xsl:variable name="tempK" select="root/data/K"/>
										<xsl:variable name="tempV" select="root/data/V"/>
										<xsl:if test="($tempY + $tempZ) != ''">
										<tr>
											<td class="p-l-30">Actual WH hours/Giờ công thực tế</td>
											<td class="txt-center"><xsl:value-of select="$tempY + $tempZ" /> hrs/giờ</td>
											<xsl:if test="$tempV &lt;= 208">
											<td class="txt-center"><xsl:value-of select="format-number(($tempK div $tempV) * ($tempY + $tempZ),'#,###')" /></td>
											</xsl:if>
											<xsl:if test="$tempV &gt; 208">
											<td class="txt-center"><xsl:value-of select="format-number(($tempK div 208) * ($tempY + $tempZ),'#,###')" /></td>
											</xsl:if>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/AA != ''">
										<tr>
											<xsl:variable name="tempAA" select="root/data/AA"/>
											<td class="p-l-30">Annual leave/Nghỉ phép năm</td>
											<td class="txt-center"><xsl:value-of select="root/data/AA" /> hrs/giờ</td>
											<xsl:if test="$tempV &lt;= 208">
											<td class="txt-center"><xsl:value-of select="format-number(($tempK div $tempV) * $tempAA,'#,###')" /></td>
											</xsl:if>
											<xsl:if test="$tempV &gt; 208">
											<td class="txt-center"><xsl:value-of select="format-number(($tempK div 208) * $tempAA,'#,###')" /></td>
											</xsl:if>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/AB != ''">
										<tr>
											<xsl:variable name="tempAB" select="root/data/AB"/>
											<td class="p-l-30">PHL &amp; LSX/Nghỉ lễ &amp; nghỉ sản xuất</td>
											<td class="txt-center"><xsl:value-of select="root/data/AB" /> hrs/giờ</td>
											<xsl:if test="$tempV &lt;= 208">
											<td class="txt-center"><xsl:value-of select="format-number(($tempK div $tempV) * $tempAB,'#,###')" /></td>
											</xsl:if>
											<xsl:if test="$tempV &gt; 208">
											<td class="txt-center"><xsl:value-of select="format-number(($tempK div 208) * $tempAB,'#,###')" /></td>
											</xsl:if>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/AC != ''">
										<tr>
											<xsl:variable name="tempAC" select="root/data/AC"/>
											<td class="p-l-30">Paid sick leave/Nghỉ ốm đơn lẻ</td>
											<td class="txt-center"><xsl:value-of select="root/data/AC" /> hrs/giờ</td>
											<xsl:if test="$tempV &lt;= 208">
											<td class="txt-center"><xsl:value-of select="format-number(($tempK div $tempV) * $tempAC,'#,###')" /></td>
											</xsl:if>
											<xsl:if test="$tempV &gt; 208">
											<td class="txt-center"><xsl:value-of select="format-number(($tempK div 208) * $tempAC,'#,###')" /></td>
											</xsl:if>
										</tr>
										</xsl:if>
										<xsl:variable name="tempAD" select="root/data/AD"/>
										<xsl:variable name="tempAE" select="root/data/AE"/>
										<xsl:if test="($tempAD + $tempAE) != ''">
										<tr>
											<td class="p-l-30">Paid leave/Nghỉ hưởng lương</td>
											<td class="txt-center"><xsl:value-of select="$tempAD + $tempAE" /> hrs/giờ</td>
											<xsl:if test="$tempV &lt;= 208">
											<td class="txt-center"><xsl:value-of select="format-number(($tempK div $tempV) * ($tempAD + $tempAE),'#,###')" /></td>
											</xsl:if>
											<xsl:if test="$tempV &gt; 208">
											<td class="txt-center"><xsl:value-of select="format-number(($tempK div 208) * ($tempAD + $tempAE),'#,###')" /></td>
											</xsl:if>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/AQ != ''">
										<xsl:variable name="AQ" select="root/data/AQ"/>
										<tr>
											<td class="p-l-30">Nightshift Salary/Lương làm đêm</td>
											<td class="txt-center"><xsl:value-of select="root/data/Z" /> hrs/giờ</td>
											<td class="txt-center"><xsl:value-of select="format-number($AQ,'#,###')" /></td>
										</tr>
										</xsl:if>
										<tr>
											<td class="p-l-30">Overtime Salary/Lương làm thêm</td>
											<td class="txt-center"></td>
											<td class="txt-center"></td>
										</tr>
										<xsl:if test="root/data/BA != ''">
										<xsl:variable name="BA" select="root/data/BA"/>
										<tr>
											<td class="p-l-50">OT 150</td>
											<td class="txt-center"><xsl:value-of select="root/data/AJ" /> hrs/giờ</td>
											<td class="txt-center"><xsl:value-of select="format-number($BA,'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/BB != ''">
										<xsl:variable name="BB" select="root/data/BB"/>
										<tr>
											<td class="p-l-50">OT 200</td>
											<td class="txt-center"><xsl:value-of select="root/data/AK" /> hrs/giờ</td>
											<td class="txt-center"><xsl:value-of select="format-number($BB,'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/BC != ''">
										<xsl:variable name="BC" select="root/data/BC"/>
										<tr>
											<td class="p-l-50">OT 210</td>
											<td class="txt-center"><xsl:value-of select="root/data/AL" /> hrs/giờ</td>
											<td class="txt-center"><xsl:value-of select="format-number($BC,'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/BD != ''">
										<xsl:variable name="BD" select="root/data/BD"/>
										<tr>
											<td class="p-l-50">OT 270</td>
											<td class="txt-center"><xsl:value-of select="root/data/AM" /> hrs/giờ</td>
											<td class="txt-center"><xsl:value-of select="format-number($BD,'#,###')" /></td>
										</tr></xsl:if>
										<xsl:if test="root/data/BE != ''">
										<xsl:variable name="BE" select="root/data/BE"/>
										<tr>
											<td class="p-l-50">OT 300</td>
											<td class="txt-center"><xsl:value-of select="root/data/AN" /> hrs/giờ</td>
											<td class="txt-center"><xsl:value-of select="format-number($BE,'#,###')" /></td>
										</tr></xsl:if>
										<xsl:if test="root/data/BF != ''">
										<xsl:variable name="BF" select="root/data/BF"/>
										<tr>
											<td class="p-l-50">OT 390</td>
											<td class="txt-center"><xsl:value-of select="root/data/AO" /> hrs/giờ</td>
											<td class="txt-center"><xsl:value-of select="format-number($BF,'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/BZ != ''">
										<xsl:variable name="BZ" select="root/data/BZ"/>
										<tr>
											<td class="p-l-30">13th month Salary 2017/Tháng lương thứ 13 năm 2017</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number($BZ,'#,###')" /></td>
										</tr>
										</xsl:if>
									</tbody>
								</table>
							</td>
						</tr>

						<tr>
							<td colspan="2">
								<table>
									<tbody>
										<tr>
											<td style="width: 65%;font-weight: bold;text-align: left;font-style: italic;">Allowances/Các khoản phụ cấp, trợ cấp</td>
											<td style="width: 20%;"></td>
											<td style="width: 15%;"></td>
										</tr>
										<xsl:if test="root/data/AT != ''">
										<xsl:variable name="AT" select="root/data/AT"/>
										<tr>
											<td class="p-l-30">Housing Allowance/Phụ cấp nhà ở</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number($AT,'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/AU != ''">
										<xsl:variable name="AU" select="root/data/AU"/>
										<tr>
											<td class="p-l-30">Assignment Allowance/Trợ cấp điều chuyển công việc</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number($AU,'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/AS != ''">
										<xsl:variable name="AS" select="root/data/AS"/>
										<tr>
											<td class="p-l-30">Transportation Allowance/Phụ cấp đi lại</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number($AS,'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/AW != ''">
										<xsl:variable name="AW" select="root/data/AW"/>
										<tr>
											<td class="p-l-30">Network Allowance/Trợ cấp Internet</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number($AW,'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/BP != ''">
										<xsl:variable name="BP" select="root/data/BP"/>
										<tr>
											<td class="p-l-30">On call duty/Trợ cấp trực điện thoại</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number($BP,'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/AV != ''">
										<xsl:variable name="AV" select="root/data/AV"/>
										<tr>
											<td class="p-l-30">Emergency Responsible Team (ERT allowance)/Trợ cấp phòng cháy </td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number($AV,'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/AX != ''">
										<xsl:variable name="AX" select="root/data/AX"/>
										<tr>
											<td class="p-l-30">Safe &amp; Sanitation allowance/Trợ cấp an toàn và vệ sinh</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number($AX,'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:variable name="tempBX" select="root/data/BX"/>
										<xsl:variable name="tempBY" select="root/data/BY"/>
										<xsl:if test="($tempBX + $tempBY) != ''">
										<tr>
											<td class="p-l-30">Relocation allowance/Trợ cấp chuyển vùng từ nước ngoài</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number(($tempBX + $tempBY),'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/CC != ''">
										<xsl:variable name="CC" select="root/data/CC"/>
										<tr>
											<td class="p-l-30">Severance Allowance/Trợ cấp thôi việc</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number($CC,'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/BU != ''">
										<xsl:variable name="BU" select="root/data/BU"/>
										<tr>
											<td class="p-l-30">Fire fighting training allowance/Trợ cấp đào tạo phòng cháy chữa cháy</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number($BU,'#,###')" /></td>
										</tr>
										</xsl:if>
									</tbody>
								</table>
							</td>
						</tr>

						<tr>
							<td colspan="2">
								<table>
									<tbody>
										<tr>
											<td style="width: 65%;font-weight: bold;text-align: left;font-style: italic;">Bonus/Thưởng</td>
											<td class="txt-center" style="width: 20%;"></td>
											<td class="txt-center" style="width: 15%;"></td>
										</tr>
										<xsl:if test="root/data/BR != ''">
										<xsl:variable name="BR" select="root/data/BR"/>
										<tr>
											<td class="p-l-30">Retention Bonus/Thưởng gắn bó</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number($BR,'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/BQ != ''">
										<xsl:variable name="BQ" select="root/data/BQ"/>
										<tr>
											<td class="p-l-30">Production Incentive/Thưởng quý</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number($BQ,'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/BS != ''">
										<xsl:variable name="BS" select="root/data/BS"/>
										<tr>
											<td class="p-l-30">Sign-on Bonus/Thưởng ký HĐLĐ</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number($BS,'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/BT != ''">
										<xsl:variable name="BT" select="root/data/BT"/>
										<tr>
											<td class="p-l-30">Other bonus/Thưởng khác</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number($BT,'#,###')" /></td>
										</tr>
										</xsl:if>
									</tbody>
								</table>
							</td>
						</tr>

						<tr>
							<td colspan="2">
								<table>
									<tbody>
										<tr>
											<td style="width: 65%;font-weight: bold;text-align: left;font-style: italic;">Other income/Thu nhập khác</td>
											<td class="txt-center" style="width: 20%;"></td>
											<td class="txt-center" style="width: 15%;"></td>
										</tr>
										<xsl:if test="root/data/CA != ''">>
										<xsl:variable name="CA" select="root/data/CA"/>
										<tr>
											<td class="p-l-30">Remaining annual leave/Thanh toán phép tồn khi nghỉ việc</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number($CA,'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/CH != ''">
										<xsl:variable name="CH" select="root/data/CH"/>
										<tr>
											<td class="p-l-30">Payment towards contract end date/Thanh toán đến hết hạn HĐ</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number($CH,'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/BW != ''">
										<xsl:variable name="BW" select="root/data/BW"/>
										<tr>
											<td class="p-l-30">SI allowance (by Social Insurance)/Trợ cấp BHXH </td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number($BW,'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/BV != ''">
										<xsl:variable name="BV" select="root/data/BV"/>
										<tr>
											<td class="p-l-30">Top up SL/ML allowance for IDL/Trợ cấp ốm đau/thai sản cho IDL</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number($BV,'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/DJ != ''">
										<xsl:variable name="DJ" select="root/data/DJ"/>
										<tr>
											<td class="p-l-30">Returned PIT/Hoàn thuế PIT</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number($DJ,'#,###')" /></td>
										</tr>
										</xsl:if>
									</tbody>
								</table>
							</td>
						</tr>

						<tr>
							<td colspan="2">
								<table>
									<tbody>
										<tr>
											<td style="width: 65%;font-weight: bold;text-align: left;font-style: italic;">Other adjustment/Điều chỉnh khác</td>
											<td class="txt-center" style="width: 20%;"></td>
											<td class="txt-center" style="width: 15%;"></td>
										</tr>
										<xsl:variable name="tempBJ" select="root/data/BJ"/>
										<xsl:variable name="tempBN" select="root/data/BN"/>
										<xsl:variable name="tempCD" select="root/data/CD"/>
										<xsl:if test="($tempBJ + $tempBN + $tempCD) != ''">
										<tr>
											<td class="p-l-30">Salary adjustment/Điều chỉnh lương và phụ cấp</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number(($tempBJ + $tempBN + $tempCD),'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:variable name="tempBK" select="root/data/BK"/>
										<xsl:variable name="tempCE" select="root/data/CE"/>
										<xsl:if test="($tempBK + $tempCE) != ''">
										<tr>
											<td class="p-l-30">Additional salary for Nightshift adjustment/Điều chỉnh ca đêm</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number(($tempBK + $tempCE),'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:variable name="tempBL" select="root/data/BL"/>
										<xsl:variable name="tempCF" select="root/data/CF"/>
										<xsl:if test="($tempBL + $tempCF) != ''">
										<tr>
											<td class="p-l-30">OT adjustment/Điều chỉnh OT</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number(($tempBL + $tempCF),'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/DE != ''">
										<xsl:variable name="DE" select="root/data/DE"/>
										<tr>
											<td class="p-l-30">Property Deduction/Khấu trừ bàn giao tài sản</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number($DE,'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/BO != ''">
										<xsl:variable name="BO" select="root/data/BO"/>
										<tr>
											<td class="p-l-30">Other adjustment/Điều chỉnh khác</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number($BO,'#,###')" /></td>
										</tr>
										</xsl:if>
									</tbody>
								</table>
							</td>
						</tr>

						<xsl:variable name="CJ" select="root/data/CJ"/>
						<tr class="txt-center txt-bold">
							<td class="txt-left">(C) BENEFIT FOR TAX PURPOSE/PHÚC LỢI CHỊU THUẾ TNCN</td>
							<td><xsl:value-of select="format-number($CJ,'#,###')" /></td>
						</tr>

						<xsl:if test="$CJ != ''">
						<tr>
							<td colspan="2">
								<table>
									<tbody>
										<tr>
											<td class="p-l-30" style="width: 65%;">Health insurance premium/BH sức khỏe cho người phụ thuộc</td>
											<td class="txt-center" style="width: 20%;"></td>
											<td class="txt-center" style="width: 15%;"><xsl:value-of select="format-number($CJ,'#,###')" /></td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
						</xsl:if>

						<xsl:variable name="DB" select="root/data/DB"/>
						<tr class="txt-center txt-bold">
							<td class="txt-left">(D) TAX INCOME/THU NHẬP CHỊU THUẾ</td>
							<td><xsl:value-of select="format-number($DB,'#,###')" /></td>
						</tr>

						<xsl:variable name="CZ" select="root/data/CZ"/>
						<tr class="txt-center txt-bold">
							<td class="txt-left">(E) TAX DEDUCTION/GIẢM TRỪ TRƯỚC THUẾ</td>
							<td><xsl:value-of select="format-number($CZ,'#,###')" /></td>
						</tr>

						<tr>
							<td colspan="2">
								<table>
									<tbody>
										<xsl:variable name="CT" select="root/data/CT"/>
										<xsl:if test="root/data/CT != ''">
										<tr>
											<td class="p-l-30" style="width: 65%;">1. Personal deduction/Giảm trừ cho bản thân</td>
											<td class="txt-center" style="width: 20%;"></td>
											<td class="txt-center" style="width: 15%;"><xsl:value-of select="format-number($CT,'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:if test="root/data/CU != ''">
										<xsl:variable name="CU" select="root/data/CU"/>
										<tr>
											<td class="p-l-30">2. Dependants deduction/Giảm trừ cho người phụ thuộc</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number($CU,'#,###')" /></td>
										</tr>
										</xsl:if>
										<xsl:variable name="tempCV" select="root/data/CV"/>
										<xsl:variable name="tempCW" select="root/data/CW"/>
										<xsl:variable name="tempCX" select="root/data/CX"/>
										<xsl:variable name="tempCY" select="root/data/CY"/>
										<xsl:if test="($tempCV + $tempCW + $tempCX + $tempCY) != ''">
										<tr>
											<td class="p-l-30">3. Social, Health and Unemployment Insurance 10,5% paid by employee/10% BHXH,BHYT,BHTN chi trả bởi nhân viên</td>
											<td class="txt-center"></td>
											<td class="txt-center"><xsl:value-of select="format-number(($tempCV + $tempCW + $tempCX + $tempCY),'#,###')" /></td>
										</tr>
										</xsl:if>
									</tbody>
								</table>
							</td>
						</tr>

						<xsl:variable name="DC" select="root/data/DC"/>
						<tr class="txt-center txt-bold">
							<td class="txt-left">(F) ASSESSABLE INCOME/THU NHẬP TÍNH THUẾ</td>
							<td><xsl:value-of select="format-number($DC,'#,###')" /></td>
						</tr>

						<xsl:variable name="DD" select="root/data/DD"/>
						<tr class="txt-center txt-bold">
							<td class="txt-left">(G) PIT MONTHLY/THUẾ THU NHẬP</td>
							<td><xsl:value-of select="format-number($DD,'#,###')" /></td>
						</tr>

						<xsl:variable name="DG" select="root/data/DG"/>
						<tr class="txt-center txt-bold">
							<td class="txt-left">(H) TRADE UNION (TU) FEE PAID BY EMPLOYEE/ĐOÀN PHÍ </td>
							<td><xsl:value-of select="format-number($DG,'#,###')" /></td>
						</tr>

						<xsl:variable name="DL" select="root/data/DL"/>
						<tr class="txt-center txt-bold">
							<td class="txt-left">(I) NET SALARY/THỰC LĨNH</td>
							<td><xsl:value-of select="format-number($DL,'#,###')" /></td>
						</tr>
					</tbody>
				</table>

				<p>Note: Mọi thắc mắc về lương tháng <xsl:value-of select="root/data/DATE_MONTH_YEAH_VN_1" />, vui lòng liên hệ bộ phận hỗ trợ theo số điện thoại 0913732155 chậm nhất 17:00 ngày 15 tháng <xsl:value-of select="root/data/DATE_MONTH" /> năm <xsl:value-of select="root/data/DATE_YEAH" /> kể từ ngày nhận được phiếu lương chính thức. Sau thời gian này mọi thắc mắc sẽ không được tiếp nhận và giải quyết. Cảm ơn!</p>
				<p class="m-0">For any <xsl:value-of select="root/data/DATE_MONTH_YEAH_US_1" />'s salary query, please contact the payroll support at 0913732155 by latest 17:00 on 15th <xsl:value-of select="root/data/DATE_MONTH_YEAH_US" /> since receipt date of your payslip. Any salary queries raised afterwards will be not addressed and or resolved. Thank you!</p>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
