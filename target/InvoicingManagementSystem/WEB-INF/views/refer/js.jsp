<script src="static/vendor/jquery/jquery.min.js"></script>
<script src="static/vendor/popper.js/popper.min.js"></script>
<script src="static/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="static/vendor/chart.js/chart.min.js"></script>
<script src="static/js/carbon.js"></script>
<script src="static/js/demo.js"></script>
<script>
$(function(){
	$(".nav-link-button").click(function(){
		var this_href=$(this).attr("href");
		$("#iframe_src").attr("src",this_href);	
		return false;
	});

	
})
</script>