<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="common.jsp"%>
    <style type="text/css">
        body {
            background: #FFF
        }
    </style>

</head>

<body>
<div id="contentWrap">
    <div class="pageTitle"></div>

    <div class="pageColumn">
        <form action="" method="post">
            店铺主营：
            <select class="border" name="sid"  >
                <option value="">---</option>
                <c:forEach items="${dianpu}" var="kind">
                    <option value="${dianpu.sname}"
                </c:forEach>
            </select>

            <button class="combtn" type="submit">搜索</button>
            <button class="canclebtn" type="cancel">清空</button>
        </form>
    </div>

    <div class="pageTitle">
        <form action="" method="post">
            <input type="hidden" name="cname" value="${dianpu.sname }">
            <input type="hidden" name="pageNo" value="${dianpu.pageNo }">
            <input type="hidden" name="ids">
            <a class="icons-btn" href="${ctx }/dianpu/add"><span class="icons icons-add"></span>添加</a>
            <button class="icons-btn pilianga" data-action="${ctx }/class/pluse" type="submit"><span class="icons icons-use"></span>批量启用</button>
            <button class="icons-btn piliang" data-action="${ctx }/class/plnouse" type="submit"><span class="icons icons-no-use"></span>批量禁用</button>
            <button class="icons-btn piliangd" data-action="${ctx }/class/pldel" type="submit"><span class="icons icons-del"></span>批量删除</button>
        </form>
    </div>

    <div class="pageColumn">
        <table>
            <thead>
            <th width="25"><input name="" type="checkbox" value=""
                                  id="checkalls"/></th>
            <th width="5%">店铺编号</th>
            <th width="10%">店铺主营</th>
            <th width="10%">店铺等级</th>
            <th width="10%">店铺电话</th>
            <th width="10%">店铺地址</th>
            <th width="5%">状态</th>
            <th width="20%">创建时间</th>
            <th width="">操作</th>
            </thead>
            <tbody>
            <c:forEach items="${dianpu_list }" var="item">
                <tr style="background: ${item.status eq 0?'#ffd8d8':'' }">
                    <td class="checkBox"><input name="" type="checkbox" value="${item.cid }" data-status="${item.status }" data-ostatus="${item.kstatus }"
                                                data-dflag="${item.dflag }"
                                                data-wordsd="含有还有商品的分类，不能批量删除!" data-wordsa="含有一级分类被禁用的分类，不能批量启用!"
                                                data-words="含有未被禁用的分类，不能批量删除！"
                                                class="checkitem" /></td>
                    <td>${item.sid }</td>
                    <td>${item.sname }</td>
                    <td>${item.sdiandengji }</td>
                    <td>${item.saddress }</td>
                    <td>${item.stel }</td>
                    <td>${item.status eq 1?'启用':'禁用' }</td>
                    <td>${item.time }</td>

                    <td>
                        <a class="icons-btn a1" href="${ctx }/dianpu/update"
                           data-id="${item.sid}" data-ostatus="${item.kstatus }"
                           data-words="对不起，该类的一级种类已经被禁用，不能修改！"
                        ><span
                                class="icons icons-edit"></span>修改</a>
                        <c:if test="${item.status eq 0 }">
                            <a class="icons-btn a1" href="${ctx }/class/isuse"
                               data-id="${item.sid}" data-ostatus="${item.kstatus }"
                               data-words="对不起，该类的一级种类已经被禁用，不能启用！"
                            ><span
                                    class="icons icons-use"></span>启用</a>
                            <a class="icons-btn subformd" href="${ctx }/class/delete" data-id="${item.cid}"
                               data-dflag="${item.dflag }" data-words="该分类还存在商品，删除失败！"
                            ><span
                                    class="icons icons-del"></span>删除</a>
                        </c:if>
                        <c:if test="${item.status eq 1 }">
                            <a class="icons-btn subform" href="${ctx }/class/isuse" data-id="${item.cid}"><span
                                    class="icons icons-no-use"></span>禁用</a>
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

    <div class="pageTitle footer_fiexed">
        <form action="${ctx }/dianpu/list" method="post">
            <input type="hidden" name="cname" value="${dianpu.sname }">
            <%@ include file="page.jsp"%>
        </form>
    </div>

    <form action="" method="post" id="subform">
        <input type="hidden" name="cid" value="" id="subformId">
        <input type="hidden" name="cname" value="${clas.cname }">
        <input type="hidden" name="pageNo" value="${clas.pageNo }">
    </form>
</div>
</body>


</html>
