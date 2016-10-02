<!DOCTYPE html>
<html lang="en">
<head>
<link rel="icon" href="favicon.ico" type="image/x-icon" />
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/owlcarousel/owl.carousel.css">
	<link rel="stylesheet" type="text/css" href="css/style.css"> <!-- Resource style -->
	
    <title>GGPiano</title>
	<script src="https://use.typekit.net/mgs2exw.js"></script>
	<script>try{Typekit.load({ async: true });}catch(e){}</script>
	<style>
		.panel-default {
		    padding-top: 0px;
		    font-size: 80%;
		}
		.pdtop{
			padding-top: 10px;
		}
	</style>
</head>

<body>
	
   	<div id="page-content-wrapper">
       <jsp:include page="navbar.jsp">
        	<jsp:param name="pages" value="" />
        </jsp:include>
	</div>
	
	<main class="page-content-main">
		<div class="page-piano-background">
		<div class="row pdtop">
			<div class="col-lg-4 col-md-4"></div>
		    <div class="col-lg-4 col-md-4">
				<div class="panel panel-default" style="opacity: 0.92; margin-top:150px">
					<div style="padding: 0px 15px 10px 15px">
					<div class="row panel-body">
						<% if(session.getAttribute("message")!=null) { %>
								<h4 class="text-center" style="font-family: Arial;"><%=session.getAttribute("message")%></h4>
								<% session.removeAttribute("messsage");} %>
						<h2 class="text-center">Signup</h2>
						<h4 class="text-center">Fill up this form. We'll contact you when we have a match!</h2>
						
						<br>
						<!-- Signup form -->
						<form role="form" class="form" style="display:block" name='loginForm' 
							action='SignupServlet' method='POST'>
							<fieldset>
								<div class="form-group" style="float:left; padding-right:30px; width:400px">
									<input type="text" name='name'
									 	class="form-control input-md" style="border: 1px solid #8f8f90;"
										placeholder="Name" required autofocus>
								</div>
								<div class="form-group" style="float:left; padding-right:30px">
									<input type="text" name='age'
									 	class="form-control input-md" style="border: 1px solid #8f8f90"
										placeholder="Age of Student" required autofocus>
								</div>
								
								<div class="form-group" style="float:left; padding-right:30px">
									<select name='race' class="form-control input-md" style="border: 1px solid #8f8f90; width:200px" 
									required autofocus>
										<option value="undefined">Race of Student</option>
										<option value="chinese">Chinese</option>
										<option value="malay">Malay</option>
										<option value="indian">Indian</option>
										<option value="others">Others</option>
									</select>
								</div>
								
								<div class="form-group" style="float:left; padding-right:30px" >
									<select name='studentGender' class="form-control input-md" style="border: 1px solid #8f8f90; width:200px" 
											required autofocus>
											<option value="undefined">Gender of Student</option>
											<option value="male">Male</option>
											<option value="female">Female</option>
									</select>
								</div>
								
								
								
								<div class="form-group" style="float:left; padding-right:30px">
									<select name='learningPurpose' class="form-control input-md" style="border: 1px solid #8f8f90; width:200px" 
											required autofocus>
											<option value="undefined">Learning purpose</option>
											<option value="purpose1">Purpose1</option>
											<option value="purpose2">Purpose2</option>
									</select>
								</div>
								
								
						
								
								
								<div class="form-group" style="float:left; padding-right:30px">
									<select name='grade' class="form-control input-md" style="border: 1px solid #8f8f90; width:250px" 
											required autofocus>
											<option value="undefined">Current Grade/Experience</option>
											<option value="noExp">No Experience</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="1">6</option>
											<option value="2">7</option>
											<option value="3">8</option>																		
									</select>
								</div>
								
								<div class="form-group" style="float:left; padding-right:30px">
									<select name='preferredLocation' class="form-control input-md" style="border: 1px solid #8f8f90; width:200px" 
											required autofocus>
											<option value="undefined">Preferred Location</option>
											<option value="home">Home</option>
											<option value="teacherHome">Teacher's home</option>
											<option value="noPreference">No preference</option>																		
									</select>
								</div>
								
								
								
								<div class="form-group" style="float:left;  padding-right:30px">
									<select name='teacherGender' class="form-control input-md" style="border: 1px solid #8f8f90; width:250px" 
											required autofocus>
											<option value="undefined">Preferred gender of teacher</option>
											<option value="male">Male</option>
											<option value="female">Female</option>
									</select>
								</div>
									
								<div class="form-group" style="float:left; padding-right:30px">
									<input type="text" name='address'
									 	class="form-control input-md" style="border: 1px solid #8f8f90; width:350px"
										placeholder="Address" required autofocus>
								</div>
								<div class="form-group" style="float:left; padding-right:30px">
									<input type="text" name='postalcode'
									 	class="form-control input-md" style="border: 1px solid #8f8f90; width:150px"
										placeholder="Postal Code" required autofocus>
								</div>
									
									
								<div class="form-group">
									<input type="text" name='availableLessonTimeslots'
									 	class="form-control input-md" style="border: 1px solid #8f8f90"
										placeholder="Available lesson timeslots" required autofocus>
								</div>
								
									
								<div class="form-group" style="float:left;padding-right:10px">								
									<input type="date" name='plannedLessonStartDate'
										class="form-control input-md" style="border: 1px solid #8f8f90; width:300px" 
										placeholder="Planned Lesson Start Date/Month" required autofocus>
								</div>
								
								
								<div class="form-group">
									<textarea  name = 'message' rows="4" cols="50" class="form-control input-md"
										placeholder="Any other comments..."></textarea>								
								
									
								</div>
								
								
								
								<div class="form-group" style="float:left;">	
									<input type="checkbox" name='termsandconditions' value="accepted"
									 	class="form-control" style="border: 1px solid #8f8f90; height:20px; width:50px; display:inline"
										required autofocus><label for="termsandconditions">I have read the Terms and Conditions</label>
								</div>
								
								
								
								<button class="btn8 btn--large btn--full" style="padding:none; background-color:#405d9e; height:50px" type="submit">Signup</button>
							</fieldset>
						</form>
						</br>
					</div>
						</div>
					</div>
				
				</div>
				<div class="col-lg-4 col-md-4"></div>
			</div>
		</div>
		</main>
		
		<!-- Footer -->
		<jsp:include page="footer.jsp"/>
	        

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script
		src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
	<script src="js/validator.js"></script>

	<script src="js/bootstrap-select.min.js" type="text/javascript"></script>
	<script src="js/main.js" type="text/javascript"></script>

</body>
</body>