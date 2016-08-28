// var connection = require(__dirname+'/connection.js');
var sequelize = require('sequelize');

var user = require(__dirname+'/../models').User;
var order = require(__dirname+'/../models').Order;
var shirt = require(__dirname+'/../models').Shirt;


module.exports = {
	getPrices: function(user, callback) {
		shirt.findAll().then(function (results) {
			console.log(results);
			var toHandlebars = {
				name: user,
				shirts: results
			}
			callback(toHandlebars);
		})
	},
	addUser: function (userData) {
		user.create({
			username: userData.userName,
			password: userData.password,
			email: userData.email,
			firstName: userData.firstName,
			lastName: userData.lastName,
			DOB: userData.DOB
		}).then(function (results) {
			console.log(results);
		});
	},
	addOrder: function (userid, orderData, callback) {
		order.create({
			color: orderData.color,
			imgURL: orderData.imgURL,
			UserId: userid,
			ShirtId: orderData.shirtId
		}).then(function (results) {
			console.log(results);
			var toHandlebars = {
				data: results
			}
			callback(toHandlebars);
		});
	},
	orderHistory: function (userid, callback) {
		order.findAll({
			where: {
				UserId: userid
			}, 
			include: [{
				model: user,
				where: {
					UserId: sequelize.col('UserId')
				}
			}, {
				model: shirt,
				where: {
					ShirtId: sequelize.col('ShirtId')
				}
			}],
			order: 'createdAt DESC'
		}).then(function (results) {
			console.log('the results are')
			console.log(results[0].dataValues);
			console.log(results)
			var toHandlebars = {
				user: results[0],
				data: results
			}
			callback(toHandlebars);
		});
	},
	sendToBillingPage: function (orderInfo, callback) {
		var orderInfoString = JSON.stringify(orderInfo);
		var toHandlebars = {
			orderInfo: orderInfoString
			// orderInfo: orderInfo
		}
		callback(toHandlebars);
	},
	sendToCardInfoPage: function (shippingData, callback) {
		var shippingDataString = JSON.stringify(shippingData);
		console.log('shippingDataString');
		console.log(shippingDataString);
		var toHandlebars = {
			shippingData: shippingDataString
		}
		console.log('toHandlebars');
		console.log(toHandlebars);
		console.log('shippingData');
		console.log(shippingData);
		callback(toHandlebars);
	},
	sendToReviewPage: function (formStuff, callback) {
		var billingShippingObject = JSON.parse(formStuff.billingShipping);
		console.log('loook at meee');
		console.log(billingShippingObject.orderInfo);
		var orderInfoObject = JSON.parse(billingShippingObject.orderInfo);
		var cardInfoObject = formStuff;
		console.log(billingShippingObject);
		var toHandlebars = {
			orderInfo: orderInfoObject,
			billingShipping: billingShippingObject,
			cardInfo: formStuff
		}
		callback(toHandlebars);
	}
};