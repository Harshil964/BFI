<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Beggar</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #EDEBF5;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }
        .map-container {
            height: 400px;
            width: 100%;
            margin-top: 10px;
        }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?AIzaSyDCtE9Oz073iC4SOMp5Dfi4nJ8jLIaULfY callback=initMap" ></script>
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center text-primary">Register Beggar</h1>
        <p class="text-center text-muted">Please fill out the form below to register a new beggar</p>
        
        <form action="registerBeg" method="post">
            <!-- Full Name -->
            <div class="mb-3">
                <label for="name" class="form-label text-primary">Full Name</label>
                <input type="text" class="form-control" id="name" name="BegName" required>
            </div>

            <!-- Age -->
            <div class="mb-3">
                <label for="age" class="form-label text-primary">Age</label>
                <input type="number" class="form-control" id="age" name="BegAge" min="0" required>
            </div>

            <!-- Location (Google Map) -->
            <div class="mb-3" >
                <label for="location" class="form-label text-primary">Location</label>
                <div id="map" class="map-container"></div>
                <input type="hidden" id="longitude" name="longitude">
                <input type="hidden" id="latitude" name="latitude">
                <p id="location-info" class="mt-2 text-sm text-[#8697C4]">Selected location:</p>
                
            </div>

            <!-- Photo Upload -->
            <div class="mb-3">
                <label for="photo" class="form-label text-primary">Photo</label>
                <input type="file" class="form-control" id="photo" name="BegPhoto" accept="image/*" required>
                <div class="mt-2">
                    <img id="photo-preview" src="#" alt="Photo preview" class="img-thumbnail d-none" width="200">
                </div>
            </div>

            <!-- User Email -->
            <div class="mb-3">
                <label for="email" class="form-label text-primary">User Email</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>

            <!-- Submit Button -->
            <div class="d-grid">
                <button type="submit" class="btn btn-primary">Register Beggar</button>
            </div>
        </form>
    </div>

    <script>
        let map;
        let marker;

        function initMap() {
            const initialLocation = { lat: 22.656257559437584, lng: 75.82328916153976 };
            map = new google.maps.Map(document.getElementById("map"), {
                center: initialLocation,
                zoom: 16,
            });

            marker = new google.maps.Marker({
                position: initialLocation,
                map: map,
                draggable: true,
            });
           // google.maps.event.addListener(newMarker, 'dragend', function() {
            	//  const position = newMarker.getPosition();
            	  //if (position) {
            	   // setLocation({ lat: position.lat(), lng: position.lng() });
            	    // Display the updated coordinates
            	    //document.getElementById('location-info').textContent = 
            	      //`Selected location: ${position.lat().toFixed(6)}, ${position.lng().toFixed(6)}`;
            	  //}
            	//});

           google.maps.event.addListener(marker, 'dragend', function() {
                const position = marker.getPosition();
                document.getElementById("latitude").value = position.lat();
                document.getElementById("longitude").value = position.lng();
                document.getElementById("location-info").innerText = `Selected location: ${position.lat().toFixed(6)}, ${position.lng().toFixed(6)}`;
            });
            //newMap.addListener('click', function(e) {
            	//  const clickedLocation = e.latLng;
            	  //if (clickedLocation) {
            	    //newMarker.setPosition(clickedLocation);
            	    //setLocation({ lat: clickedLocation.lat(), lng: clickedLocation.lng() });
            	    // Display the clicked coordinates
            	    //document.getElementById('location-info').textContent = 
            	      //`Selected location: ${clickedLocation.lat().toFixed(6)}, ${clickedLocation.lng().toFixed(6)}`;
            	 // }
            	//});

            google.maps.event.addListener(map, 'click', function(event) {
                marker.setPosition(event.latLng);
                document.getElementById("latitude").value = event.latLng.lat();
                document.getElementById("longitude").value = event.latLng.lng();
             document.getElementById("location-info").innerText = `Selected location: ${event.latLng.lat().toFixed(6)}, ${event.latLng.lng().toFixed(6)}`;
            });
        }
        

        window.onload = initMap;
        

        // Photo preview
        document.getElementById('photo').addEventListener('change', function(event) {
            const file = event.target.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onloadend = function() {
                    const preview = document.getElementById('photo-preview');
                    preview.src = reader.result;
                    preview.classList.remove('d-none');
                };
                reader.readAsDataURL(file);
            }
        });
        
    </script>
</body>
</html>
