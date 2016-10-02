$.fn.newsticker=function(e){function t(e){function t(){var e=(parseInt(u.eq(0).css("height").split("px")[0]),parseInt(o.css("lineHeight").split("px")[0]));o.css("height",n.height),a=(n.height-e)/2,c.css("top",a),u.eq(0).addClass("current"),i(),s()}function i(){o.on("mouseover mouseout",function(e){h="mouseover"==e.type?!0:!1})}function s(){$.isFunction(n.move)?n.move.call(this):setInterval(function(){if(!h){var e=c.find(".current");c.animate({top:"-="+n.height+"px"},n.speed,function(){r=c.find(".current").next(),r.addClass("current"),e.removeClass("current"),e.clone().appendTo(c),e.remove(),c.css("top",a+"px")})}},n.interval)}var r,o=e,c=o.find(".newsticker-list"),u=c.find(".newsticker-item"),a=0,h=!1;t()}var n=$.extend({},{height:40,speed:800,interval:3e3,move:null},e);return this.each(function(){t($(this))}),this};

		
$(".quicklink").append('<ul class="sc-mainul"></ul>');

function checkWidth(){$(window).width()<992?($(".accordion-body").removeClass("in"),$(".accordion-toggle").addClass("collapsed")):($(".accordion-body").addClass("in"),$(".accordion-toggle").removeClass("collapsed"))}for(var i=0;i<social.length;i++)$(".sc-mainul").append('<li><ul id="'+social[i][2]+'"class="sc-li"><li>'+social[i][0]+'<i class="'+social[i][3]+'" aria-hidden="true"></i></li></ul></li>');$(".sc-li").click(function(){for(var t=$(this).text(),s=0;s<social.length;s++)social[s][0]==t&&(window.location=social[s][1])}),$(".sc-li").mouseenter(function(){$(this).stop(!0),$(this).clearQueue(),$(this).animate({right:"190px"},300)}),$(".sc-li").mouseleave(function(){$(this).animate({right:"0px"},300)});var Tabcordion;$.fn.tabcordion=function(t){return this.each(function(){var s,i,a;return s=$(this),a="object"==typeof t&&t,i=s.data("tabcordion")||new Tabcordion(this,a),"string"==typeof t?i[t]():"number"==typeof t?i.index(t):void 0})},$.fn.tabcordion.defaults={resizeEl:null,onResize:!0,delay:500,breakWidth:768,tabs:{minWidth:null,"class":"tabbable",listClass:"nav nav-tabs",itemClass:"",bodyClass:"tab-pane"},accordion:{maxWidth:null,"class":"accordion",listClass:"nav",itemClass:"accordion-group",bodyClass:"accordion-body collapse"},activeClass:"active in",scheduler:null},Tabcordion=function(){function t(t,s){var i;this.$el=$(t),this.options=$.extend({},$.fn.tabcordion.defaults,{resizeEl:this.$el},s),null==this.options.tabs.minWidth&&(this.options.tabs.minWidth=this.options.breakWidth),null==this.options.accordion.maxWidth&&(this.options.accordion.maxWidth=this.options.breakWidth),this.$el.addClass(this.options.tabs["class"]).find("> .tab-content > *").addClass(this.options.tabs.bodyClass),this.$el.find("> ul > li > a").attr("data-toggle","tab"),this.$el.data("tabcordion",this),(i=this.$el.find("> ul").attr("class"))&&(this.options.tabs.listClass+=" "+i),this.options.onResize&&(this.proxy=$.proxy(this.eventHandler,this),$(window).on("resize",this.proxy)),this.onResize(),this.initialized=!0}return t.prototype.index=function(t){var s,i,a,o,n,e,l;if(this.$el.hasClass(this.options.tabs["class"])){for(e=[this.$el.find(".tab-content > *"),this.$el.find(".nav-tabs > *")],l=[],o=0,n=e.length;n>o;o++)a=e[o],a.length>t?l.push(a.removeClass("active").slice(t,t+1).addClass("active")):l.push(void 0);return l}return this.$el.find(".accordion-body, .accordion-toggle").removeClass("active in"),i=this.$el.find(".accordion-group").removeClass("active"),s=i.slice(t,t+1),s.addClass(this.options.activeClass).find(".accordion-heading > .accordion-toggle").addClass(this.options.activeClass)},t.prototype.eventHandler=function(t){var s=this;return this.timeout&&clearTimeout(this.timeout),this.timeout=setTimeout(function(){return s.options.scheduler?s.options.scheduler(function(){return s.onResize(t)}):s.onResize(t)},this.options.delay)},t.prototype.onResize=function(){var t;return t=$(this.options.resizeEl).width(),t<this.options.tabs.minWidth?this.accordion():t>this.options.accordion.maxWidth?this.tabs():void 0},t.prototype.tabs=function(){var t,s,i=this;if(!this.initialized)return this.$el.find("> ul.nav a").tab().on("click",function(){return $(this).tab("show")});if(!this.$el.hasClass(this.options.tabs["class"]))return this.$el.removeClass(this.options.accordion["class"]).addClass(this.options.tabs["class"]),t=this.$el.find("> ul.nav").removeClass(this.options.accordion.listClass).addClass(this.options.tabs.listClass),s=this.$el.find(".tab-content").css("display","block"),t.parent().append(s),t.children().removeClass(this.options.accordion.itemClass).addClass(this.options.tabs.itemClass).each(function(t,a){var o,n,e,l;return l=$(a),e=l.find(".accordion-heading a"),e.attr("data-toggle","tab"),o=$(e.attr("data-target")).removeClass("fade"),n=o.find("> .accordion-inner").remove(),o.append(n.children()),l.children().remove().end().append(e),s.append(o),i.switchContent(e,o,i.options.accordion,i.options.tabs),e.tab()})},t.prototype.accordion=function(){var s,i,a,o=this;if(!this.$el.hasClass(this.options.accordion["class"]))return this.$el.removeClass(this.options.tabs["class"]).addClass(this.options.accordion["class"]),s=this.$el.find("> ul.nav").removeClass(this.options.tabs.listClass).addClass(this.options.accordion.listClass),s.parent().append(s),a=this.$el.find(".tab-content").css("display","none"),i=s.children(),i.removeClass(this.options.tabs.itemClass).addClass(this.options.accordion.itemClass).each(function(s,i){var a,n,e,l;return l=$(i),e=l.find("a"),a=$(e.attr("data-target")),n=$('<div class="accordion-heading" />').append(e),a.append($('<div class="accordion-inner" />').append(a.children())),a.attr("id")||a.attr("id",t.generateId("body")),e.addClass("accordion-toggle"),e.attr("data-toggle","collapse"),e.attr("data-target","#"+a.attr("id")),e.data("parent",o.$el),l.append(n).append(a),o.switchContent(e,a,o.options.tabs,o.options.accordion),!0})},t.prototype.switchContent=function(t,s,i,a){var o,n;return n=a.bodyClass===this.options.tabs.bodyClass,o=s.hasClass("active"),s.removeClass(i.bodyClass).addClass(a.bodyClass),o?(t.addClass(this.options.activeClass),s.addClass(this.options.activeClass)):(t.removeClass(this.options.activeClass),s.removeClass(this.options.activeClass)),t.on("click",function(t){return t.preventDefault()}),s.collapse({parent:this.$el.find("> ul"),toggle:!1}),n||(s.height(o?"auto":0),s.collapse()),o},t.prototype.getItems=function(){return this.$el.find(".nav > li a[data-target]")},t.prototype.destroy=function(){return this.proxy?$(window).off("resize",this.proxy):void 0},t}(),$.extend(Tabcordion,{idSuffix:1,generateId:function(t){for(var s;;)if(s="tabcordion-"+t+"-"+Tabcordion.idSuffix++,0===$("#"+s).length)break;return s}}),$(window).resize(checkWidth);

