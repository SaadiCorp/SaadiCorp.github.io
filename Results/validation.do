<!DOCTYPE html>
<html lang="en"><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>University of London: Assessment Results</title>
	  <script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	  <link rel="stylesheet" href="/examresults/css/bootstrap.css">
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous">
	<script src="/examresults/js/results.js?v=2"></script>

	<meta name="author" content="University of London">
	<meta name="copyright" content="University of London">
	</head>

	
<body>





<noscript>This site requires javascript.</noscript>
 <nav class="navbar navbar-expand-lg navbar-light">
	 <div class="container-fluid">
		<a class="navbar-brand" href="https://london.ac.uk">
			<img class="d-none d-sm-inline" height="50px" src="/examresults/images/uol-logo.png" alt="University of London">
			<img class="d-inline d-sm-none" height="50px" src="/examresults/images/uol-logo-xs.png" alt="University of London">
		</a>
		<h3 class="navbar-text"><a class="nav-link" href="/examresults/">Assessment Results</a></h3>
	 </div>
</nav>
<div class="container-fluid">
<h3>Your results are listed below</h3>
		
 	<form id="results" name="results" action="/examresults/results.do" method="post">
		<div class="form-row align-items-end mb-2">
			

		 	<div class="col-lg-7">
		 		<select class="form-select d-none" id="result-select">
				</select> 
		 	</div>
		 	
		</div>
		

	<div class="result-data" data-results="{&quot;seqn&quot;:110313601,&quot;year&quot;:&quot;2023/4&quot;,&quot;candno&quot;:&quot;N20909&quot;,&quot;session&quot;:&quot;October&quot;,&quot;registration&quot;:{&quot;code&quot;:&quot;200712444/2&quot;,&quot;stu_code&quot;:&quot;200712444&quot;,&quot;programme_code&quot;:&quot;ULB-LAWSE02S&quot;,&quot;programme_name&quot;:&quot;LLB&quot;},&quot;results&quot;:[{&quot;code&quot;:&quot;LA3002&quot;,&quot;name&quot;:&quot;Equity and Trusts&quot;,&quot;mark&quot;:&quot;37&quot;,&quot;grade&quot;:&quot;Fail&quot;},{&quot;code&quot;:&quot;LA3021&quot;,&quot;name&quot;:&quot;Company law&quot;,&quot;mark&quot;:&quot;38&quot;,&quot;grade&quot;:&quot;Fail&quot;}]}"></div>
	 		<div class="result-container displayfinal" id="result-container-110313601">
		 	<div id="smrpanel" class="row">
		 		<div class="col-lg-7">
		 		<table id="smrtable" class="table ">
		 			<thead>
		 				<tr>
		 				<th scope="col">Code</th>
		 				<th scope="col">Name</th>
		 				<th class="text-end" scope="col">Mark</th>
		 				<th scope="col">Grade</th>
		 				</tr>
		 			</thead>
		 			<tbody>
		 			<tr> <td>LA3002</td> <td>Equity and Trusts</td> <td class="text-end">37</td> <td>Fail</td></tr><tr> <td>LA3021</td> <td>Company law</td> <td class="text-end">38</td> <td>Fail</td></tr></tbody>
		 		</table>
				</div>
		 	</div>
		 	<div class="row">
		 		<div id="notespanel" class="col-lg-7">
		 			
		 		</div>
		 	</div>
		 	<!--  
		 	<div id="awardpanel">
		 		<h4>You have been awarded the following qualification</h4>
		 		<dl class="row" id="awardname">
	  				<dt class="col-sm-3">Classification</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>	
	  			<dl class="row" id="awardtitle">
	  				<dt class="col-sm-3">Title</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>		
		 	</div>-->
		 	
	
		 	
		 	
		 	
		 	<!-- 
		 	<div id="progressionpanel">
		 		<h4>You have been given the following progression information</h4>
		 		<dl class="row" id="progressionstatus">
	  				<dt class="col-sm-3">Status</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>
	  			<dl class="row" id="progressionmessage">
	  				<dt class="col-sm-3">Message</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>
	  			<dl class="row" id="progressionlongmessage">
	  				<dd class="col-sm-12"></dd>
	  			</dl>
		 	</div>-->
		 	
		 	<div id="regpanel">
		 		<h4>Additional information regarding these results</h4>
		 		<dl class="row" id="regyear">
	  				<dt class="col-sm-3">Year</dt>
	  				<dd class="col-sm-9">2023/4</dd>
	  			</dl>
	  			<dl class="row" id="regsession">
	  				<dt class="col-sm-3">Session</dt>
	  				<dd class="col-sm-9">October</dd>
	  			</dl>
	  			<dl class="row" id="regcandno">
	  				<dt class="col-sm-3">Candidate Number</dt>
	  				<dd class="col-sm-9">N20909</dd>
	  			</dl>
	  			<dl class="row" id="regstu">
	  				<dt class="col-sm-3">Student Number</dt>
	  				<dd class="col-sm-9">200712444</dd>
	  			</dl>
	  			<dl class="row" id="regprg">
	  				<dt class="col-sm-3">Programme</dt>
	  				<dd class="col-sm-9">LLB</dd>
	  			</dl>
				
				
		 	</div>
		 	<div class="row">
		 		<div class="col-lg-7">
		 			
		 		</div>
		 		<div class="col-lg-7">
		 			<p>
		 				Please note that in determining your results, the Examiners have taken into account any information you may have submitted in respect of extenuating or mitigating circumstances.
		 			</p>

		 			<p>
						All marks and results have undergone a thorough administrative check and there is no appeal on academic grounds. If, however, 
						you should wish to make formal application for a re-check of your marks please follow the following link: 
						<a target="_BLANK" href="https://sits.london.ac.uk/urd/sits.urd/run/siw_sso.signon?SSO=7m791ORtFDb3xVD+VBzUj85AZnpHgMNPuSVP1mkjbu3lNQ2O+mpOqrEw/Q48AgmZmLsM8HwixbiJ04JeCGqCzgBtTQMsx83xNT6dpu1vUW36PuShYO+Co/TZQrjFN8T+vseMnvaxS8BV3876DlKPWxSOCvxk8MtKEuGBcGrFnoiLCws4c1tmQkL0LLZ6JwCtXuogFOHT4Wk9Eks4lJg5C9JVozKs9A0BzAFnPf16nNEDxco1uxY+wiZyh1dbyldd&amp;IV=385ec67d0c5a496b">Re-check of marks</a>.
						Please note: This process relates to time-constrained examinations only. Administrative rechecks are not available for coursework marks.
					</p>
					<p class="award-only collapse">
						Your transcript and certificate will be sent to your home address.
						Please make sure your contact details are correct.
						You can update your details by following the link:
						<a target="_BLANK" href="https://sits.london.ac.uk/urd/sits.urd/run/siw_sso.signon?SSO=zF9cxKTRzqIMsvRXVBQhDke817Ga1rCC+fAgMBKL/sNWwHdmKrOjnWU1fFrRQHef+p17FJWr+luQL5ohf/SlKM57NVkefQ9K1pxQd+jStYteN5z/lDgx+bzPf2jaokhY4bQ0QBgHCVB7lXZKjvhVuKB99czZlcHVvlaUpWr6bTYJoYZSyDFyMaQEhvwwfszigjVLNadPFNcgW7D/sX83LzXhDJ0kFxTtiZBnZrM8gtGV3+f2uVaSydegnQyHtpay&amp;IV=2e1ae9a3f0cd40c0">My Home address</a>.
					</p>
		 		</div>
	
		 	</div>
		</div>
	
	 	
	</form></div>
 



 <div class="container-fluid">
	<div class="row">
	 		<div class="col-lg-7">
				<p>
					If you have any queries concerning the information on this page, please contact us via the 'Ask a question' page in the Portal - <a target="_BLANK" href="https://my.london.ac.uk">https://my.london.ac.uk</a>
				</p>
			</div>
	</div>
</div>
 
</body></html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>University of London: Assessment Results</title>
	  <script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	  <link rel="stylesheet" href="/examresults/css/bootstrap.css">
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous">
	<script src="/examresults/js/results.js?v=2"></script>

	<meta name="author" content="University of London">
	<meta name="copyright" content="University of London">
	</head>
<body>





<noscript>This site requires javascript.</noscript>
 <nav class="navbar navbar-expand-lg navbar-light">
	 <div class="container-fluid">
		<a class="navbar-brand" href="https://london.ac.uk">
			<img class="d-none d-sm-inline" height="50px" src="/examresults/images/uol-logo.png" alt="University of London">
			<img class="d-inline d-sm-none" height="50px" src="/examresults/images/uol-logo-xs.png" alt="University of London">
		</a>
		<h3 class="navbar-text"><a class="nav-link" href="/examresults/">Assessment Results</a></h3>
	 </div>
