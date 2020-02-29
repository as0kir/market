<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<h1>Редактирование товара</h1>

<br>

<s:url value="/admin/products/{productId}/edit" var="edit_action">
	<s:param name="productId" value="${product.productId}"/>
</s:url>
<sf:form id="productForm" class="form-horizontal"
		 modelAttribute="product"
		 action="${edit_action}" method="post">

	<sf:hidden path="productId" name="productId" value="${product.productId}"/>

	<tiles:insertAttribute name="form-fields"/>

	<div class="form-group">
		<div class="col-sm-offset-3 col-sm-8">
			<a href="<c:url value="/admin/products" />" class="btn btn-default">
				Вернуться
			</a>
			<button type="submit" class="btn btn-primary">
				Изменить
			</button>
		</div>
	</div>

</sf:form>

