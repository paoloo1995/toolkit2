<#include "../wrapper/import.ftl">
<@htmHead title="进销存-出库单详情">
    <link rel="stylesheet" type="text/css" href="${css_root}module/psinventory/ordermanage.css">
</@htmHead>
<@topHeader />
<div class="g-body f-clearfix">
<div class="g-bd">
	<div class="g-bdc">
		<div class="m-upside f-cb">
			<p>
				<span class="f-mr40">出库单号:${stockOut.id?string}</span>
				<span class="f-mr40">相关单号:${stockOut.relatedId?default('')}</span>
			</p>
		</div>
		<div class="m-content w-table">
			<p class="details">
				<span class="f-mr40">出库仓库：${stockOut.storageName?default('')}</span>
				<span class="f-mr40">出库时间：${stockOut.time?number_to_date?string('yyyy-MM-dd HH:mm:ss')}</span>
				<span class="f-mr40">出库原因：${stockOut.stockOutTypeName?default('')}出库</span>
			</p>
			<table>
				<colgroup>
					<col width="12%"><col width="16%"><col width="10%"><col width="16%"><col width="16%"><col width="10%"><col width="10%"><col width="10%">
				</colgroup>
				<thead>
					<tr>
						<th title="商品ID">商品ID</th>
						<th title="商品名称">商品名称</th>
						<th title="跨境方式">跨境方式</th>
						<th title="条形码">条形码</th>
						<th title="SKU规格">SKU规格</th>
						<th title="出库数量">出库数量</th>
						<th title="良品">良品</th>
						<th title="次品">次品</th>
					</tr>
				</thead>
				<tbody class="list hasborder" style="border: 1px solid #bbb;">
					<#list stockOut.details as detail>
					<tr>
						<td title="商品ID">${detail.inventory.goodsId}</td>
						<td title="商品名称">${detail.inventory.goodsName?default('')}</td>
						<td title="跨境方式">${detail.inventory.importTypeName?default('')}</td>
						<td title="条形码">${detail.inventory.barcode?default('')}</td>
						<td title="SKU规格">${detail.inventory.skuDesc?default('')}</td>
						<td title="出库数量">${detail.count?default(0)}</td>
						<td title="良品">${detail.goodCount?default(0)}</td>
						<td title="次品">${detail.badCount?default(0)}</td>
					</tr>
					</#list>
				</tbody>
			</table>
			<div class="remark">
				<p><b>备注：</b><br>${stockOut.remark?default('')?html}</p>
			</div>
		</div>
	</div>
</div>
<@leftMenu menuObj=menuList curMenuId=requestUrl />
</div>
</body>
</html>