</nav>
<div class="container-fluid">
<h3>Your results are listed below</h3>
		
 	<form id="results" name="results" action="/examresults/results.do" method="post">
		<div class="form-row align-items-end mb-2">
			

		 	<div class="col-lg-7">
		 		<select class="form-select d-none" id="result-select">
				</select> 
		 	</div>
		 	
		</div>
		

	<div class="result-data" data-results="{&quot;seqn&quot;:110313601,&quot;year&quot;:&quot;2023/4&quot;,&quot;candno&quot;:&quot;N20909&quot;,&quot;session&quot;:&quot;October&quot;,&quot;registration&quot;:{&quot;code&quot;:&quot;200712444/2&quot;,&quot;stu_code&quot;:&quot;200712444&quot;,&quot;programme_code&quot;:&quot;ULB-LAWSE02S&quot;,&quot;programme_name&quot;:&quot;LLB&quot;},&quot;results&quot;:[{&quot;code&quot;:&quot;LA3002&quot;,&quot;name&quot;:&quot;Equity and Trusts&quot;,&quot;mark&quot;:&quot;37&quot;,&quot;grade&quot;:&quot;Fail&quot;},{&quot;code&quot;:&quot;LA3021&quot;,&quot;name&quot;:&quot;Company law&quot;,&quot;mark&quot;:&quot;38&quot;,&quot;grade&quot;:&quot;Fail&quot;}]}"></div>
	 		<div class="result-container displayfinal" id="result-container-110313601">
		 	<div id="smrpanel" class="row">
		 		<div class="col-lg-7">
		 		<table id="smrtable" class="table ">
		 			<thead>
		 				<tr>
		 				<th scope="col">Code</th>
		 				<th scope="col">Name</th>
		 				<th class="text-end" scope="col">Mark</th>
		 				<th scope="col">Grade</th>
		 				</tr>
		 			</thead>
		 			<tbody>
		 			<tr> <td>LA3002</td> <td>Equity and Trusts</td> <td class="text-end">37</td> <td>Fail</td></tr><tr> <td>LA3021</td> <td>Company law</td> <td class="text-end">38</td> <td>Fail</td></tr></tbody>
		 		</table>
				</div>
		 	</div>
		 	<div class="row">
		 		<div id="notespanel" class="col-lg-7">
		 			
		 		</div>
		 	</div>
		 	<!--  
		 	<div id="awardpanel">
		 		<h4>You have been awarded the following qualification</h4>
		 		<dl class="row" id="awardname">
	  				<dt class="col-sm-3">Classification</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>	
	  			<dl class="row" id="awardtitle">
	  				<dt class="col-sm-3">Title</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>		
		 	</div>-->
		 	
	
		 	
		 	
		 	
		 	<!-- 
		 	<div id="progressionpanel">
		 		<h4>You have been given the following progression information</h4>
		 		<dl class="row" id="progressionstatus">
	  				<dt class="col-sm-3">Status</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>
	  			<dl class="row" id="progressionmessage">
	  				<dt class="col-sm-3">Message</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>
	  			<dl class="row" id="progressionlongmessage">
	  				<dd class="col-sm-12"></dd>
	  			</dl>
		 	</div>-->
		 	
		 	<div id="regpanel">
		 		<h4>Additional information regarding these results</h4>
		 		<dl class="row" id="regyear">
	  				<dt class="col-sm-3">Year</dt>
	  				<dd class="col-sm-9">2023/4</dd>
	  			</dl>
	  			<dl class="row" id="regsession">
	  				<dt class="col-sm-3">Session</dt>
	  				<dd class="col-sm-9">October</dd>
	  			</dl>
	  			<dl class="row" id="regcandno">
	  				<dt class="col-sm-3">Candidate Number</dt>
	  				<dd class="col-sm-9">N20909</dd>
	  			</dl>
	  			<dl class="row" id="regstu">
	  				<dt class="col-sm-3">Student Number</dt>
	  				<dd class="col-sm-9">200712444</dd>
	  			</dl>
	  			<dl class="row" id="regprg">
	  				<dt class="col-sm-3">Programme</dt>
	  				<dd class="col-sm-9">LLB</dd>
	  			</dl>
				
				
		 	</div>
		 	<div class="row">
		 		<div class="col-lg-7">
		 			
		 		</div>
		 		<div class="col-lg-7">
		 			<p>
		 				Please note that in determining your results, the Examiners have taken into account any information you may have submitted in respect of extenuating or mitigating circumstances.
		 			</p>

		 			<p>
						All marks and results have undergone a thorough administrative check and there is no appeal on academic grounds. If, however, 
						you should wish to make formal application for a re-check of your marks please follow the following link: 
						<a target="_BLANK" href="https://sits.london.ac.uk/urd/sits.urd/run/siw_sso.signon?SSO=7m791ORtFDb3xVD+VBzUj85AZnpHgMNPuSVP1mkjbu3lNQ2O+mpOqrEw/Q48AgmZmLsM8HwixbiJ04JeCGqCzgBtTQMsx83xNT6dpu1vUW36PuShYO+Co/TZQrjFN8T+vseMnvaxS8BV3876DlKPWxSOCvxk8MtKEuGBcGrFnoiLCws4c1tmQkL0LLZ6JwCtXuogFOHT4Wk9Eks4lJg5C9JVozKs9A0BzAFnPf16nNEDxco1uxY+wiZyh1dbyldd&amp;IV=385ec67d0c5a496b">Re-check of marks</a>.
						Please note: This process relates to time-constrained examinations only. Administrative rechecks are not available for coursework marks.
					</p>
					<p class="award-only collapse">
						Your transcript and certificate will be sent to your home address.
						Please make sure your contact details are correct.
						You can update your details by following the link:
						<a target="_BLANK" href="https://sits.london.ac.uk/urd/sits.urd/run/siw_sso.signon?SSO=zF9cxKTRzqIMsvRXVBQhDke817Ga1rCC+fAgMBKL/sNWwHdmKrOjnWU1fFrRQHef+p17FJWr+luQL5ohf/SlKM57NVkefQ9K1pxQd+jStYteN5z/lDgx+bzPf2jaokhY4bQ0QBgHCVB7lXZKjvhVuKB99czZlcHVvlaUpWr6bTYJoYZSyDFyMaQEhvwwfszigjVLNadPFNcgW7D/sX83LzXhDJ0kFxTtiZBnZrM8gtGV3+f2uVaSydegnQyHtpay&amp;IV=2e1ae9a3f0cd40c0">My Home address</a>.
					</p>
		 		</div>
	
		 	</div>
		</div>
	
	 	
	</form></div>
 



 <div class="container-fluid">
	<div class="row">
	 		<div class="col-lg-7">
				<p>
					If you have any queries concerning the information on this page, please contact us via the 'Ask a question' page in the Portal - <a target="_BLANK" href="https://my.london.ac.uk">https://my.london.ac.uk</a>
				</p>
			</div>
	</div>
</div>
 
</body>
<noscript>This site requires javascript.</noscript>
<nav class="navbar navbar-expand-lg navbar-light">
	 <div class="container-fluid">
		<a class="navbar-brand" href="https://london.ac.uk">
			<img class="d-none d-sm-inline" height="50px" src="/examresults/images/uol-logo.png" alt="University of London">
			<img class="d-inline d-sm-none" height="50px" src="/examresults/images/uol-logo-xs.png" alt="University of London">
		</a>
		<h3 class="navbar-text"><a class="nav-link" href="/examresults/">Assessment Results</a></h3>
	 </div>
</nav>
<div class="container-fluid">
<h3>Your results are listed below</h3>
		
 	<form id="results" name="results" action="/examresults/results.do" method="post">
		<div class="form-row align-items-end mb-2">
			

		 	<div class="col-lg-7">
		 		<select class="form-select d-none" id="result-select">
				</select> 
		 	</div>
		 	
		</div>
		

	<div class="result-data" data-results="{&quot;seqn&quot;:110313601,&quot;year&quot;:&quot;2023/4&quot;,&quot;candno&quot;:&quot;N20909&quot;,&quot;session&quot;:&quot;October&quot;,&quot;registration&quot;:{&quot;code&quot;:&quot;200712444/2&quot;,&quot;stu_code&quot;:&quot;200712444&quot;,&quot;programme_code&quot;:&quot;ULB-LAWSE02S&quot;,&quot;programme_name&quot;:&quot;LLB&quot;},&quot;results&quot;:[{&quot;code&quot;:&quot;LA3002&quot;,&quot;name&quot;:&quot;Equity and Trusts&quot;,&quot;mark&quot;:&quot;37&quot;,&quot;grade&quot;:&quot;Fail&quot;},{&quot;code&quot;:&quot;LA3021&quot;,&quot;name&quot;:&quot;Company law&quot;,&quot;mark&quot;:&quot;38&quot;,&quot;grade&quot;:&quot;Fail&quot;}]}"></div>
	 		<div class="result-container displayfinal" id="result-container-110313601">
		 	<div id="smrpanel" class="row">
		 		<div class="col-lg-7">
		 		<table id="smrtable" class="table ">
		 			<thead>
		 				<tr>
		 				<th scope="col">Code</th>
		 				<th scope="col">Name</th>
		 				<th class="text-end" scope="col">Mark</th>
		 				<th scope="col">Grade</th>
		 				</tr>
		 			</thead>
		 			<tbody>
		 			<tr> <td>LA3002</td> <td>Equity and Trusts</td> <td class="text-end">37</td> <td>Fail</td></tr><tr> <td>LA3021</td> <td>Company law</td> <td class="text-end">38</td> <td>Fail</td></tr></tbody>
		 		</table>
				</div>
		 	</div>
		 	<div class="row">
		 		<div id="notespanel" class="col-lg-7">
		 			
		 		</div>
		 	</div>
		 	<!--  
		 	<div id="awardpanel">
		 		<h4>You have been awarded the following qualification</h4>
		 		<dl class="row" id="awardname">
	  				<dt class="col-sm-3">Classification</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>	
	  			<dl class="row" id="awardtitle">
	  				<dt class="col-sm-3">Title</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>		
		 	</div>-->
		 	
	
		 	
		 	
		 	
		 	<!-- 
		 	<div id="progressionpanel">
		 		<h4>You have been given the following progression information</h4>
		 		<dl class="row" id="progressionstatus">
	  				<dt class="col-sm-3">Status</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>
	  			<dl class="row" id="progressionmessage">
	  				<dt class="col-sm-3">Message</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>
	  			<dl class="row" id="progressionlongmessage">
	  				<dd class="col-sm-12"></dd>
	  			</dl>
		 	</div>-->
		 	
		 	<div id="regpanel">
		 		<h4>Additional information regarding these results</h4>
		 		<dl class="row" id="regyear">
	  				<dt class="col-sm-3">Year</dt>
	  				<dd class="col-sm-9">2023/4</dd>
	  			</dl>
	  			<dl class="row" id="regsession">
	  				<dt class="col-sm-3">Session</dt>
	  				<dd class="col-sm-9">October</dd>
	  			</dl>
	  			<dl class="row" id="regcandno">
	  				<dt class="col-sm-3">Candidate Number</dt>
	  				<dd class="col-sm-9">N20909</dd>
	  			</dl>
	  			<dl class="row" id="regstu">
	  				<dt class="col-sm-3">Student Number</dt>
	  				<dd class="col-sm-9">200712444</dd>
	  			</dl>
	  			<dl class="row" id="regprg">
	  				<dt class="col-sm-3">Programme</dt>
	  				<dd class="col-sm-9">LLB</dd>
	  			</dl>
				
				
		 	</div>
		 	<div class="row">
		 		<div class="col-lg-7">
		 			
		 		</div>
		 		<div class="col-lg-7">
		 			<p>
		 				Please note that in determining your results, the Examiners have taken into account any information you may have submitted in respect of extenuating or mitigating circumstances.
		 			</p>

		 			<p>
						All marks and results have undergone a thorough administrative check and there is no appeal on academic grounds. If, however, 
						you should wish to make formal application for a re-check of your marks please follow the following link: 
						<a target="_BLANK" href="https://sits.london.ac.uk/urd/sits.urd/run/siw_sso.signon?SSO=7m791ORtFDb3xVD+VBzUj85AZnpHgMNPuSVP1mkjbu3lNQ2O+mpOqrEw/Q48AgmZmLsM8HwixbiJ04JeCGqCzgBtTQMsx83xNT6dpu1vUW36PuShYO+Co/TZQrjFN8T+vseMnvaxS8BV3876DlKPWxSOCvxk8MtKEuGBcGrFnoiLCws4c1tmQkL0LLZ6JwCtXuogFOHT4Wk9Eks4lJg5C9JVozKs9A0BzAFnPf16nNEDxco1uxY+wiZyh1dbyldd&amp;IV=385ec67d0c5a496b">Re-check of marks</a>.
						Please note: This process relates to time-constrained examinations only. Administrative rechecks are not available for coursework marks.
					</p>
					<p class="award-only collapse">
						Your transcript and certificate will be sent to your home address.
						Please make sure your contact details are correct.
						You can update your details by following the link:
						<a target="_BLANK" href="https://sits.london.ac.uk/urd/sits.urd/run/siw_sso.signon?SSO=zF9cxKTRzqIMsvRXVBQhDke817Ga1rCC+fAgMBKL/sNWwHdmKrOjnWU1fFrRQHef+p17FJWr+luQL5ohf/SlKM57NVkefQ9K1pxQd+jStYteN5z/lDgx+bzPf2jaokhY4bQ0QBgHCVB7lXZKjvhVuKB99czZlcHVvlaUpWr6bTYJoYZSyDFyMaQEhvwwfszigjVLNadPFNcgW7D/sX83LzXhDJ0kFxTtiZBnZrM8gtGV3+f2uVaSydegnQyHtpay&amp;IV=2e1ae9a3f0cd40c0">My Home address</a>.
					</p>
		 		</div>
	
		 	</div>
		</div>
	
	 	
	</form></div>