$( document ).ready(function() {
	
	var offset = 300, // browser window scroll (in pixels) after which the "back to top" link is shown
		offset_opacity = 400, //browser window scroll (in pixels) after which the "back to top" link opacity is reduced
		$back_to_top = $('.cd-top');//grab the "back to top" link

	$(window).scroll(function(){
		( $(this).scrollTop() > offset ) ? $back_to_top.addClass('cd-is-visible') : $back_to_top.removeClass('cd-is-visible');

	});

	$back_to_top.on('click', function(event){
		event.preventDefault();
		$('body,html').animate({
			scrollTop: 0 ,
		 	}, 700
		);
	});
	
	var oTable = $('#tableDoctors').DataTable( {
		'sDom': 't',
        "paging":   false,
        "ordering": false,
        "info":     false,
        "columnDefs": [
            {
                "targets": [ 2 ],
                "visible": false,
                "searchable": true
            },
            {
                "targets": [ 3 ],
                "visible": false,
                "searchable": true
            },
            {
                "targets": [ 4 ],
                "visible": false,
                "searchable": true
            }
        ]
    });
    $('#searchDoctorName').keyup(function(){         
	    oTable
	        .columns(1)
	        .search(this.value)
	        .draw();
	});
    $('#selectDoctorType').change(function(){         
	    oTable
	        .columns(2)
	        .search(this.value)
	        .draw();
	});
	$('#selectDoctorLang').change(function(){         
	    oTable
	        .columns(3)
	        .search(this.value)
	        .draw();
	});
	$('#selectDoctorClinic').change(function(){         
	    oTable
	        .columns(4)
	        .search(this.value)
	        .draw();
	});
    $('#tableDoctors_wrapper input').addClass('form-control input-lg').attr("placeholder", "Search for Doctors");;
    $('#tableDoctors_wrapper label').contents().filter(function() { return this.nodeType == Node.TEXT_NODE; }).remove();

	$("#carousel-homepage").on('slide.bs.carousel', function(evt) {

	   var step = $(evt.relatedTarget).index();

	   $('#slider_captions .carousel-caption:not(#caption-'+step+')').fadeOut(0, function() {
	   		$('#caption-'+step).fadeIn('slow');
	   });

	});

	$('.newsticker').newsticker();
	
	$("#menu-toggle").click(function(e) {
		e.preventDefault();
		$("#wrapper").toggleClass("toggled");
	});

	$(".date-picker").datepicker();

	$(".date-picker").on("change", function () {
	    var id = $(this).attr("id");
	    var val = $("label[for='" + id + "']").text();
	    $("#msg").text(val + " changed");
	});

	$("input[name='optionsRadios']").click(function () {
	    $('#show-date-picker').css('display', ($(this).val() === 'option2') ? 'block':'none');
	});

	if( /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ) {
	  $('.selectpicker').selectpicker('mobile');
	}

	$(function(){
	    $('#myModal').modal({
	        keyboard: true,
	        show:false,

	    }).on('show', function(){ //subscribe to show method
	          var getIdFromRow = $(event.target).closest('tr').data('id'); //get the id from tr
	        //make your ajax call populate items or what even you need
	        $(this).find('#orderDetails').html($('<b> Order Id selected: ' + getIdFromRow  + '</b>'))
	    });
	});
	
	jQuery(document).ready(function(){
		var accordionsMenu = $('.cd-accordion-menu');

		if( accordionsMenu.length > 0 ) {
			
			accordionsMenu.each(function(){
				var accordion = $(this);
				//detect change in the input[type="checkbox"] value
				accordion.on('change', 'input[type="checkbox"]', function(){
					var checkbox = $(this);
					console.log(checkbox.prop('checked'));
					( checkbox.prop('checked') ) ? checkbox.siblings('ul').attr('style', 'display:none;').slideDown(300) : checkbox.siblings('ul').attr('style', 'display:block;').slideUp(300);
				});
			});
		}
	});


	
});