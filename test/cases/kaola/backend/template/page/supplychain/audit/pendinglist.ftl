<#-- Created by yqj on 27/01/2015. -->
<#-- 商品库存明细表：/backend/myAuditList/completedlist -->

<#include "../../wrapper/import.ftl">
<@htmHead title="审批任务">
    <link rel="stylesheet" type="text/css" href="${css_root}module/date.css">
	<link rel="stylesheet" type="text/css" href="${css_root}module/orderext/order.css">
	<link rel="stylesheet" type="text/css" href="${css_root}module/supplychain/supplychain.css">
</@htmHead>
<@topHeader />
<div class="g-body f-clearfix">
    <div class="g-bd">
        <div class="g-bdc">
            <div class="m-main">
                <div class="m-databox">
                    <div class="head head-1 f-cb m-actionbar">
                        <ul class="m-tab f-cb">
                        	<li class="crt"><a href="/backend/auditTask/pendinglist">待审批任务(${total!''})</a></li>
                        	<li><a href="/backend/auditTask/completedlist">已审批任务</a></li>
                        </ul>
                    </div>
                    <div class="detail">
                        <div id="searchbox" class="w-dataform f-clearfix">
                        	<form id="searchForm">
                        		<div class="f-rowgroup">
                        			<div class="col col-span2"><button id="refresh" class="w-btn w-btn-black btag">刷新</button></div>
                        			<div class="col col-span2">&nbsp;</div>
                        			<div class="col col-span2">&nbsp;</div>
                        			<div class="col col-span4">
                        			审批单号： <input type="text" placeholder="输入审批单号搜索" name="auditNo"/>
                    				<button  name="submit" class="w-btn w-btn-black btag">搜索</button>
                        			</div>
                    			</div>
                        	</form>
                        </div>
                        <div id="list"></div>
                     </div>
                </div>
            </div>
        </div>
    </div>
    <@leftMenu menuObj=menuList curMenuId=requestUrl />
</div>
<@htmFoot />

<!-- @DEFINE -->
<script src="${lib_root}define.js?pro=${pro_root}"></script>
<script src="/backend/src/js/module/supplychain/audit/pendinglist.js"></script>
</body>
</html>