<h3>Your results are listed below</h3>
<form id="results" name="results" action="/examresults/results.do" method="post">
		<div class="form-row align-items-end mb-2">
			

		 	<div class="col-lg-7">
		 		<select class="form-select d-none" id="result-select">
				</select> 
		 	</div>
		 	
		</div>
		

	<div class="result-data" data-results="{&quot;seqn&quot;:110313601,&quot;year&quot;:&quot;2023/4&quot;,&quot;candno&quot;:&quot;N20909&quot;,&quot;session&quot;:&quot;October&quot;,&quot;registration&quot;:{&quot;code&quot;:&quot;200712444/2&quot;,&quot;stu_code&quot;:&quot;200712444&quot;,&quot;programme_code&quot;:&quot;ULB-LAWSE02S&quot;,&quot;programme_name&quot;:&quot;LLB&quot;},&quot;results&quot;:[{&quot;code&quot;:&quot;LA3002&quot;,&quot;name&quot;:&quot;Equity and Trusts&quot;,&quot;mark&quot;:&quot;37&quot;,&quot;grade&quot;:&quot;Fail&quot;},{&quot;code&quot;:&quot;LA3021&quot;,&quot;name&quot;:&quot;Company law&quot;,&quot;mark&quot;:&quot;38&quot;,&quot;grade&quot;:&quot;Fail&quot;}]}"></div>
	 		<div class="result-container displayfinal" id="result-container-110313601">
		 	<div id="smrpanel" class="row">
		 		<div class="col-lg-7">
		 		<table id="smrtable" class="table ">
		 			<thead>
		 				<tr>
		 				<th scope="col">Code</th>
		 				<th scope="col">Name</th>
		 				<th class="text-end" scope="col">Mark</th>
		 				<th scope="col">Grade</th>
		 				</tr>
		 			</thead>
		 			<tbody>
		 			<tr> <td>LA3002</td> <td>Equity and Trusts</td> <td class="text-end">37</td> <td>Fail</td></tr><tr> <td>LA3021</td> <td>Company law</td> <td class="text-end">38</td> <td>Fail</td></tr></tbody>
		 		</table>
				</div>
		 	</div>
		 	<div class="row">
		 		<div id="notespanel" class="col-lg-7">
		 			
		 		</div>
		 	</div>
		 	<!--  
		 	<div id="awardpanel">
		 		<h4>You have been awarded the following qualification</h4>
		 		<dl class="row" id="awardname">
	  				<dt class="col-sm-3">Classification</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>	
	  			<dl class="row" id="awardtitle">
	  				<dt class="col-sm-3">Title</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>		
		 	</div>-->
		 	
	
		 	
		 	
		 	
		 	<!-- 
		 	<div id="progressionpanel">
		 		<h4>You have been given the following progression information</h4>
		 		<dl class="row" id="progressionstatus">
	  				<dt class="col-sm-3">Status</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>
	  			<dl class="row" id="progressionmessage">
	  				<dt class="col-sm-3">Message</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>
	  			<dl class="row" id="progressionlongmessage">
	  				<dd class="col-sm-12"></dd>
	  			</dl>
		 	</div>-->
		 	
		 	<div id="regpanel">
		 		<h4>Additional information regarding these results</h4>
		 		<dl class="row" id="regyear">
	  				<dt class="col-sm-3">Year</dt>
	  				<dd class="col-sm-9">2023/4</dd>
	  			</dl>
	  			<dl class="row" id="regsession">
	  				<dt class="col-sm-3">Session</dt>
	  				<dd class="col-sm-9">October</dd>
	  			</dl>
	  			<dl class="row" id="regcandno">
	  				<dt class="col-sm-3">Candidate Number</dt>
	  				<dd class="col-sm-9">N20909</dd>
	  			</dl>
	  			<dl class="row" id="regstu">
	  				<dt class="col-sm-3">Student Number</dt>
	  				<dd class="col-sm-9">200712444</dd>
	  			</dl>
	  			<dl class="row" id="regprg">
	  				<dt class="col-sm-3">Programme</dt>
	  				<dd class="col-sm-9">LLB</dd>
	  			</dl>
				
				
		 	</div>
		 	<div class="row">
		 		<div class="col-lg-7">
		 			
		 		</div>
		 		<div class="col-lg-7">
		 			<p>
		 				Please note that in determining your results, the Examiners have taken into account any information you may have submitted in respect of extenuating or mitigating circumstances.
		 			</p>

		 			<p>
						All marks and results have undergone a thorough administrative check and there is no appeal on academic grounds. If, however, 
						you should wish to make formal application for a re-check of your marks please follow the following link: 
						<a target="_BLANK" href="https://sits.london.ac.uk/urd/sits.urd/run/siw_sso.signon?SSO=7m791ORtFDb3xVD+VBzUj85AZnpHgMNPuSVP1mkjbu3lNQ2O+mpOqrEw/Q48AgmZmLsM8HwixbiJ04JeCGqCzgBtTQMsx83xNT6dpu1vUW36PuShYO+Co/TZQrjFN8T+vseMnvaxS8BV3876DlKPWxSOCvxk8MtKEuGBcGrFnoiLCws4c1tmQkL0LLZ6JwCtXuogFOHT4Wk9Eks4lJg5C9JVozKs9A0BzAFnPf16nNEDxco1uxY+wiZyh1dbyldd&amp;IV=385ec67d0c5a496b">Re-check of marks</a>.
						Please note: This process relates to time-constrained examinations only. Administrative rechecks are not available for coursework marks.
					</p>
					<p class="award-only collapse">
						Your transcript and certificate will be sent to your home address.
						Please make sure your contact details are correct.
						You can update your details by following the link:
						<a target="_BLANK" href="https://sits.london.ac.uk/urd/sits.urd/run/siw_sso.signon?SSO=zF9cxKTRzqIMsvRXVBQhDke817Ga1rCC+fAgMBKL/sNWwHdmKrOjnWU1fFrRQHef+p17FJWr+luQL5ohf/SlKM57NVkefQ9K1pxQd+jStYteN5z/lDgx+bzPf2jaokhY4bQ0QBgHCVB7lXZKjvhVuKB99czZlcHVvlaUpWr6bTYJoYZSyDFyMaQEhvwwfszigjVLNadPFNcgW7D/sX83LzXhDJ0kFxTtiZBnZrM8gtGV3+f2uVaSydegnQyHtpay&amp;IV=2e1ae9a3f0cd40c0">My Home address</a>.
					</p>
		 		</div>
	
		 	</div>
		</div>
	
	 	
	</form>
<div class="form-row align-items-end mb-2">
			

		 	<div class="col-lg-7">
		 		<select class="form-select d-none" id="result-select">
				</select> 
		 	</div>
		 	
		</div>
