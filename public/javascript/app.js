$(document).ready(function () {

	var originalImageSrc; // assigned when image file is dropped
	var currentImage; // assigned when the Edit button is clicked


	// Initialize Creative SDK
	var csdkImageEditor = new Aviary.Feather({
		apiKey: 'fc9e27dc7fe042308ba9581748b7a1b3',
		onSave: function(imageID, editedImageURL) {
			currentImage.src = editedImageURL;
			downloadImage();
			csdkImageEditor.close();
		} 
	});



	// Initialize Firebase
	var config = {
		apiKey: "AIzaSyA_oyWpCsZ91yjI_YU9fVEu8Tjji17XBko",
		authDomain: "image-upload-test-a6531.firebaseapp.com",
		databaseURL: "https://image-upload-test-a6531.firebaseio.com",
		storageBucket: "image-upload-test-a6531.appspot.com",
	};
	firebase.initializeApp(config);

	$('.order').hide();
	$('.adobe').hide();
	var fileChosenRef;
	var fileChosenURL;

	$('.view').on('click', function () {
		$('#image').empty();
		var url = $(this).attr('data-img');
		var color = $(this).data('color');

		var shirtsImageRef = storageRef.child('shirts');
		var selectedShirt = shirtsImageRef.child(color+'-shirt.jpg');
		selectedShirt.getDownloadURL().then(function (colorURL) {
			var shirtImg = $('<img>', {
				src: colorURL, 
				height: 700,
				width: 500, 
				position: 'relative', 
				class: 'tshirt'
			});
			shirtImg.appendTo($('#image'));
		}).then(function () {
		var img = $('<img>', {
				src: url,
				height: 100,
				width: 100, 
				class: 'image'
			});
			img.appendTo($('#image'));
		});

	});

	// Create a root reference
	var storageRef = firebase.storage().ref();

	// Create a child reference
	var imagesRef = storageRef.child('images');
	// imagesRef now points to 'images'

//////Upload
	var inputElement = document.getElementById("input");
	inputElement.addEventListener("change", handleFiles, false);
	
	function handleFiles() {
  		var fileList = this.files; /* now you can work with the file list */
  		var file = fileList[0];

  		var formData = new FormData();
  		formData.append('File', file);

  		var currentURL = window.location.origin;
  		console.log(currentURL);


		//CREATIVE SDK////////
		readURL(file);
		setImage(file);
		console.log('please show the button');
		// validateFileType(file);





		var newImagesRef = imagesRef.child(file.name);
		fileChosenRef = newImagesRef;

  		newImagesRef.put(file).then(function (snapshot) {
  			var color = getImageColor();
  			var imgURL = snapshot.downloadURL;
  			fileChosenURL = imgURL;

  		}).then(function () {
			shirtToPage();
			$('.color').val(getImageColor());
			$('.shirtId').val($('.color option:selected').data('id'));
			$('.imgURL').val(fileChosenURL);
  		});
	}


	function getImageColor() {
		return $('.color option:selected').data('color');
	} 

///change color
	$('#colorSelect').change(function () {
		$('#image').empty();
		shirtToPage();
		// $('.color').val() = getImageColor();
		// $('.shirtId').val() = $('.color option:selected').data('id');
		$('.color').val(getImageColor());
		$('.shirtId').val($('.color option:selected').data('id'));
	});


	$('.adobe').on('click', function () {
		launchImageEditor();
		return false
	})


	function shirtToPage() {
		$('#image').empty();
		var color = getImageColor();
		console.log(color);
		var shirtsImageRef = storageRef.child('shirts');
		var selectedShirt = shirtsImageRef.child(color+'-shirt.jpg');
		selectedShirt.getDownloadURL().then(function (url) {
			var shirtImg = $('<img>', {
				src: url, 
				height: 700,
				width: 500, 
				position: 'relative', 
				class: 'tshirt', 
				'data-color': color
			});
			shirtImg.appendTo($('#image'));
		}).then(function () {
			fileChosenRef.getDownloadURL().then(function (url) {
				var img = $('<img>', {
					src: url,
					height: 100,
					width: 100, 
					class: 'image',
					'data-imgurl': url
				});
				img.appendTo($('#image'));
				$('.order').show();
				$('.adobe').show();
			});
		});	
	}


	function orderConfirm() {
		$('h1').remove();
	}



	//creative
	function validateFileType(file) {
		console.log('hellow there');
		setImage(file);
			// toggleDragDrop();
		launchImageEditor();
		// if (fileIsSupported(file)) {
		// 	setImage(file);
		// 	// toggleDragDrop();
		// 	launchImageEditor();
		// 	return true;
		// }
		// else {
		// 	alert('Try a JPEG or PNG image');
		// 	return false;
		// }
	}
	
	function setImage(file) {
		// imageElement.attr('src', window.URL.createObjectURL(file));
		originalImageSrc = window.URL.createObjectURL(file);
	}

	function launchImageEditor() {

		// if (!originalImageSrc) {
		// 	alert('Drop an image in the drop area first.');
		// 	return false;
		// }

		// Get the image to be edited
		// `[0]` gets the image itself, not the jQuery object
		currentImage = $('#editable-image')[0];

		csdkImageEditor.launch({
			image: currentImage.id,
			//url: currentImage.src
		});
	}

	function readURL(uploadedFile) {
        var reader = new FileReader();

        reader.onload = function (file) {
            $('#editable-image').attr('src', file.target.result)
        };

        reader.readAsDataURL(uploadedFile);
    }

    function downloadImage() {
		var url = currentImage ? currentImage.src : originalImageSrc;
		var link = document.createElement("a");
		
		link.href = url;

		// Download attr 
		//// Only honored for links within same origin, 
		//// therefore won't work once img has been edited (i.e., S3 URLs)
		link.download = 'my-pic';
		link.click();
	}









})