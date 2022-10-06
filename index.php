<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="style.css">

</head>
<body>

<div class="MainDiv">
   
    <div class="container">
    <form action="actions/submit_form.php" method="POST">
        <div class="header">
            <h2>Contact Us</h2>
            <p>For all enquiries, Please email us using the form below</p>
        </div>
        

        <label for="fullname">Full Name</label>
        <input type="text" id="full_name" name="fullname" placeholder="Full Name" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" placeholder="Email Address" required> 

        <label for="number">Number</label>
        <input type="number" id="number" name="number" placeholder="Number" required>

        <label for="subject">Subject</label>
        <input type="text" id="subject" name="subject" placeholder="Subject" required>

        <label for="body">Body</label>
        <textarea id="body" name="body" placeholder="Write something.." style="height:200px" required></textarea>

        <div class="g-recaptcha" data-sitekey="6LcHkVsiAAAAALEjyYMHJv8EMvVu_8HVY0BRrnX1"></div>
        <br/>
        <div class="btn_container">
            <input type="submit" name="btn_submit" value="Submit">
        </div>
       
    </form>
    </div>

</div>

<script src="https://www.google.com/recaptcha/api.js" async defer></script>
</body>
</html>
