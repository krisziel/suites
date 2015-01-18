$(document).ready(function(){
	makeList();
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
		$('.info').append($('<div>').attr('id','info' + drinkIndex).addClass('drink-info').html(drinkInfo));
	}
	$('#drink' + drinkIndex + ' > input').attr('checked', true);
	setTimeout(function(){ $('#info' + drinkIndex).fadeIn(); },300);
	$('.info > *:not(#info' + drinkIndex + ')').fadeOut();
}

function hideInfo(drinkIndex) {
	$('#info' + drinkIndex).fadeOut();
}

function submitRequest() {

}
