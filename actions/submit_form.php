<?php
use PHPMailer\PHPMailer\PHPMailer; 
use PHPMailer\PHPMailer\SMTP; 
use PHPMailer\PHPMailer\Exception; 
include "../database/db_connection.php";

// Checking if a valid form
if (isset($_POST['btn_submit'])) {
    
    // Storing google recaptcha response
     $_POST['g-recaptcha-response'];
    
    // in $recaptcha variable
    $recaptcha = $_POST['g-recaptcha-response'];

    // Your Secret Key
    $secret_key = '6LcHkVsiAAAAACssQyAoKtmKqFeUGkPTydZh53_h';
  
    // Hitting request to the URL, Google will respond with success or error scenario
    $url = 'https://www.google.com/recaptcha/api/siteverify?secret='. $secret_key . '&response=' . $recaptcha;
  
    // Making request to verify captcha
    $response = file_get_contents($url);
  
    // Response return by google is in
    // JSON format, so we have to parse
    // that json
    $response = json_decode($response);
  
    // Checking, if response is true or not
    if ($response->success == true) {

        // Storing name in $name variable
        $name = filter_var($_POST['fullname'],FILTER_SANITIZE_STRING);
        $email = filter_var($_POST['email'],FILTER_SANITIZE_EMAIL);
        $number = filter_var($_POST['number'],FILTER_SANITIZE_NUMBER_INT);
        $subject = filter_var($_POST['subject'],FILTER_SANITIZE_STRING);
        $body = filter_var($_POST['body'],FILTER_SANITIZE_STRING);
        $time_date_today = date('Y-m-d H:i:s');

    
        //check if there is a empty inout fields backend side
        if($name != "" && $email != "" && $number != "" && $subject != "" && $body != ""){
            //query to insert data into database
            $sql_insert_query = "INSERT INTO tbl_support_ticket (full_name, email_address, mobile_number,ticket_subject,ticket_body,created_at)
            VALUES ('".$name."','".$email."','".$number."','".$subject."','".$body."','".$time_date_today."')";

            if ($conn->query($sql_insert_query) === TRUE) {
                //alert and return to header location to index page
                SendEmail( $name, $email, $subject, $body);
                echo "<script>
                        alert('Successfully Submitted');
                        window.location.href='../index.php';
                    </script>";
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
        }else{
            echo "<script>
            alert('Complete All Fields');
            window.location.href='../index.php';
        </script>";
        }
   
    } else {
        //return to index page reCAPTACHA is ivalid
        echo "<script>
                alert('Error in Google reCAPTACHA');
                window.location.href='../index.php';
            </script>";
    }
}


//Send Email Using PHPMailer since mail() in php is not working
//just to simulate the given

function SendEmail($name, $email,$subject,$body){

    require_once "PHPMailer/PHPMailer.php";
    require_once "PHPMailer/SMTP.php";
    require_once "PHPMailer/Exception.php";

    $mail = new PHPMailer();

    //setup Setting of your STMP server
    //$mail->SMTPDebug = SMTP::DEBUG_SERVER;     
    $mail->isSMTP();
    $mail->Host = "smtp.gmail.com";
    $mail->SMTPAuth = TRUE;
    $mail->Username = "vargasjeff27@gmail.com";
    $mail->Password = "mwill1414";
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;  
    $mail->Port       = 587;  
    
    //Your Email Setting
    $mail->isHTML(true);
    $mail->setFrom($email, $name);
    $mail->addAddress("wiflab.info@gmail.com");
    $mail->Subject = ("$email ($subject)");
    $mail->Body = $body;

    if($mail->send()){
        $status = "success";
        
    }else{
        $status = "failed";
        $response = "Something wen wrong!";
        //echo $mail->ErrorInfo;
    }

    //Email Header mail() in php not working in localhost
    /* $headers .= "MIME-Version: 1.0\r\n";
    $headers .= "Content-type: text/html\r\n";
    $headers .= 'From: '.$email. "\r\n" .'Reply-To: reply@example.com' . "\r\n".'X-Mailer: PHP/' . phpversion();
    $email_to_receive = "magaoaywilson14@gmail.com";   
    mail($email_to_receive, "$subject", $body, "From:" . $email);       */
}


?>