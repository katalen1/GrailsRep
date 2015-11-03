<%@ page import="helloworld.entity.Text" %>



<div class="fieldcontain ${hasErrors(bean: textInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="text.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${textInstance?.title}"/>

</div>