<div class="result-data" data-results="{&quot;seqn&quot;:110313601,&quot;year&quot;:&quot;2023/4&quot;,&quot;candno&quot;:&quot;N20909&quot;,&quot;session&quot;:&quot;October&quot;,&quot;registration&quot;:{&quot;code&quot;:&quot;200712444/2&quot;,&quot;stu_code&quot;:&quot;200712444&quot;,&quot;programme_code&quot;:&quot;ULB-LAWSE02S&quot;,&quot;programme_name&quot;:&quot;LLB&quot;},&quot;results&quot;:[{&quot;code&quot;:&quot;LA3002&quot;,&quot;name&quot;:&quot;Equity and Trusts&quot;,&quot;mark&quot;:&quot;37&quot;,&quot;grade&quot;:&quot;Fail&quot;},{&quot;code&quot;:&quot;LA3021&quot;,&quot;name&quot;:&quot;Company law&quot;,&quot;mark&quot;:&quot;38&quot;,&quot;grade&quot;:&quot;Fail&quot;}]}"></div>
<div class="result-container displayfinal" id="result-container-110313601">
		 	<div id="smrpanel" class="row">
		 		<div class="col-lg-7">
		 		<table id="smrtable" class="table ">
		 			<thead>
		 				<tr>
		 				<th scope="col">Code</th>
		 				<th scope="col">Name</th>
		 				<th class="text-end" scope="col">Mark</th>
		 				<th scope="col">Grade</th>
		 				</tr>
		 			</thead>
		 			<tbody>
		 			<tr> <td>LA3002</td> <td>Equity and Trusts</td> <td class="text-end">37</td> <td>Fail</td></tr><tr> <td>LA3021</td> <td>Company law</td> <td class="text-end">38</td> <td>Fail</td></tr></tbody>
		 		</table>
				</div>
		 	</div>
		 	<div class="row">
		 		<div id="notespanel" class="col-lg-7">
		 			
		 		</div>
		 	</div>
		 	<!--  
		 	<div id="awardpanel">
		 		<h4>You have been awarded the following qualification</h4>
		 		<dl class="row" id="awardname">
	  				<dt class="col-sm-3">Classification</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>	
	  			<dl class="row" id="awardtitle">
	  				<dt class="col-sm-3">Title</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>		
		 	</div>-->
		 	
	
		 	
		 	
		 	
		 	<!-- 
		 	<div id="progressionpanel">
		 		<h4>You have been given the following progression information</h4>
		 		<dl class="row" id="progressionstatus">
	  				<dt class="col-sm-3">Status</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>
	  			<dl class="row" id="progressionmessage">
	  				<dt class="col-sm-3">Message</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>
	  			<dl class="row" id="progressionlongmessage">
	  				<dd class="col-sm-12"></dd>
	  			</dl>
		 	</div>-->
		 	
		 	<div id="regpanel">
		 		<h4>Additional information regarding these results</h4>
		 		<dl class="row" id="regyear">
	  				<dt class="col-sm-3">Year</dt>
	  				<dd class="col-sm-9">2023/4</dd>
	  			</dl>
	  			<dl class="row" id="regsession">
	  				<dt class="col-sm-3">Session</dt>
	  				<dd class="col-sm-9">October</dd>
	  			</dl>
	  			<dl class="row" id="regcandno">
	  				<dt class="col-sm-3">Candidate Number</dt>
	  				<dd class="col-sm-9">N20909</dd>
	  			</dl>
	  			<dl class="row" id="regstu">
	  				<dt class="col-sm-3">Student Number</dt>
	  				<dd class="col-sm-9">200712444</dd>
	  			</dl>
	  			<dl class="row" id="regprg">
	  				<dt class="col-sm-3">Programme</dt>
	  				<dd class="col-sm-9">LLB</dd>
	  			</dl>
				
				
		 	</div>
		 	<div class="row">
		 		<div class="col-lg-7">
		 			
		 		</div>
		 		<div class="col-lg-7">
		 			<p>
		 				Please note that in determining your results, the Examiners have taken into account any information you may have submitted in respect of extenuating or mitigating circumstances.
		 			</p>

		 			<p>
						All marks and results have undergone a thorough administrative check and there is no appeal on academic grounds. If, however, 
						you should wish to make formal application for a re-check of your marks please follow the following link: 
						<a target="_BLANK" href="https://sits.london.ac.uk/urd/sits.urd/run/siw_sso.signon?SSO=7m791ORtFDb3xVD+VBzUj85AZnpHgMNPuSVP1mkjbu3lNQ2O+mpOqrEw/Q48AgmZmLsM8HwixbiJ04JeCGqCzgBtTQMsx83xNT6dpu1vUW36PuShYO+Co/TZQrjFN8T+vseMnvaxS8BV3876DlKPWxSOCvxk8MtKEuGBcGrFnoiLCws4c1tmQkL0LLZ6JwCtXuogFOHT4Wk9Eks4lJg5C9JVozKs9A0BzAFnPf16nNEDxco1uxY+wiZyh1dbyldd&amp;IV=385ec67d0c5a496b">Re-check of marks</a>.
						Please note: This process relates to time-constrained examinations only. Administrative rechecks are not available for coursework marks.
					</p>
					<p class="award-only collapse">
						Your transcript and certificate will be sent to your home address.
						Please make sure your contact details are correct.
						You can update your details by following the link:
						<a target="_BLANK" href="https://sits.london.ac.uk/urd/sits.urd/run/siw_sso.signon?SSO=zF9cxKTRzqIMsvRXVBQhDke817Ga1rCC+fAgMBKL/sNWwHdmKrOjnWU1fFrRQHef+p17FJWr+luQL5ohf/SlKM57NVkefQ9K1pxQd+jStYteN5z/lDgx+bzPf2jaokhY4bQ0QBgHCVB7lXZKjvhVuKB99czZlcHVvlaUpWr6bTYJoYZSyDFyMaQEhvwwfszigjVLNadPFNcgW7D/sX83LzXhDJ0kFxTtiZBnZrM8gtGV3+f2uVaSydegnQyHtpay&amp;IV=2e1ae9a3f0cd40c0">My Home address</a>.
					</p>
		 		</div>
	
		 	</div>
		</div>
<div id="smrpanel" class="row">
		 		<div class="col-lg-7">
		 		<table id="smrtable" class="table ">
		 			<thead>
		 				<tr>
		 				<th scope="col">Code</th>
		 				<th scope="col">Name</th>
		 				<th class="text-end" scope="col">Mark</th>
		 				<th scope="col">Grade</th>
		 				</tr>
		 			</thead>
		 			<tbody>
		 			<tr> <td>LA3002</td> <td>Equity and Trusts</td> <td class="text-end">37</td> <td>Fail</td></tr><tr> <td>LA3021</td> <td>Company law</td> <td class="text-end">38</td> <td>Fail</td></tr></tbody>
		 		</table>
				</div>
		 	</div>
<div class="col-lg-7">
		 		<table id="smrtable" class="table ">
		 			<thead>
		 				<tr>
		 				<th scope="col">Code</th>
		 				<th scope="col">Name</th>
		 				<th class="text-end" scope="col">Mark</th>
		 				<th scope="col">Grade</th>
		 				</tr>
		 			</thead>
		 			<tbody>
		 			<tr> <td>LA3002</td> <td>Equity and Trusts</td> <td class="text-end">37</td> <td>Fail</td></tr><tr> <td>LA3021</td> <td>Company law</td> <td class="text-end">38</td> <td>Fail</td></tr></tbody>
		 		</table>
				</div>
<table id="smrtable" class="table ">
		 			<thead>
		 				<tr>
		 				<th scope="col">Code</th>
		 				<th scope="col">Name</th>
		 				<th class="text-end" scope="col">Mark</th>
		 				<th scope="col">Grade</th>
		 				</tr>
		 			</thead>
		 			<tbody>
		 			<tr> <td>LA3002</td> <td>Equity and Trusts</td> <td class="text-end">37</td> <td>Fail</td></tr><tr> <td>LA3021</td> <td>Company law</td> <td class="text-end">38</td> <td>Fail</td></tr></tbody>
		 		</table>
<thead>
		 				<tr>
		 				<th scope="col">Code</th>
		 				<th scope="col">Name</th>
		 				<th class="text-end" scope="col">Mark</th>
		 				<th scope="col">Grade</th>
		 				</tr>
		 			</thead>
<tbody>
		 			<tr> <td>LA3002</td> <td>Equity and Trusts</td> <td class="text-end">37</td> <td>Fail</td></tr><tr> <td>LA3021</td> <td>Company law</td> <td class="text-end">38</td> <td>Fail</td></tr></tbody>
<tr> <td>LA3002</td> <td>Equity and Trusts</td> <td class="text-end">37</td> <td>Fail</td></tr>
<td>LA3002</td>
<td>Equity and Trusts</td>
<td class="text-end">37</td>
<td>Fail</td>
<tr> <td>LA3002</td> <td>Equity and Trusts</td> <td class="text-end">37</td> <td>Fail</td></tr>
<tr> <td>LA3021</td> <td>Company law</td> <td class="text-end">38</td> <td>Fail</td></tr>
<tbody>
		 			<tr> <td>LA3002</td> <td>Equity and Trusts</td> <td class="text-end">37</td> <td>Fail</td></tr><tr> <td>LA3021</td> <td>Company law</td> <td class="text-end">38</td> <td>Fail</td></tr></tbody>
<table id="smrtable" class="table ">
		 			<thead>
		 				<tr>
		 				<th scope="col">Code</th>
		 				<th scope="col">Name</th>
		 				<th class="text-end" scope="col">Mark</th>
		 				<th scope="col">Grade</th>
		 				</tr>
		 			</thead>
		 			<tbody>
		 			<tr> <td>LA3002</td> <td>Equity and Trusts</td> <td class="text-end">37</td> <td>Fail</td></tr><tr> <td>LA3021</td> <td>Company law</td> <td class="text-end">38</td> <td>Fail</td></tr></tbody>
		 		</table>
