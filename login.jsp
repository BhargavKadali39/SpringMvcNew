<!DOCTYPE html>
<html>
<head>
  <title>Inline CSS Example</title>
  <link rel="stylesheet" href="login.css">
</head>
<body>
  <div class="container-xl px-4 mt-4">
    <!-- Account page navigation-->
    <nav class="nav nav-borders">
        <a class="nav-link active ms-0" href="#" target="__blank">Profile</a>
        <a class="nav-link" href="#" target="__blank">Billing</a>
        <a class="nav-link" href="#" target="__blank">Security</a>
        <a class="nav-link" href="#" target="__blank">Notifications</a>
    </nav>
    <hr class="mt-0 mb-4">
    <div class="row">
        <div class="profile-pic">
          <label class="-label" for="file">
            <span class="glyphicon glyphicon-camera"></span>
            <span>Change Image</span>
          </label>
          <input id="file" type="file" onchange="loadFile(event)"/>
          <img src="https://cdn.pixabay.com/photo/2017/08/06/21/01/louvre-2596278_960_720.jpg" id="output" width="200" />
        </div>
        <div class="col-xl-8">
            <!-- Account details card-->
            <div class="card mb-4">
                <div class="card-header">Account Details</div>
                <div class="card-body">
                    <form>
                        <!-- Form Group (username)-->
                        <div class="mb-3">
                            <label class="small mb-1" for="inputUsername">Username (how your name will appear to other users on the site)</label>
                            <input class="form-control" id="inputUsername" type="text" placeholder="Enter your username" value="username" readonly>
                        </div>
                        <!-- Form Row-->
                        <div class="row gx-3 mb-3">
                            <!-- Form Group (first name)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputFirstName">First name</label>
                                <input class="form-control" id="inputFirstName" type="text" placeholder="Enter your first name" value="Valerie" readonly>
                            </div>
                            <!-- Form Group (last name)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputLastName">Last name</label>
                                <input class="form-control" id="inputLastName" type="text" placeholder="Enter your last name" value="Luna" readonly>
                            </div>
                        </div>
                        <!-- Form Row        -->
                        <div class="row gx-3 mb-3">
                            <!-- Form Group (organization name)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputOrgName">Organization name</label>
                                <input class="form-control" id="inputOrgName" type="text" placeholder="Enter your organization name" value="Start Bootstrap" readonly>
                            </div>
                            <!-- Form Group (location)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputLocation">Location</label>
                                <input class="form-control" id="inputLocation" type="text" placeholder="Enter your location" value="San Francisco, CA" readonly>
                            </div>
                        </div>
                        <!-- Form Group (email address)-->
                        <div class="mb-3">
                            <label class="small mb-1" for="inputEmailAddress">Email address</label>
                            <input class="form-control" id="inputEmailAddress" type="email" placeholder="Enter your email address" value="name@example.com" readonly>
                        </div>
                        <!-- Form Row-->
                        <div class="row gx-3 mb-3">
                            <!-- Form Group (phone number)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputPhone">Phone number</label>
                                <input class="form-control" id="inputPhone" type="tel" placeholder="Enter your phone number" value="555-123-4567" readonly>
                            </div>
                            <!-- Form Group (birthday)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputBirthday">Birthday</label>
                                <input class="form-control" id="inputBirthday" type="text" name="birthday" placeholder="Enter your birthday" value="06/10/1988" readonly>
                            </div>
                        </div>
                        <!-- Save changes button-->
                        <button class="btn btn-primary" type="button" onclick="saveChanges()">Save changes</button>
                        <button class="edit" type="button" onclick="enableEdit()">Edit Profile</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
  </div>

  <script>
    function enableEdit() {
      document.getElementById("inputUsername").readOnly = false;
      document.getElementById("inputFirstName").readOnly = false;
      document.getElementById("inputLastName").readOnly = false;
      document.getElementById("inputOrgName").readOnly = false;
      document.getElementById("inputLocation").readOnly = false;
      document.getElementById("inputEmailAddress").readOnly = false;
      document.getElementById("inputPhone").readOnly = false;
      document.getElementById("inputBirthday").readOnly = false;
      document.getElementById("inputUsername").focus();
    }

    function saveChanges() {
      // JavaScript code to handle saving changes

      // Retrieve the updated values
      var username = document.getElementById("inputUsername").value;
      var firstName = document.getElementById("inputFirstName").value;
      var lastName = document.getElementById("inputLastName").value;
      var orgName = document.getElementById("inputOrgName").value;
      var location = document.getElementById("inputLocation").value;
      var emailAddress = document.getElementById("inputEmailAddress").value;
      var phone = document.getElementById("inputPhone").value;
      var birthday = document.getElementById("inputBirthday").value;

      // Perform actions to save the changes (e.g., send data to the server)

      // Alert the user that the changes are saved
      alert("Changes saved successfully!");
    }

    var loadFile = function(event) {
      var image = document.getElementById("output");
      image.src = URL.createObjectURL(event.target.files[0]);
    };
  </script>
</body>
</html>
