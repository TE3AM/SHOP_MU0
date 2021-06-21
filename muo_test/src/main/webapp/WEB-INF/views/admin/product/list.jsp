<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../common/ad_header.jsp"%>

<section>
	<div id="subPage">
		<div class="subM">
			<h3>PRODUCT</h3>
		</div>
		<div class="ad_product_list">
			<form action="">

				<div align="right" class="button_move">
					<button type="button" class="btn_board_"
						onclick="javascript:location.href='/admin/product/write'">
						<strong>상품등록</strong>
					</button>
					<button type="button" class="btn_board_" onclick="item_btn_delete">
						<strong>상품삭제</strong>
					</button>
				</div>

				<table align="center">
					<colgroup>
						<col style="width: 4%">
						<!-- 체크박스 -->
						<col>
						<!-- 상품코드 -->
						<col style="width: 12%">
						<!-- 이미지 -->
						<col style="width: 12%">
						<!-- 상품명 -->
						<col style="width: 12%">
						<!-- 판매가격 -->
						<col style="width: 12%">
						<!-- 시중가격 -->
						<col style="width: 9%">
						<!-- 재고수량 -->
						<col style="width: 9%">
						<!-- 판 매 -->
						<!-- 판매: 재고수량 0일경우 품절로 판매 비활성화  -->
						<col style="width: 9%">
						<!-- 세 일 -->
						<!-- 세일: 활성화, 비활성화로 수정탭에서 선택가능  -->
						<col>
						<!-- 상품관리 -->
					</colgroup>

					<thead>
						<tr>
							<th rowspan="2">
								<div class="form_element">
									<input type="checkbox" id="allCheck1" class="p_select_all">

								</div>
							</th>
							<th rowspan="2">상품코드</th>
							<th rowspan="2">이미지</th>
							<th colspan="3">분류</th>
							<th rowspan="2">재고수량</th>
							<th rowspan="2">판 매</th>
							<th rowspan="2">세 일</th>
							<th rowspan="2">상품관리</th>
						</tr>
						<tr>
							<th>상품명</th>
							<th>판매가격</th>
							<th>시중가격</th>
						</tr>
					</thead>
					<tbody>

						<tr>
							<td rowspan="2" class="td_chk">
								<div class="form_element">
									<input type="checkbox" id="itemno" class="p_select">

								</div>
							</td>
							<td rowspan="2"><strong class="p_code">21602995251</strong></td>
							<td rowspan="2" class="p_img"><img src="sleevetee.jpg"
								alt="반팔티"></td>

							<td colspan="3">
								<ul>
									<li><select class="p_classification1"
										name="classification1">
											<option value="MAN">MAN</option>
											<option value="WOMAN">WOMAN</option>
											<option value="BEAUTY">BEAUTY</option>
									</select></li>
									<li><select style="width: 270px;"
										class="p_classification_2" name="classification2">
											<option value="Top">Top</option>
											<option value="Outer">Outer</option>
											<option value="Pants">Pants</option>
											<option value="Bag">Bag</option>
											<option value="Shoes">Shoes</option>
											<option value="Other">Other</option>
									</select></li>
								</ul>
							</td>




							<!-- 재고수량 -->
							<td rowspan="2" class="Stock_amount"><strong>200개</strong></td>
							<!-- 세일: 활성화, 비활성화로 수정탭에서 선택가능  -->
							<!-- 판매: 재고수량 0일경우 품절로 판매 비활성화  -->
							<td rowspan="2">
								<div class="form_element">
									<strong>활성화</strong>
								</div>
							</td>
							<td rowspan="2">
								<div class="form_element">
									<strong>활성화</strong>
								</div>
							</td>
							<td>
								<button type="button" class="p_btn" onclick="javascript:location.href='product_write.do'">
									<strong>수정</strong>
								</button>
							</td>
						</tr>

						<tr>
							<td><strong class="p_name">반팔티</strong></td>

							<td class="price">
								<div class="p_price">
									<strong>8,000원</strong>

								</div>
							</td>
							<!-- 시중가격: 세일전 금액 -->
							<td class="before_sale">
								<div class="p_before_sale">
									<strong>8,000원</strong>

								</div>
							</td>
							<td>
								<button type="button" class="btn_board_view"
									onclick="p_btn_view">
									<strong>삭제</strong>
								</button>
							</td>
						<tr>
							<td rowspan="2" class="td_chk">
								<div class="form_element">
									<input type="checkbox" id="itemno" class="p_select"
										checked="checked">

								</div>
							</td>
							<td rowspan="2"><strong class="p_code">21602995891</strong>
							</td>
							<td rowspan="2" class="p_img"><img src="jacket.jpg"
								alt="청자켓"></td>

							<td colspan="3">
								<ul>
									<li><select class="p_classification1"
										name="classification1">
											<option value="MAN">MAN</option>
											<option value="WOMAN">WOMAN</option>
											<option value="BEAUTY">BEAUTY</option>
									</select></li>
									<li><select style="width: 270px;"
										class="p_classification_2" name="classification2">
											<option value="Top">Top</option>
											<option value="Outer">Outer</option>
											<option value="Pants">Pants</option>
											<option value="Bag">Bag</option>
											<option value="Shoes">Shoes</option>
											<option value="Other">Other</option>
									</select></li>
								</ul>
							</td>


							<!-- 재고수량 -->
							<td rowspan="2" class="Stock_amount"><strong>900개</strong></td>
							<!-- 세일, 판매: 활성화, 비활성화로 수정탭에서 선택가능  -->
							<td rowspan="2">
								<div class="form_element">
									<strong>활성화</strong>
								</div>
							</td>
							<td rowspan="2">
								<div class="form_element">
									<strong>활성화</strong>
								</div>
							</td>
							<td>
								<button type="button" class="p_btn" onclick="javascript:location.href='product_write.do'">
									<strong>수정</strong>
								</button>
							</td>
						</tr>

						<tr>
							<td><strong class="p_name">청자켓</strong></td>

							<td class="price">
								<div class="p_price">
									<strong>9,000원</strong>

								</div>
							</td>
							<!-- 시중가격: 세일전 금액 -->
							<td class="before_sale">
								<div class="p_before_sale">
									<strong>17,000원</strong>

								</div>
							</td>
							<td>
								<button type="button" class="btn_board_view"
									onclick="p_btn_view">
									<strong>삭제</strong>
								</button>
							</td>

						</tr>

						<tr>
							<td rowspan="2" class="td_chk">
								<div class="form_element">
									<input type="checkbox" id="itemno" class="p_select">

								</div>
							</td>
							<td rowspan="2"><strong class="p_code">2102995256</strong></td>
							<td rowspan="2" class="p_img"><img src="pants.jpg" alt="청바지">
							</td>

							<td colspan="3">
								<ul>
									<li><select class="p_classification1"
										name="classification1">
											<option value="MAN">MAN</option>
											<option value="WOMAN">WOMAN</option>
											<option value="BEAUTY">BEAUTY</option>
									</select></li>
									<li><select style="width: 270px;"
										class="p_classification_2" name="classification2">
											<option value="Top">Top</option>
											<option value="Outer">Outer</option>
											<option value="Pants">Pants</option>
											<option value="Bag">Bag</option>
											<option value="Shoes">Shoes</option>
											<option value="Other">Other</option>
									</select></li>
								</ul>
							</td>


							<!-- 재고수량 -->
							<td rowspan="2" class="Stock_amount"><strong>500개</strong></td>
							<!-- 세일, 판매: 활성화, 비활성화로 수정탭에서 선택가능  -->
							<td rowspan="2">
								<div class="product_on_off">
									<strong>활성화</strong>
								</div>
							</td>
							<td rowspan="2">
								<div class="p_sale_State">
									<strong>비활성화</strong>
								</div>
							</td>
							<td>
								<button type="button" class="p_btn" onclick="javascript:location.href='product_write.do'">
									<strong>수정</strong>
								</button>
							</td>
						</tr>

						<tr>
							<td><strong class="p_name">청바지</strong></td>

							<td class="price">
								<div class="p_price">
									<strong>10,000원</strong>

								</div>
							</td>
							<!-- 시중가격: 세일전 금액 -->
							<td class="before_sale">
								<div class="p_before_sale">
									<strong></strong>

								</div>
							</td>
							<td>
								<button type="button" class="btn_board_view"
									onclick="p_btn_view">
									<strong>삭제</strong>
								</button>
							</td>


						</tr>

					</tbody>


				</table>

			</form>
		</div>
	</div>
</section>

<%@ include file="../../common/footer.jsp"%>