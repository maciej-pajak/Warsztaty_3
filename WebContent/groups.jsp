<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:pageWrapper title="Groups">
    <jsp:body>
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Groups</h1>
            </div>
        </div>
        <div class="row">
                <div class="col-lg-12">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>Group</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${groups}" var="group">
                                        <tr class="odd gradeX">
                                            <td>${group.name}</td>
                                            <td><a href='<c:url value="group-users?id=${group.id}"/>'>Show users</a></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                </div>
            </div>
    </jsp:body>
</t:pageWrapper>