<div class="col-lg-7">
		 		<table id="smrtable" class="table ">
		 			<thead>
		 				<tr>
		 				<th scope="col">Code</th>
		 				<th scope="col">Name</th>
		 				<th class="text-end" scope="col">Mark</th>
		 				<th scope="col">Grade</th>
		 				</tr>
		 			</thead>
		 			<tbody>
		 			<tr> <td>LA3002</td> <td>Equity and Trusts</td> <td class="text-end">37</td> <td>Fail</td></tr><tr> <td>LA3021</td> <td>Company law</td> <td class="text-end">38</td> <td>Fail</td></tr></tbody>
		 		</table>
				</div>
<div id="smrpanel" class="row">
		 		<div class="col-lg-7">
		 		<table id="smrtable" class="table ">
		 			<thead>
		 				<tr>
		 				<th scope="col">Code</th>
		 				<th scope="col">Name</th>
		 				<th class="text-end" scope="col">Mark</th>
		 				<th scope="col">Grade</th>
		 				</tr>
		 			</thead>
		 			<tbody>
		 			<tr> <td>LA3002</td> <td>Equity and Trusts</td> <td class="text-end">37</td> <td>Fail</td></tr><tr> <td>LA3021</td> <td>Company law</td> <td class="text-end">38</td> <td>Fail</td></tr></tbody>
		 		</table>
				</div>
		 	</div>
<div class="row">
		 		<div id="notespanel" class="col-lg-7">
		 			
		 		</div>
		 	</div>
<!--  
		 	<div id="awardpanel">
		 		<h4>You have been awarded the following qualification</h4>
		 		<dl class="row" id="awardname">
	  				<dt class="col-sm-3">Classification</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>	
	  			<dl class="row" id="awardtitle">
	  				<dt class="col-sm-3">Title</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>		
		 	</div>-->
<!-- 
		 	<div id="progressionpanel">
		 		<h4>You have been given the following progression information</h4>
		 		<dl class="row" id="progressionstatus">
	  				<dt class="col-sm-3">Status</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>
	  			<dl class="row" id="progressionmessage">
	  				<dt class="col-sm-3">Message</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>
	  			<dl class="row" id="progressionlongmessage">
	  				<dd class="col-sm-12"></dd>
	  			</dl>
		 	</div>-->
<div id="regpanel">
		 		<h4>Additional information regarding these results</h4>
		 		<dl class="row" id="regyear">
	  				<dt class="col-sm-3">Year</dt>
	  				<dd class="col-sm-9">2023/4</dd>
	  			</dl>
	  			<dl class="row" id="regsession">
	  				<dt class="col-sm-3">Session</dt>
	  				<dd class="col-sm-9">October</dd>
	  			</dl>
	  			<dl class="row" id="regcandno">
	  				<dt class="col-sm-3">Candidate Number</dt>
	  				<dd class="col-sm-9">N20909</dd>
	  			</dl>
	  			<dl class="row" id="regstu">
	  				<dt class="col-sm-3">Student Number</dt>
	  				<dd class="col-sm-9">200712444</dd>
	  			</dl>
	  			<dl class="row" id="regprg">
	  				<dt class="col-sm-3">Programme</dt>
	  				<dd class="col-sm-9">LLB</dd>
	  			</dl>
				
				
		 	</div>
<div class="row">
		 		<div class="col-lg-7">
		 			
		 		</div>
		 		<div class="col-lg-7">
		 			<p>
		 				Please note that in determining your results, the Examiners have taken into account any information you may have submitted in respect of extenuating or mitigating circumstances.
		 			</p>

		 			<p>
						All marks and results have undergone a thorough administrative check and there is no appeal on academic grounds. If, however, 
						you should wish to make formal application for a re-check of your marks please follow the following link: 
						<a target="_BLANK" href="https://sits.london.ac.uk/urd/sits.urd/run/siw_sso.signon?SSO=7m791ORtFDb3xVD+VBzUj85AZnpHgMNPuSVP1mkjbu3lNQ2O+mpOqrEw/Q48AgmZmLsM8HwixbiJ04JeCGqCzgBtTQMsx83xNT6dpu1vUW36PuShYO+Co/TZQrjFN8T+vseMnvaxS8BV3876DlKPWxSOCvxk8MtKEuGBcGrFnoiLCws4c1tmQkL0LLZ6JwCtXuogFOHT4Wk9Eks4lJg5C9JVozKs9A0BzAFnPf16nNEDxco1uxY+wiZyh1dbyldd&amp;IV=385ec67d0c5a496b">Re-check of marks</a>.
						Please note: This process relates to time-constrained examinations only. Administrative rechecks are not available for coursework marks.
					</p>
					<p class="award-only collapse">
						Your transcript and certificate will be sent to your home address.
						Please make sure your contact details are correct.
						You can update your details by following the link:
						<a target="_BLANK" href="https://sits.london.ac.uk/urd/sits.urd/run/siw_sso.signon?SSO=zF9cxKTRzqIMsvRXVBQhDke817Ga1rCC+fAgMBKL/sNWwHdmKrOjnWU1fFrRQHef+p17FJWr+luQL5ohf/SlKM57NVkefQ9K1pxQd+jStYteN5z/lDgx+bzPf2jaokhY4bQ0QBgHCVB7lXZKjvhVuKB99czZlcHVvlaUpWr6bTYJoYZSyDFyMaQEhvwwfszigjVLNadPFNcgW7D/sX83LzXhDJ0kFxTtiZBnZrM8gtGV3+f2uVaSydegnQyHtpay&amp;IV=2e1ae9a3f0cd40c0">My Home address</a>.
					</p>
		 		</div>
	
		 	</div>
<div class="result-container displayfinal" id="result-container-110313601">
		 	<div id="smrpanel" class="row">
		 		<div class="col-lg-7">
		 		<table id="smrtable" class="table ">
		 			<thead>
		 				<tr>
		 				<th scope="col">Code</th>
		 				<th scope="col">Name</th>
		 				<th class="text-end" scope="col">Mark</th>
		 				<th scope="col">Grade</th>
		 				</tr>
		 			</thead>
		 			<tbody>
		 			<tr> <td>LA3002</td> <td>Equity and Trusts</td> <td class="text-end">37</td> <td>Fail</td></tr><tr> <td>LA3021</td> <td>Company law</td> <td class="text-end">38</td> <td>Fail</td></tr></tbody>
		 		</table>
				</div>
		 	</div>
		 	<div class="row">
		 		<div id="notespanel" class="col-lg-7">
		 			
		 		</div>
		 	</div>
		 	<!--  
		 	<div id="awardpanel">
		 		<h4>You have been awarded the following qualification</h4>
		 		<dl class="row" id="awardname">
	  				<dt class="col-sm-3">Classification</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>	
	  			<dl class="row" id="awardtitle">
	  				<dt class="col-sm-3">Title</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>		
		 	</div>-->
		 	
	
		 	
		 	
		 	
		 	<!-- 
		 	<div id="progressionpanel">
		 		<h4>You have been given the following progression information</h4>
		 		<dl class="row" id="progressionstatus">
	  				<dt class="col-sm-3">Status</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>
	  			<dl class="row" id="progressionmessage">
	  				<dt class="col-sm-3">Message</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>
	  			<dl class="row" id="progressionlongmessage">
	  				<dd class="col-sm-12"></dd>
	  			</dl>
		 	</div>-->
		 	
		 	<div id="regpanel">
		 		<h4>Additional information regarding these results</h4>
		 		<dl class="row" id="regyear">
	  				<dt class="col-sm-3">Year</dt>
	  				<dd class="col-sm-9">2023/4</dd>
	  			</dl>
	  			<dl class="row" id="regsession">
	  				<dt class="col-sm-3">Session</dt>
	  				<dd class="col-sm-9">October</dd>
	  			</dl>
	  			<dl class="row" id="regcandno">
	  				<dt class="col-sm-3">Candidate Number</dt>
	  				<dd class="col-sm-9">N20909</dd>
	  			</dl>
	  			<dl class="row" id="regstu">
	  				<dt class="col-sm-3">Student Number</dt>
	  				<dd class="col-sm-9">200712444</dd>
	  			</dl>
	  			<dl class="row" id="regprg">
	  				<dt class="col-sm-3">Programme</dt>
	  				<dd class="col-sm-9">LLB</dd>
	  			</dl>
				
				
		 	</div>
		 	<div class="row">
		 		<div class="col-lg-7">
		 			
		 		</div>
		 		<div class="col-lg-7">
		 			<p>
		 				Please note that in determining your results, the Examiners have taken into account any information you may have submitted in respect of extenuating or mitigating circumstances.
		 			</p>

		 			<p>
						All marks and results have undergone a thorough administrative check and there is no appeal on academic grounds. If, however, 
						you should wish to make formal application for a re-check of your marks please follow the following link: 
						<a target="_BLANK" href="https://sits.london.ac.uk/urd/sits.urd/run/siw_sso.signon?SSO=7m791ORtFDb3xVD+VBzUj85AZnpHgMNPuSVP1mkjbu3lNQ2O+mpOqrEw/Q48AgmZmLsM8HwixbiJ04JeCGqCzgBtTQMsx83xNT6dpu1vUW36PuShYO+Co/TZQrjFN8T+vseMnvaxS8BV3876DlKPWxSOCvxk8MtKEuGBcGrFnoiLCws4c1tmQkL0LLZ6JwCtXuogFOHT4Wk9Eks4lJg5C9JVozKs9A0BzAFnPf16nNEDxco1uxY+wiZyh1dbyldd&amp;IV=385ec67d0c5a496b">Re-check of marks</a>.
						Please note: This process relates to time-constrained examinations only. Administrative rechecks are not available for coursework marks.
					</p>
					<p class="award-only collapse">
						Your transcript and certificate will be sent to your home address.
						Please make sure your contact details are correct.
						You can update your details by following the link:
						<a target="_BLANK" href="https://sits.london.ac.uk/urd/sits.urd/run/siw_sso.signon?SSO=zF9cxKTRzqIMsvRXVBQhDke817Ga1rCC+fAgMBKL/sNWwHdmKrOjnWU1fFrRQHef+p17FJWr+luQL5ohf/SlKM57NVkefQ9K1pxQd+jStYteN5z/lDgx+bzPf2jaokhY4bQ0QBgHCVB7lXZKjvhVuKB99czZlcHVvlaUpWr6bTYJoYZSyDFyMaQEhvwwfszigjVLNadPFNcgW7D/sX83LzXhDJ0kFxTtiZBnZrM8gtGV3+f2uVaSydegnQyHtpay&amp;IV=2e1ae9a3f0cd40c0">My Home address</a>.
					</p>
		 		</div>
	
		 	</div>
		</div>
