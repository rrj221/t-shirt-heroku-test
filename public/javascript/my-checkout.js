
// $('.next1').on('click', function () {
// 	console.log('click');
// 	console.log($('.billingShipping').serializeArray());
// 	var formArray = $('.billingShipping').serializeArray()
// 	// $.get('/checko`ut-step-2', {
// 	// 	data: formArray
// 	// });
// 	$.get('/checkout-step-2');
// });

$('.billingShipping').val($('.shippingDataDiv').text());
// $('.shippingDataDiv').hide();
