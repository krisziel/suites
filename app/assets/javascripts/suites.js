$(document).ready(function(){
	makeList();
	// $('input[name="selection"][value="' + selected + '"]').click();
	$('.request').bind('click',function(){
		submitRequest();
	});
})

function makeList() {
	currentdrink = '';
	$.each(drinks,function(index,value){
		if(value.drinktype != currentdrink) {
			currentdrink = value.drinktype;
			$('.list').append('<div class="type-title" id="' + value.drinktype + '">' + value.drinktype + '</div>');
		}
		$('.list').append($('<div>').attr('id','drink' + index).addClass('drink').html('<input type="radio" name="selection" value="' + value.id + '" /><div class="name">' + value.name + '</div>').bind('click',function(){ drinkInfo(index); }));
	});
}

function drinkInfo(drinkIndex) {
	var drink = drinks[drinkIndex];
	$('.info > *').fadeOut();
	if($('#info' + drinkIndex).length > 0) {

	} else {
		var drinkInfo = '<div class="name">' + drink.name + '</div>';
		if(drink.location.length > 0) {
			drinkInfo += '<div class="location">' + drink.location + '</div>';
		}
		if(drink.description.length > 0) {
			drinkInfo += '<div class="description">' + drink.description + '</div>';
		}
		var displayRequests = false;
		var others = 'Other requestors: ';
		$.each(votes,function(i,vote){
			if((vote.drink)&&(vote.drink === drink.id)) {
				var twitterLink = vote.name.split(' (')[1]
				others += '<a href="https://twitter.com/' + twitterLink.substring(0,twitterLink.length-1) + '" target="_blank">' + vote.name + '</a>';
				displayRequests = true;
			}
		});
		if(displayRequests === true) {
			drinkInfo += others;
		}
		$('.info').append($('<div>').attr('id','info' + drinkIndex).addClass('drink-info').html(drinkInfo));
	}
	$('#drink' + drinkIndex + ' > input').attr('checked', true);
	$('.info').animate({height:$('#info' + drinkIndex).height()+15});
	setTimeout(function(){ $('#info' + drinkIndex).fadeIn(); },300);
	$('.info > *:not(#info' + drinkIndex + ')').fadeOut();
}

function hideInfo(drinkIndex) {
	$('#info' + drinkIndex).fadeOut();
}

function submitRequest() {
	if($('input[name="selection"]:checked').val()) {
		$.post('/request/', { drink_id:$('input[name="selection"]:checked').val() }, function(data) {
			if(data.message == "SUCCESS") {
				alert('Your request has been saved. Come back to change it whenever.');
			}
		});
	} else {
		alert('Select a drink.');
	}
}