<form id="results" name="results" action="/examresults/results.do" method="post">
		<div class="form-row align-items-end mb-2">
			

		 	<div class="col-lg-7">
		 		<select class="form-select d-none" id="result-select">
				</select> 
		 	</div>
		 	
		</div>
		

	<div class="result-data" data-results="{&quot;seqn&quot;:110313601,&quot;year&quot;:&quot;2023/4&quot;,&quot;candno&quot;:&quot;N20909&quot;,&quot;session&quot;:&quot;October&quot;,&quot;registration&quot;:{&quot;code&quot;:&quot;200712444/2&quot;,&quot;stu_code&quot;:&quot;200712444&quot;,&quot;programme_code&quot;:&quot;ULB-LAWSE02S&quot;,&quot;programme_name&quot;:&quot;LLB&quot;},&quot;results&quot;:[{&quot;code&quot;:&quot;LA3002&quot;,&quot;name&quot;:&quot;Equity and Trusts&quot;,&quot;mark&quot;:&quot;37&quot;,&quot;grade&quot;:&quot;Fail&quot;},{&quot;code&quot;:&quot;LA3021&quot;,&quot;name&quot;:&quot;Company law&quot;,&quot;mark&quot;:&quot;38&quot;,&quot;grade&quot;:&quot;Fail&quot;}]}"></div>
	 		<div class="result-container displayfinal" id="result-container-110313601">
		 	<div id="smrpanel" class="row">
		 		<div class="col-lg-7">
		 		<table id="smrtable" class="table ">
		 			<thead>
		 				<tr>
		 				<th scope="col">Code</th>
		 				<th scope="col">Name</th>
		 				<th class="text-end" scope="col">Mark</th>
		 				<th scope="col">Grade</th>
		 				</tr>
		 			</thead>
		 			<tbody>
		 			<tr> <td>LA3002</td> <td>Equity and Trusts</td> <td class="text-end">37</td> <td>Fail</td></tr><tr> <td>LA3021</td> <td>Company law</td> <td class="text-end">38</td> <td>Fail</td></tr></tbody>
		 		</table>
				</div>
		 	</div>
		 	<div class="row">
		 		<div id="notespanel" class="col-lg-7">
		 			
		 		</div>
		 	</div>
		 	<!--  
		 	<div id="awardpanel">
		 		<h4>You have been awarded the following qualification</h4>
		 		<dl class="row" id="awardname">
	  				<dt class="col-sm-3">Classification</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>	
	  			<dl class="row" id="awardtitle">
	  				<dt class="col-sm-3">Title</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>		
		 	</div>-->
		 	
	
		 	
		 	
		 	
		 	<!-- 
		 	<div id="progressionpanel">
		 		<h4>You have been given the following progression information</h4>
		 		<dl class="row" id="progressionstatus">
	  				<dt class="col-sm-3">Status</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>
	  			<dl class="row" id="progressionmessage">
	  				<dt class="col-sm-3">Message</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>
	  			<dl class="row" id="progressionlongmessage">
	  				<dd class="col-sm-12"></dd>
	  			</dl>
		 	</div>-->
		 	
		 	<div id="regpanel">
		 		<h4>Additional information regarding these results</h4>
		 		<dl class="row" id="regyear">
	  				<dt class="col-sm-3">Year</dt>
	  				<dd class="col-sm-9">2023/4</dd>
	  			</dl>
	  			<dl class="row" id="regsession">
	  				<dt class="col-sm-3">Session</dt>
	  				<dd class="col-sm-9">October</dd>
	  			</dl>
	  			<dl class="row" id="regcandno">
	  				<dt class="col-sm-3">Candidate Number</dt>
	  				<dd class="col-sm-9">N20909</dd>
	  			</dl>
	  			<dl class="row" id="regstu">
	  				<dt class="col-sm-3">Student Number</dt>
	  				<dd class="col-sm-9">200712444</dd>
	  			</dl>
	  			<dl class="row" id="regprg">
	  				<dt class="col-sm-3">Programme</dt>
	  				<dd class="col-sm-9">LLB</dd>
	  			</dl>
				
				
		 	</div>
		 	<div class="row">
		 		<div class="col-lg-7">
		 			
		 		</div>
		 		<div class="col-lg-7">
		 			<p>
		 				Please note that in determining your results, the Examiners have taken into account any information you may have submitted in respect of extenuating or mitigating circumstances.
		 			</p>

		 			<p>
						All marks and results have undergone a thorough administrative check and there is no appeal on academic grounds. If, however, 
						you should wish to make formal application for a re-check of your marks please follow the following link: 
						<a target="_BLANK" href="https://sits.london.ac.uk/urd/sits.urd/run/siw_sso.signon?SSO=7m791ORtFDb3xVD+VBzUj85AZnpHgMNPuSVP1mkjbu3lNQ2O+mpOqrEw/Q48AgmZmLsM8HwixbiJ04JeCGqCzgBtTQMsx83xNT6dpu1vUW36PuShYO+Co/TZQrjFN8T+vseMnvaxS8BV3876DlKPWxSOCvxk8MtKEuGBcGrFnoiLCws4c1tmQkL0LLZ6JwCtXuogFOHT4Wk9Eks4lJg5C9JVozKs9A0BzAFnPf16nNEDxco1uxY+wiZyh1dbyldd&amp;IV=385ec67d0c5a496b">Re-check of marks</a>.
						Please note: This process relates to time-constrained examinations only. Administrative rechecks are not available for coursework marks.
					</p>
					<p class="award-only collapse">
						Your transcript and certificate will be sent to your home address.
						Please make sure your contact details are correct.
						You can update your details by following the link:
						<a target="_BLANK" href="https://sits.london.ac.uk/urd/sits.urd/run/siw_sso.signon?SSO=zF9cxKTRzqIMsvRXVBQhDke817Ga1rCC+fAgMBKL/sNWwHdmKrOjnWU1fFrRQHef+p17FJWr+luQL5ohf/SlKM57NVkefQ9K1pxQd+jStYteN5z/lDgx+bzPf2jaokhY4bQ0QBgHCVB7lXZKjvhVuKB99czZlcHVvlaUpWr6bTYJoYZSyDFyMaQEhvwwfszigjVLNadPFNcgW7D/sX83LzXhDJ0kFxTtiZBnZrM8gtGV3+f2uVaSydegnQyHtpay&amp;IV=2e1ae9a3f0cd40c0">My Home address</a>.
					</p>
		 		</div>
	
		 	</div>
		</div>
	
	 	
	</form>
