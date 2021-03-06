<%@ page import="java.text.SimpleDateFormat" %>
<%@page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    request.setAttribute("sdf", sdf); //request域
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="container">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#addForm").validationEngine('attach');
        });
    </script>
    <div class="container-fluid" id="database">
        <div class="row">
            <jsp:include page="../../left.jsp"/>
            <div class="col-md-9">
                <c:choose>
                    <c:when test="${null ne pageInfo.list and 0 ne pageInfo.list.size()}">
                        <div class="list-group">
                            <c:forEach var="list" items="${pageInfo.list}" varStatus="status">
                                <li class="list-group-item">
                                    <h2 class="list-group-item-heading">
                                        <a
                                        data-toggle="collapse"
                                        href="#responselist${status.index}"
                                        aria-expanded="false"
                                        aria-controls="responselist${status.index}">
                                        ${list.title}
                                        </a>
                                    </h2>
                                    <div class="list-group-item-text" style="text-indent:2em;">
                                        <p>${list.content}</p>
                                        <div class="collapse" id="responselist${status.index}">
                                            <c:choose>
                                                <c:when test="${null ne list.responseDTOList and 0 ne list.responseDTOList.size()}">
                                                    <div class="chat">
                                                        <div class="widget-content padded">
                                                            <ul>
                                                                <c:forEach var="response"
                                                                           items="${list.responseDTOList}">
                                                                    <li>
                                                                        <div class="bubble">
                                                                            <a class="user-name">${response.userName}</a>
                                                                            <p class="message">
                                                                                    ${response.content}
                                                                            </p>
                                                                            <p class="time">
                                                                                <c:out value="${sdf.format(response.updateTime*1000)}"/>
                                                                            </p>
                                                                        </div>
                                                                    </li>
                                                                </c:forEach>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </c:when>
                                                <c:otherwise>
                                                    没有回复
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                    </div>
                                </li>
                            </c:forEach>
                            <li>
                        </div>
                    </c:when>
                    <c:otherwise>
                        没有留言
                    </c:otherwise>
                </c:choose>
                <div style="text-align:center">
                    <button type="button" class="btn btn-default" data-toggle="modal"
                            data-target="#addModal">添加留言
                    </button>
                    <div id="page" style="text-align:center">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 添加留言模体框 -->
    <div class="modal fade" id="addModal" tabindex="-1" role="dialog"
         aria-labelledby="addMessage" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close"
                            data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="addMessage">
                        添加留言
                    </h4>
                </div>
                <div class="modal-body">
                    <form id="addForm" action="/message/add/${currMessageTypeId}/page/${pageInfo.pageNum}"
                          method="post">
                        <div class="form-group">
                            <label for="title">留言标题</label>
                            <input type="input" class="form-control validate[required]" name="title" id="title"
                                   placeholder="留言标题">
                        </div>
                        <div class="form-group">
                            <label for="content">留言内容</label>
                                <textarea class="form-control validate[required]" name="content" id="content"
                                          placeholder="留言内容"
                                          rows="3"></textarea>
                        </div>
                        <button type="submit" class="btn btn-default">提交</button>
                        <button type="button" class="btn btn-default"
                                data-dismiss="modal">取消
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    //好像很实用的样子，后端的同学再也不用写分页逻辑了。
    laypage({
        cont: "page",
        pages: ${pageInfo.pages}, //可以叫服务端把总页数放在某一个隐藏域，再获取。假设我们获取到的是18
        curr: ${pageInfo.pageNum},
        jump: function (e, first) { //触发分页后的回调
            if (!first) { //一定要加此判断，否则初始时会无限刷新
                location.href = '/message/list/${currMessageTypeId}/page/' + e.curr;
            }
        },
        skin: 'molv', //皮肤
        first: ${pageInfo.firstPage}, //将首页显示为数字1,。若不显示，设置false即可
        last: ${pageInfo.lastPage}, //将尾页显示为总页数。若不显示，设置false即可
        prev: '<', //若不显示，设置false即可
        next: '>' //若不显示，设置false即可
    });
</script>