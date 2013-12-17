$(document).ready(function (){

		function rotate_feed(selector, feed)
		{
				$(selector).rssfeed(feed,{
				header: false,
				titletag: 'div',
				date: false,
				content: false,
				limit: 5
			}, function(e) {
				console.log(e)
				$.zazar.rotate({selector: selector+' ul'});
			});
		}

		feed = 'http://feeds.reuters.com/reuters/oddlyEnoughNews'
		selector = '#zrotate'
		rotate_feed(selector, feed)

		feed2 = 'http://www.hopkinsmedicine.org/RSS/HopkinsRSS.xml'
		selector2 = '#zrotate2'
		rotate_feed(selector2, feed2)
		
		
		$('#ticker1').rssfeed('http://feeds.feedburner.com/Nownejm',{
			snippet: false
		}, function(e) {
			$(e).find('div.rssBody').vTicker({
				showItems: 1
			});
		});
	});