<div class="container-fluid">
<h3>Your results are listed below</h3>
		
 	<form id="results" name="results" action="/examresults/results.do" method="post">
		<div class="form-row align-items-end mb-2">
			

		 	<div class="col-lg-7">
		 		<select class="form-select d-none" id="result-select">
				</select> 
		 	</div>
		 	
		</div>
		

	<div class="result-data" data-results="{&quot;seqn&quot;:110313601,&quot;year&quot;:&quot;2023/4&quot;,&quot;candno&quot;:&quot;N20909&quot;,&quot;session&quot;:&quot;October&quot;,&quot;registration&quot;:{&quot;code&quot;:&quot;200712444/2&quot;,&quot;stu_code&quot;:&quot;200712444&quot;,&quot;programme_code&quot;:&quot;ULB-LAWSE02S&quot;,&quot;programme_name&quot;:&quot;LLB&quot;},&quot;results&quot;:[{&quot;code&quot;:&quot;LA3002&quot;,&quot;name&quot;:&quot;Equity and Trusts&quot;,&quot;mark&quot;:&quot;37&quot;,&quot;grade&quot;:&quot;Fail&quot;},{&quot;code&quot;:&quot;LA3021&quot;,&quot;name&quot;:&quot;Company law&quot;,&quot;mark&quot;:&quot;38&quot;,&quot;grade&quot;:&quot;Fail&quot;}]}"></div>
	 		<div class="result-container displayfinal" id="result-container-110313601">
		 	<div id="smrpanel" class="row">
		 		<div class="col-lg-7">
		 		<table id="smrtable" class="table ">
		 			<thead>
		 				<tr>
		 				<th scope="col">Code</th>
		 				<th scope="col">Name</th>
		 				<th class="text-end" scope="col">Mark</th>
		 				<th scope="col">Grade</th>
		 				</tr>
		 			</thead>
		 			<tbody>
		 			<tr> <td>LA3002</td> <td>Equity and Trusts</td> <td class="text-end">37</td> <td>Fail</td></tr><tr> <td>LA3021</td> <td>Company law</td> <td class="text-end">38</td> <td>Fail</td></tr></tbody>
		 		</table>
				</div>
		 	</div>
		 	<div class="row">
		 		<div id="notespanel" class="col-lg-7">
		 			
		 		</div>
		 	</div>
		 	<!--  
		 	<div id="awardpanel">
		 		<h4>You have been awarded the following qualification</h4>
		 		<dl class="row" id="awardname">
	  				<dt class="col-sm-3">Classification</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>	
	  			<dl class="row" id="awardtitle">
	  				<dt class="col-sm-3">Title</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>		
		 	</div>-->
		 	
	
		 	
		 	
		 	
		 	<!-- 
		 	<div id="progressionpanel">
		 		<h4>You have been given the following progression information</h4>
		 		<dl class="row" id="progressionstatus">
	  				<dt class="col-sm-3">Status</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>
	  			<dl class="row" id="progressionmessage">
	  				<dt class="col-sm-3">Message</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>
	  			<dl class="row" id="progressionlongmessage">
	  				<dd class="col-sm-12"></dd>
	  			</dl>
		 	</div>-->
		 	
		 	<div id="regpanel">
		 		<h4>Additional information regarding these results</h4>
		 		<dl class="row" id="regyear">
	  				<dt class="col-sm-3">Year</dt>
	  				<dd class="col-sm-9">2023/4</dd>
	  			</dl>
	  			<dl class="row" id="regsession">
	  				<dt class="col-sm-3">Session</dt>
	  				<dd class="col-sm-9">October</dd>
	  			</dl>
	  			<dl class="row" id="regcandno">
	  				<dt class="col-sm-3">Candidate Number</dt>
	  				<dd class="col-sm-9">N20909</dd>
	  			</dl>
	  			<dl class="row" id="regstu">
	  				<dt class="col-sm-3">Student Number</dt>
	  				<dd class="col-sm-9">200712444</dd>
	  			</dl>
	  			<dl class="row" id="regprg">
	  				<dt class="col-sm-3">Programme</dt>
	  				<dd class="col-sm-9">LLB</dd>
	  			</dl>
				
				
		 	</div>
		 	<div class="row">
		 		<div class="col-lg-7">
		 			
		 		</div>
		 		<div class="col-lg-7">
		 			<p>
		 				Please note that in determining your results, the Examiners have taken into account any information you may have submitted in respect of extenuating or mitigating circumstances.
		 			</p>

		 			<p>
						All marks and results have undergone a thorough administrative check and there is no appeal on academic grounds. If, however, 
						you should wish to make formal application for a re-check of your marks please follow the following link: 
						<a target="_BLANK" href="https://sits.london.ac.uk/urd/sits.urd/run/siw_sso.signon?SSO=7m791ORtFDb3xVD+VBzUj85AZnpHgMNPuSVP1mkjbu3lNQ2O+mpOqrEw/Q48AgmZmLsM8HwixbiJ04JeCGqCzgBtTQMsx83xNT6dpu1vUW36PuShYO+Co/TZQrjFN8T+vseMnvaxS8BV3876DlKPWxSOCvxk8MtKEuGBcGrFnoiLCws4c1tmQkL0LLZ6JwCtXuogFOHT4Wk9Eks4lJg5C9JVozKs9A0BzAFnPf16nNEDxco1uxY+wiZyh1dbyldd&amp;IV=385ec67d0c5a496b">Re-check of marks</a>.
						Please note: This process relates to time-constrained examinations only. Administrative rechecks are not available for coursework marks.
					</p>
					<p class="award-only collapse">
						Your transcript and certificate will be sent to your home address.
						Please make sure your contact details are correct.
						You can update your details by following the link:
						<a target="_BLANK" href="https://sits.london.ac.uk/urd/sits.urd/run/siw_sso.signon?SSO=zF9cxKTRzqIMsvRXVBQhDke817Ga1rCC+fAgMBKL/sNWwHdmKrOjnWU1fFrRQHef+p17FJWr+luQL5ohf/SlKM57NVkefQ9K1pxQd+jStYteN5z/lDgx+bzPf2jaokhY4bQ0QBgHCVB7lXZKjvhVuKB99czZlcHVvlaUpWr6bTYJoYZSyDFyMaQEhvwwfszigjVLNadPFNcgW7D/sX83LzXhDJ0kFxTtiZBnZrM8gtGV3+f2uVaSydegnQyHtpay&amp;IV=2e1ae9a3f0cd40c0">My Home address</a>.
					</p>
		 		</div>
	
		 	</div>
		</div>
	
	 	
	</form></div>
<div class="container-fluid">
	<div class="row">
	 		<div class="col-lg-7">
				<p>
					If you have any queries concerning the information on this page, please contact us via the 'Ask a question' page in the Portal - <a target="_BLANK" href="https://my.london.ac.uk">https://my.london.ac.uk</a>
				</p>
			</div>
	</div>
</div>
<body>





<noscript>This site requires javascript.</noscript>
 <nav class="navbar navbar-expand-lg navbar-light">
	 <div class="container-fluid">
		<a class="navbar-brand" href="https://london.ac.uk">
			<img class="d-none d-sm-inline" height="50px" src="/examresults/images/uol-logo.png" alt="University of London">
			<img class="d-inline d-sm-none" height="50px" src="/examresults/images/uol-logo-xs.png" alt="University of London">
		</a>
		<h3 class="navbar-text"><a class="nav-link" href="/examresults/">Assessment Results</a></h3>
	 </div>
</nav>
<div class="container-fluid">
<h3>Your results are listed below</h3>
		
 	<form id="results" name="results" action="/examresults/results.do" method="post">
		<div class="form-row align-items-end mb-2">
			

		 	<div class="col-lg-7">
		 		<select class="form-select d-none" id="result-select">
				</select> 
		 	</div>
		 	
		</div>
		

	<div class="result-data" data-results="{&quot;seqn&quot;:110313601,&quot;year&quot;:&quot;2023/4&quot;,&quot;candno&quot;:&quot;N20909&quot;,&quot;session&quot;:&quot;October&quot;,&quot;registration&quot;:{&quot;code&quot;:&quot;200712444/2&quot;,&quot;stu_code&quot;:&quot;200712444&quot;,&quot;programme_code&quot;:&quot;ULB-LAWSE02S&quot;,&quot;programme_name&quot;:&quot;LLB&quot;},&quot;results&quot;:[{&quot;code&quot;:&quot;LA3002&quot;,&quot;name&quot;:&quot;Equity and Trusts&quot;,&quot;mark&quot;:&quot;37&quot;,&quot;grade&quot;:&quot;Fail&quot;},{&quot;code&quot;:&quot;LA3021&quot;,&quot;name&quot;:&quot;Company law&quot;,&quot;mark&quot;:&quot;38&quot;,&quot;grade&quot;:&quot;Fail&quot;}]}"></div>
	 		<div class="result-container displayfinal" id="result-container-110313601">
		 	<div id="smrpanel" class="row">
		 		<div class="col-lg-7">
		 		<table id="smrtable" class="table ">
		 			<thead>
		 				<tr>
		 				<th scope="col">Code</th>
		 				<th scope="col">Name</th>
		 				<th class="text-end" scope="col">Mark</th>
		 				<th scope="col">Grade</th>
		 				</tr>
		 			</thead>
		 			<tbody>
		 			<tr> <td>LA3002</td> <td>Equity and Trusts</td> <td class="text-end">37</td> <td>Fail</td></tr><tr> <td>LA3021</td> <td>Company law</td> <td class="text-end">38</td> <td>Fail</td></tr></tbody>
		 		</table>
				</div>
		 	</div>
		 	<div class="row">
		 		<div id="notespanel" class="col-lg-7">
		 			
		 		</div>
		 	</div>
		 	<!--  
		 	<div id="awardpanel">
		 		<h4>You have been awarded the following qualification</h4>
		 		<dl class="row" id="awardname">
	  				<dt class="col-sm-3">Classification</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>	
	  			<dl class="row" id="awardtitle">
	  				<dt class="col-sm-3">Title</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>		
		 	</div>-->
		 	
	
		 	
		 	
		 	
		 	<!-- 
		 	<div id="progressionpanel">
		 		<h4>You have been given the following progression information</h4>
		 		<dl class="row" id="progressionstatus">
	  				<dt class="col-sm-3">Status</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>
	  			<dl class="row" id="progressionmessage">
	  				<dt class="col-sm-3">Message</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>
	  			<dl class="row" id="progressionlongmessage">
	  				<dd class="col-sm-12"></dd>
	  			</dl>
		 	</div>-->
		 	
		 	<div id="regpanel">
		 		<h4>Additional information regarding these results</h4>
		 		<dl class="row" id="regyear">
	  				<dt class="col-sm-3">Year</dt>
	  				<dd class="col-sm-9">2023/4</dd>
	  			</dl>
	  			<dl class="row" id="regsession">
	  				<dt class="col-sm-3">Session</dt>
	  				<dd class="col-sm-9">October</dd>
	  			</dl>
	  			<dl class="row" id="regcandno">
	  				<dt class="col-sm-3">Candidate Number</dt>
	  				<dd class="col-sm-9">N20909</dd>
	  			</dl>
	  			<dl class="row" id="regstu">
	  				<dt class="col-sm-3">Student Number</dt>
	  				<dd class="col-sm-9">200712444</dd>
	  			</dl>
	  			<dl class="row" id="regprg">
	  				<dt class="col-sm-3">Programme</dt>
	  				<dd class="col-sm-9">LLB</dd>
	  			</dl>
				
				
		 	</div>
		 	<div class="row">
		 		<div class="col-lg-7">
		 			
		 		</div>
		 		<div class="col-lg-7">
		 			<p>
		 				Please note that in determining your results, the Examiners have taken into account any information you may have submitted in respect of extenuating or mitigating circumstances.
		 			</p>

		 			<p>
						All marks and results have undergone a thorough administrative check and there is no appeal on academic grounds. If, however, 
						you should wish to make formal application for a re-check of your marks please follow the following link: 
						<a target="_BLANK" href="https://sits.london.ac.uk/urd/sits.urd/run/siw_sso.signon?SSO=7m791ORtFDb3xVD+VBzUj85AZnpHgMNPuSVP1mkjbu3lNQ2O+mpOqrEw/Q48AgmZmLsM8HwixbiJ04JeCGqCzgBtTQMsx83xNT6dpu1vUW36PuShYO+Co/TZQrjFN8T+vseMnvaxS8BV3876DlKPWxSOCvxk8MtKEuGBcGrFnoiLCws4c1tmQkL0LLZ6JwCtXuogFOHT4Wk9Eks4lJg5C9JVozKs9A0BzAFnPf16nNEDxco1uxY+wiZyh1dbyldd&amp;IV=385ec67d0c5a496b">Re-check of marks</a>.
						Please note: This process relates to time-constrained examinations only. Administrative rechecks are not available for coursework marks.
					</p>
					<p class="award-only collapse">
						Your transcript and certificate will be sent to your home address.
						Please make sure your contact details are correct.
						You can update your details by following the link:
						<a target="_BLANK" href="https://sits.london.ac.uk/urd/sits.urd/run/siw_sso.signon?SSO=zF9cxKTRzqIMsvRXVBQhDke817Ga1rCC+fAgMBKL/sNWwHdmKrOjnWU1fFrRQHef+p17FJWr+luQL5ohf/SlKM57NVkefQ9K1pxQd+jStYteN5z/lDgx+bzPf2jaokhY4bQ0QBgHCVB7lXZKjvhVuKB99czZlcHVvlaUpWr6bTYJoYZSyDFyMaQEhvwwfszigjVLNadPFNcgW7D/sX83LzXhDJ0kFxTtiZBnZrM8gtGV3+f2uVaSydegnQyHtpay&amp;IV=2e1ae9a3f0cd40c0">My Home address</a>.
					</p>
		 		</div>
	
		 	</div>
		</div>
	
	 	
	</form></div>
 



 <div class="container-fluid">
	<div class="row">
	 		<div class="col-lg-7">
				<p>
					If you have any queries concerning the information on this page, please contact us via the 'Ask a question' page in the Portal - <a target="_BLANK" href="https://my.london.ac.uk">https://my.london.ac.uk</a>
				</p>
			</div>
	</div>
