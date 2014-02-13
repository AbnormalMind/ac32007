
<jsp:useBean
	id="myBean"
	scope="request"
	class="uk.ac.dundee.computing.aec.stores.testbean.aBean2" />
<p>In reset:
<jsp:setProperty
	name="myBean"
	property="counter"
	value="0" />
<jsp:getProperty
	name="myBean"
	property="counter"/></p>
