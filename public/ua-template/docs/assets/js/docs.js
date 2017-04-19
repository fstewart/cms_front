/* global Chart:true, GMaps:true */
jQuery(document).ready(function($) {
    if ( $( '#carousel-owl-1' ).length ) {
	    $( '#carousel-owl-1' ).owlCarousel({
	    	items: 1
	    });
    }

	if ( $( '#carousel-owl-2' ).length ) {
	    $( '#carousel-owl-2' ).owlCarousel({
	    	items: 1
	    });
    }

	if ( $( '#carousel-owl-3' ).length ) {
	    $( '#carousel-owl-3' ).owlCarousel({
	    	dots: false,
	    	nav: true,
	    	navContainer: '.carousel-nav',
	    	navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>']
	    });
    }

	if ( $( '#carousel-owl-4' ).length ) {
	    $( '#carousel-owl-4' ).owlCarousel({
	    	items: 1,
	    	margin: 10,
	    	lazyLoad: true,
	    	video: true
	    });
    }

	if ( $( '#line-chart' ).length ) {
	    Chart.defaults.global.responsive = true;

	    var lineData = {
		    labels: ["January", "February", "March", "April", "May", "June", "July"],
		    datasets: [
		        {
		            label: "My First dataset",
		            fillColor: "rgba(220,220,220,0.2)",
		            strokeColor: "rgba(220,220,220,1)",
		            pointColor: "rgba(220,220,220,1)",
		            pointStrokeColor: "#fff",
		            pointHighlightFill: "#fff",
		            pointHighlightStroke: "rgba(220,220,220,1)",
		            data: [65, 59, 80, 81, 56, 55, 40]
		        },
		        {
		            label: "My Second dataset",
		            fillColor: "rgba(151,187,205,0.2)",
		            strokeColor: "rgba(151,187,205,1)",
		            pointColor: "rgba(151,187,205,1)",
		            pointStrokeColor: "#fff",
		            pointHighlightFill: "#fff",
		            pointHighlightStroke: "rgba(151,187,205,1)",
		            data: [28, 48, 40, 19, 86, 27, 90]
		        }
		    ]
		};

    	var lineChartctx = $( '#line-chart' ).get(0).getContext('2d');
    	new Chart( lineChartctx ).Line( lineData );
    }

    if ( $( '#bar-chart' ).length ) {
	    Chart.defaults.global.responsive = true;

	    var barData = {
		    labels: ["January", "February", "March", "April", "May", "June", "July"],
		    datasets: [
		        {
		            label: "My First dataset",
		            fillColor: "rgba(220,220,220,0.5)",
		            strokeColor: "rgba(220,220,220,0.8)",
		            highlightFill: "rgba(220,220,220,0.75)",
		            highlightStroke: "rgba(220,220,220,1)",
		            data: [65, 59, 80, 81, 56, 55, 40]
		        },
		        {
		            label: "My Second dataset",
		            fillColor: "rgba(151,187,205,0.5)",
		            strokeColor: "rgba(151,187,205,0.8)",
		            highlightFill: "rgba(151,187,205,0.75)",
		            highlightStroke: "rgba(151,187,205,1)",
		            data: [28, 48, 40, 19, 86, 27, 90]
		        }
		    ]
		};

	    var barChartctx = $( '#bar-chart' ).get(0).getContext('2d');
	    new Chart( barChartctx ).Bar( barData );
    }

	if ( $( '#radar-chart' ).length ) {
		Chart.defaults.global.responsive = true;

	    var radarData = {
			labels: ["Eating", "Drinking", "Sleeping", "Designing", "Coding", "Cycling", "Running"],
			datasets: [
			    {
			        label: "My First dataset",
			        fillColor: "rgba(220,220,220,0.2)",
			        strokeColor: "rgba(220,220,220,1)",
			        pointColor: "rgba(220,220,220,1)",
			        pointStrokeColor: "#fff",
			        pointHighlightFill: "#fff",
			        pointHighlightStroke: "rgba(220,220,220,1)",
			        data: [65, 59, 90, 81, 56, 55, 40]
			    },
			    {
			        label: "My Second dataset",
			        fillColor: "rgba(151,187,205,0.2)",
			        strokeColor: "rgba(151,187,205,1)",
			        pointColor: "rgba(151,187,205,1)",
			        pointStrokeColor: "#fff",
			        pointHighlightFill: "#fff",
			        pointHighlightStroke: "rgba(151,187,205,1)",
			        data: [28, 48, 40, 19, 96, 27, 100]
			    }
			]
		};

	    var radarChartctx = $( '#radar-chart' ).get(0).getContext('2d');
	    new Chart( radarChartctx ).Radar( radarData );
	}

	if ( $( '#polar-chart' ).length ) {
		Chart.defaults.global.responsive = true;

	    var polarData = [
		    {
		        value: 300,
		        color:"#F7464A",
		        highlight: "#FF5A5E",
		        label: "Red"
		    },
		    {
		        value: 50,
		        color: "#46BFBD",
		        highlight: "#5AD3D1",
		        label: "Green"
		    },
		    {
		        value: 100,
		        color: "#FDB45C",
		        highlight: "#FFC870",
		        label: "Yellow"
		    },
		    {
		        value: 40,
		        color: "#949FB1",
		        highlight: "#A8B3C5",
		        label: "Grey"
		    },
		    {
		        value: 120,
		        color: "#4D5360",
		        highlight: "#616774",
		        label: "Dark Grey"
		    }
		];

	    var polarChartctx = $( '#polar-chart' ).get(0).getContext('2d');
	    new Chart( polarChartctx ).PolarArea( polarData );
	}

    var pieData = [
	    {
	        value: 300,
	        color:"#F7464A",
	        highlight: "#FF5A5E",
	        label: "Red"
	    },
	    {
	        value: 50,
	        color: "#46BFBD",
	        highlight: "#5AD3D1",
	        label: "Green"
	    },
	    {
	        value: 100,
	        color: "#FDB45C",
	        highlight: "#FFC870",
	        label: "Yellow"
	    }
	];

	if ( $( '#pie-chart' ).length ) {
		Chart.defaults.global.responsive = true;

	    var pieChartctx = $( '#pie-chart' ).get(0).getContext('2d');
	    new Chart( pieChartctx ).Pie( pieData );
	}

	if ( $( '#donut-chart' ).length ) {
		Chart.defaults.global.responsive = true;

	    var donutChartctx = $( '#donut-chart' ).get(0).getContext('2d');
	    new Chart( donutChartctx ).Doughnut( pieData );
	}

	if ( $( '#map-1' ).length ) {
		var map_1;
		map_1 = new GMaps({
			div: '#map-1',
			lat: 33.211655052789496,
			lng: -87.53979206085205,
			zoom: 16
		});
	}

	if ( $( '#map-2' ).length ) {
		var map_2;
		map_2 = new GMaps({
			div: '#map-2',
			lat: 33.211655052789496,
			lng: -87.53979206085205,
			zoom: 17
		});

		map_2.addMarkers([
			{
				title: 'Bryce Lawn Building',
				lat: 33.21040734,
				lng: -87.53796816,
				infoWindow: {
					content: '<div class="map-info-window"><h1>Bryce Lawn Building</h1><p>HTML Content</p></div>'
				}
			},
			{
				title: 'Biology Building',
				lat: 33.21221158,
				lng: -87.54229188,
				infoWindow: {
					content: '<div class="map-info-window"><h1>Biology Building</h1><p>HTML Content</p></div>'
				}
			}
		]);
	}

	if ( $( '#map-3' ).length ) {
		var map_3;
		map_3 = new GMaps.createPanorama({
			el: '#map-3',
			lat : 33.2095667,
			lng : -87.5463086,
			pov : {
				heading : 0,
				pitch : -10
			},
		});
	}

	var stylesGrayscale = [{ 'featureType': 'landscape', 'stylers': [{ 'saturation': -100 }, { 'lightness': 65 }, { 'visibility': 'on' }]}, { 'featureType': 'poi', 'stylers': [{ 'saturation': -100 }, { 'lightness': 51 }, { 'visibility': 'simplified' }]}, { 'featureType': 'road.highway', 'stylers': [{ 'saturation': -100 }, { 'visibility': 'simplified' }]}, { 'featureType': 'road.arterial', 'stylers': [{ 'saturation': -100 }, { 'lightness': 30 }, { 'visibility': 'on' }]}, { 'featureType': 'road.local', 'stylers': [{ 'saturation': -100 }, { 'lightness': 40 }, { 'visibility': 'on' }]}, { 'featureType': 'transit', 'stylers': [{ 'saturation': -100 }, { 'visibility': 'simplified' }]}, { 'featureType': 'administrative.province', 'stylers': [{ 'visibility': 'off' }]}, { 'featureType': 'water', 'elementType': 'labels', 'stylers': [{ 'visibility': 'on' }, { 'lightness': -25 }, { 'saturation': -100 }]}, { 'featureType': 'water', 'elementType': 'geometry', 'stylers': [{ 'hue': '#ffff00' }, { 'lightness': -25 }, { 'saturation': -97 }]}];

	if ( $( '#map-4' ).length ) {
		var map_4;
		map_4 = new GMaps({
			div: '#map-4',
			lat: 33.211655052789496,
			lng: -87.53979206085205,
			zoom: 14
		});

		map_4.addStyle({
			styledMapName: 'Grayscale Map',
			styles: stylesGrayscale,
			mapTypeId: 'grayscale'
		});

		map_4.setStyle( 'grayscale' );
	}

	var stylesParks = [{ 'featureType': 'landscape.man_made', 'elementType': 'geometry.fill', 'stylers': [{ 'color': '#dde1d4' }]}, { 'featureType': 'landscape.natural', 'elementType': 'geometry.fill', 'stylers': [{ 'visibility': 'on' }, { 'color': '#dee6e6' }]}, { 'featureType': 'road', 'elementType': 'geometry.fill', 'stylers': [{ 'color': '#FCFFF5' }]}, { 'featureType': 'poi.park', 'elementType': 'geometry.fill', 'stylers': [{ 'color': '#73AB7D' }]}, { 'featureType': 'road', 'elementType': 'labels.text.fill', 'stylers': [{ 'color': '#767676' }]}, { 'featureType': 'road', 'elementType': 'labels.text.stroke', 'stylers': [{ 'color': '#ffffff' }]}, { 'featureType': 'road.highway', 'elementType': 'geometry.fill', 'stylers': [{ 'color': '#7e7341' }]}, { 'featureType': 'road', 'elementType': 'geometry.stroke', 'stylers': [{ 'color': '#808080' }, { 'lightness': 54 }]}, { 'featureType': 'poi.park', 'stylers': [{ 'visibility': 'on' }]}, { 'featureType': 'poi.sports_complex', 'stylers': [{ 'visibility': 'on' }]}, { 'featureType': 'poi.medical', 'stylers': [{ 'visibility': 'on' }]}, { 'featureType': 'poi.business', 'stylers': [{ 'visibility': 'simplified' }]}, { 'featureType': 'water', 'stylers': [{ 'color': '#6196AD' }]}];

	if ( $( '#map-5' ).length ) {
		var map_5;
		map_5 = new GMaps({
			div: '#map-5',
			lat: 33.211655052789496,
			lng: -87.53979206085205,
			zoom: 14
		});

		map_5.addStyle({
			styledMapName: 'Parks Map',
			styles: stylesParks,
			mapTypeId: 'parks'
		});

		map_5.setStyle( 'parks' );
	}

	var stylesApple = [{ 'featureType': 'water', 'elementType': 'geometry', 'stylers': [{ 'color': '#a1daf2' }] }, { 'featureType': 'landscape.man_made', 'elementType': 'geometry', 'stylers': [{ 'color': '#f7f1df' }] }, { 'featureType': 'landscape.natural', 'elementType': 'geometry', 'stylers': [{ 'color': '#d0e3b4' }] }, { 'featureType': 'landscape.natural.terrain', 'elementType': 'geometry', 'stylers': [{ 'visibility': 'off' }] }, { 'featureType': 'poi.park', 'elementType': 'geometry', 'stylers': [{ 'color': '#c8f0b9' }] }, { 'featureType': 'poi.medical', 'elementType': 'geometry', 'stylers': [{ 'color': '#fbcbdd' }] }, { 'featureType': 'poi.business', 'stylers': [{ 'visibility': 'off' }] }, { 'featureType' : 'poi.school', 'stylers' : [{ 'color' : '#ebdvc8' }] }, { 'featureType': 'road.highway', 'elementType': 'geometry.fill', 'stylers': [{ 'color': '#fcfcdd' }] }, { 'featureType': 'road.highway', 'elementType': 'geometry.stroke', 'stylers': [{ 'color': '#f3b546' }] }, { 'featureType': 'road.arterial', 'elementType': 'geometry.fill', 'stylers': [{ 'color': '#fcfcdd' }] }, { 'featureType' : 'road.arterial', 'elementType' : 'geometry.stroke', 'stylers' : [{ 'color' : '#f3b546' }] }, { 'featureType': 'road.local', 'elementType': 'geometry.fill', 'stylers': [{ 'color': '#fcfff6' }] }, { 'featureType': 'transit.station.airport', 'elementType': 'geometry.fill', 'stylers': [{ 'color': '#cfb2db' }] }];

	if ( $( '#map-5' ).length ) {
		var map_6;
		map_6 = new GMaps({
			div: '#map-6',
			lat: 33.211655052789496,
			lng: -87.53979206085205,
			zoom: 14
		});

		map_6.addStyle({
			styledMapName: 'Apple Maps',
			styles: stylesApple,
			mapTypeId: 'apple'
		});

		map_6.setStyle( 'apple' );
	}

	if ( $( '.thumbnail-lightbox' ).length ) {
		$( '.thumbnail-lightbox' ).magnificPopup({
			gallery : {
				enabled: true
			},
			type:'image'
		});
	}

	if ( $( '.masonry-grid' ).length ) {
		$( '.masonry-grid' ).imagesLoaded( function(){
			$( '.masonry-grid' ).masonry({
				itemSelector: '.masonry-grid-item',
				columnWidth: '.masonry-grid-item',
				gutterWidth: 30,
				isAnimated: true
			});
		});
	}

	if ( $( '.datatables-example' ).length ) {
		$( '.datatables-example' ).DataTable();
	}
});