</div>
 
</body>
<html lang="en"><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>University of London: Assessment Results</title>
	  <script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	  <link rel="stylesheet" href="/examresults/css/bootstrap.css">
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous">
	<script src="/examresults/js/results.js?v=2"></script>

	<meta name="author" content="University of London">
	<meta name="copyright" content="University of London">
	</head>

	
<body>





<noscript>This site requires javascript.</noscript>
 <nav class="navbar navbar-expand-lg navbar-light">
	 <div class="container-fluid">
		<a class="navbar-brand" href="https://london.ac.uk">
			<img class="d-none d-sm-inline" height="50px" src="/examresults/images/uol-logo.png" alt="University of London">
			<img class="d-inline d-sm-none" height="50px" src="/examresults/images/uol-logo-xs.png" alt="University of London">
		</a>
		<h3 class="navbar-text"><a class="nav-link" href="/examresults/">Assessment Results</a></h3>
	 </div>
</nav>
<div class="container-fluid">
<h3>Your results are listed below</h3>
		
 	<form id="results" name="results" action="/examresults/results.do" method="post">
		<div class="form-row align-items-end mb-2">
			

		 	<div class="col-lg-7">
		 		<select class="form-select d-none" id="result-select">
				</select> 
		 	</div>
		 	
		</div>
		

	<div class="result-data" data-results="{&quot;seqn&quot;:110313601,&quot;year&quot;:&quot;2023/4&quot;,&quot;candno&quot;:&quot;N20909&quot;,&quot;session&quot;:&quot;October&quot;,&quot;registration&quot;:{&quot;code&quot;:&quot;200712444/2&quot;,&quot;stu_code&quot;:&quot;200712444&quot;,&quot;programme_code&quot;:&quot;ULB-LAWSE02S&quot;,&quot;programme_name&quot;:&quot;LLB&quot;},&quot;results&quot;:[{&quot;code&quot;:&quot;LA3002&quot;,&quot;name&quot;:&quot;Equity and Trusts&quot;,&quot;mark&quot;:&quot;37&quot;,&quot;grade&quot;:&quot;Fail&quot;},{&quot;code&quot;:&quot;LA3021&quot;,&quot;name&quot;:&quot;Company law&quot;,&quot;mark&quot;:&quot;38&quot;,&quot;grade&quot;:&quot;Fail&quot;}]}"></div>
	 		<div class="result-container displayfinal" id="result-container-110313601">
		 	<div id="smrpanel" class="row">
		 		<div class="col-lg-7">
		 		<table id="smrtable" class="table ">
		 			<thead>
		 				<tr>
		 				<th scope="col">Code</th>
		 				<th scope="col">Name</th>
		 				<th class="text-end" scope="col">Mark</th>
		 				<th scope="col">Grade</th>
		 				</tr>
		 			</thead>
		 			<tbody>
		 			<tr> <td>LA3002</td> <td>Equity and Trusts</td> <td class="text-end">37</td> <td>Fail</td></tr><tr> <td>LA3021</td> <td>Company law</td> <td class="text-end">38</td> <td>Fail</td></tr></tbody>
		 		</table>
				</div>
		 	</div>
		 	<div class="row">
		 		<div id="notespanel" class="col-lg-7">
		 			
		 		</div>
		 	</div>
		 	<!--  
		 	<div id="awardpanel">
		 		<h4>You have been awarded the following qualification</h4>
		 		<dl class="row" id="awardname">
	  				<dt class="col-sm-3">Classification</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>	
	  			<dl class="row" id="awardtitle">
	  				<dt class="col-sm-3">Title</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>		
		 	</div>-->
		 	
	
		 	
		 	
		 	
		 	<!-- 
		 	<div id="progressionpanel">
		 		<h4>You have been given the following progression information</h4>
		 		<dl class="row" id="progressionstatus">
	  				<dt class="col-sm-3">Status</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>
	  			<dl class="row" id="progressionmessage">
	  				<dt class="col-sm-3">Message</dt>
	  				<dd class="col-sm-9"></dd>
	  			</dl>
	  			<dl class="row" id="progressionlongmessage">
	  				<dd class="col-sm-12"></dd>
	  			</dl>
		 	</div>-->
		 	
		 	<div id="regpanel">
		 		<h4>Additional information regarding these results</h4>
		 		<dl class="row" id="regyear">
	  				<dt class="col-sm-3">Year</dt>
	  				<dd class="col-sm-9">2023/4</dd>
	  			</dl>
	  			<dl class="row" id="regsession">
	  				<dt class="col-sm-3">Session</dt>
	  				<dd class="col-sm-9">October</dd>
	  			</dl>
	  			<dl class="row" id="regcandno">
	  				<dt class="col-sm-3">Candidate Number</dt>
	  				<dd class="col-sm-9">N20909</dd>
	  			</dl>
	  			<dl class="row" id="regstu">
	  				<dt class="col-sm-3">Student Number</dt>
	  				<dd class="col-sm-9">200712444</dd>
	  			</dl>
	  			<dl class="row" id="regprg">
	  				<dt class="col-sm-3">Programme</dt>
	  				<dd class="col-sm-9">LLB</dd>
	  			</dl>
				
				
		 	</div>
		 	<div class="row">
		 		<div class="col-lg-7">
		 			
		 		</div>
		 		<div class="col-lg-7">
		 			<p>
		 				Please note that in determining your results, the Examiners have taken into account any information you may have submitted in respect of extenuating or mitigating circumstances.
		 			</p>

		 			<p>
						All marks and results have undergone a thorough administrative check and there is no appeal on academic grounds. If, however, 
						you should wish to make formal application for a re-check of your marks please follow the following link: 
						<a target="_BLANK" href="https://sits.london.ac.uk/urd/sits.urd/run/siw_sso.signon?SSO=7m791ORtFDb3xVD+VBzUj85AZnpHgMNPuSVP1mkjbu3lNQ2O+mpOqrEw/Q48AgmZmLsM8HwixbiJ04JeCGqCzgBtTQMsx83xNT6dpu1vUW36PuShYO+Co/TZQrjFN8T+vseMnvaxS8BV3876DlKPWxSOCvxk8MtKEuGBcGrFnoiLCws4c1tmQkL0LLZ6JwCtXuogFOHT4Wk9Eks4lJg5C9JVozKs9A0BzAFnPf16nNEDxco1uxY+wiZyh1dbyldd&amp;IV=385ec67d0c5a496b">Re-check of marks</a>.
						Please note: This process relates to time-constrained examinations only. Administrative rechecks are not available for coursework marks.
					</p>
					<p class="award-only collapse">
						Your transcript and certificate will be sent to your home address.
						Please make sure your contact details are correct.
						You can update your details by following the link:
						<a target="_BLANK" href="https://sits.london.ac.uk/urd/sits.urd/run/siw_sso.signon?SSO=zF9cxKTRzqIMsvRXVBQhDke817Ga1rCC+fAgMBKL/sNWwHdmKrOjnWU1fFrRQHef+p17FJWr+luQL5ohf/SlKM57NVkefQ9K1pxQd+jStYteN5z/lDgx+bzPf2jaokhY4bQ0QBgHCVB7lXZKjvhVuKB99czZlcHVvlaUpWr6bTYJoYZSyDFyMaQEhvwwfszigjVLNadPFNcgW7D/sX83LzXhDJ0kFxTtiZBnZrM8gtGV3+f2uVaSydegnQyHtpay&amp;IV=2e1ae9a3f0cd40c0">My Home address</a>.
					</p>
		 		</div>
	
		 	</div>
		</div>
	
	 	
	</form></div>
 



 <div class="container-fluid">
	<div class="row">
	 		<div class="col-lg-7">
				<p>
					If you have any queries concerning the information on this page, please contact us via the 'Ask a question' page in the Portal - <a target="_BLANK" href="https://my.london.ac.uk">https://my.london.ac.uk</a>
				</p>
			</div>
	</div>
</div>
 
</body></html>