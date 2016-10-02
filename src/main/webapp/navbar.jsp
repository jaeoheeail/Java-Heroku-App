<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>




	<%
		String content = (request.getParameter("content"));
		Integer contentTypeId = 0;
		if (content != null){
	 		contentTypeId = Integer.parseInt(content);
		}
	
		String pages = request.getParameter("pages");
		if (pages == null){
			pages = "";
			
		}
			
		String user = null;

	%>
	
<header class="masthead" style="position: fixed">
	<!--  for mobile -->
	<nav class="navbar navbar-default visible-sm visible-xs hidden-ms hidden-md hidden-lg">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">sToggle navigation</span> 
					<span class="icon-bar"></span> <span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				<a class="pullleft" href="#"><img src="img/logomark_v3.png" alt="Logo" style="width: 20%"></a>
			</div>
			
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
                    <li style="padding-top: 15px; padding-right: 50px;">
                        <form name='searchForm' action='SearchServlet' method='GET'>
                            <fieldset>
                                <div class="form-group">
                                    <input type="text" name="searchString"  class="form-control input-lg" placeholder="search" autofocus>
                                </div>
                            </fieldset>
                        </form>
                    </li>
					<li><a href="#">Home</a></li>
					<li><a href= "#" style="color: #fe6a5d;">Piano</a></li>
					<li><a href="#" style="color:#689ad4;">Guitar</a></li>
					<li><a href="#" style="color: #52c1a8;">Violin</a></li>
					<li><a href="#" style="color: #fab63d;">Recorder</a></li>
                    <%
                        if (user == null) {
                    %> 
					<li style="font-color: #7F7477"><a href="#">Log&nbsp;In/Sign&nbsp;Up</a>
					</li>
                    <%
                        } else {
                    %> 
                    <li class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Settings <span class="caret"></span></a>
                          <ul class="dropdown-menu">
                                <li><a href="#"> Update Profile </a></li>
                               	<li><a href="#">Change Password</a></li>
                            <li><a href="#">Logout</a></li>
                          </ul>
                        </li>
                    <%
                        }
                    %>
				</ul>
			</div>
		</div>
	</nav>
    <div class="row">
    
	<nav class="navbar-extend row hidden-sm hidden-xs visible-ms visible-md visible-lg" style="padding-right:10px">
        <div class="col-md-10">
				<ul class="nav navbar-nav nav-menu navbar-fixed-top">
					<li class="pull-left" style="padding-left: 15px;">
					<a href="Home"><img src="img/logomark_v3.png" alt="logo" style="width: 70%; height: 80%;"></a></li>
					<!-- <li style="padding-top: 15px; padding-right: 50px;"> -->
                        
					
						<%
							if (user == null) {
						%> 
						
					        <li>
						<a href="#" style="color: #7F7477">Log&nbsp;In/Sign&nbsp;Up</a>
						   </li>
						
						<%
							} else {
								if (pages.equals("settings")){
						%> 
                        <!--
						<li>
						<a href="logout" style="color: #7F7477">Logout</a>
						</li>
						-->
						<li class="dropdown" style="border-bottom: solid thick grey;">
						 	<a href="#" class="drop-btn">
					          <div style="color:black;">Settings <span class="caret"> </span> </div>
					        </a>
					        <div class="dropdown-content">
					        	<a href="#"> Update Profile </a>
					        	<a href="#"> Change Password </a>
                                <a href="#" style="color: #7F7477">Logout</a>
					        </div>				    
						
						</li>
						
						<% 
							}else{
						%>
						<li class="dropdown"">
						 	<a href="#" class="drop-btn">
					          <div style="color:black;">Settings <span class="caret"> </span> </div>
					        </a>
					        <div class="dropdown-content">
                                
					        	<a href="#"> Update Profile </a>
 						        <a href="#"> Change Password </a>
					        	
                                
                                <a href="#" style="color: #7F7477">Logout</a>
					        </div>				    
						
						</li>
				
						
					<%
							
								}
						}if (pages.equals("taste") && contentTypeId == 0 || contentTypeId == 350){
					%>
					<li class="active" style="border-bottom: solid thick #fab63d;"><a href="#" style="color: #fab63d;">Piano</a></li>
					
					<%
						}else{
					%>
									
					<li><a href="#" style="color: #fab63d;">Piano</a></li>
					
					<%
						}if (pages.equals("events") && contentTypeId == 0 || contentTypeId == 300){
					%>
					
					<li class="active" style="border-bottom: solid thick #52c1a8;"><a href="#" style="color: #52c1a8;">Guitar</a></li>
					
					<%
						}else{
					%>
					
					<li><a href="#" style="color: #52c1a8">Guitar</a></li>
					
					<%
						}if (pages.equals("activities") && contentTypeId == 0 || contentTypeId == 400){
					%>
					
					<li class="active" style="border-bottom: solid thick #689ad4;"><a href="#" style="color: #689ad4">Violin</a></li>
					
					<%
						}else{
					%>
					
					<li><a href="#" style="color: #689ad4">Violin</a></li>
					<%
						}if (pages.equals("discover") && contentTypeId == 0 || contentTypeId == 351){
					%>
					
					<li class="active" style="border-bottom: solid thick #fe6a5d;"><a href="#" style="color:#fe6a5d">Recorder</a></li>
					
					<%
						}else{
					%>
					
					<li><a href="#" style="color: #fe6a5d">Recorder</a></li>
					
					<%
						}
						if (pages.equals("home")){
					
					%>
					<li class="active" style="border-bottom: solid thick grey;"><a href="Home" style="color:grey">Home</a></li>
					
					<%
						}else{
					%>
										
					<li><a href="Home" style="color: grey">Home</a></li>
					
					<%	
						} 
						
					%>
					
				</ul>
        </div>
            <div class="col-md-1" style="padding-left:0px; padding-top:20px;" width="20px">
            
                <form name='searchForm' action='SearchServlet' method='GET'>
                        <fieldset>
                            <div class="form-group">
                                <input type="text" name="searchString"
                                    class="form-control input-lg" placeholder="search" autofocus>
                            </div>
                        </fieldset>
                    </form>
            </div>
        </div>
		<div class="row" style="padding-bottom: 5px;"></div>
		
	</nav>
    </div>
</header>