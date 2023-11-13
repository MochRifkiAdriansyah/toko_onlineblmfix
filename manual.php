<?php 
include 'header.php';
?>

<style type="text/css">
    .bs-acc{
        margin: 20px;
    }
	#last{ 
    width: 100%; 
    height: auto; 
    justify-content: center; 
    background-color: white; 
    } 
    .full{ 
    width: 80%; 
    display: inline-block; 
    margin:2%; 
    margin-left: 10%; 
    text-align: center; 
    background-color: #d41818; 
    color: white; 
    border:10px black; 
    border-radius: 5px; 
    margin-bottom: 8%; 
    margin-top: 8%; 
    } 
    .full h3{ 
    font-size: 2rem; 
    display:block; 
    margin: 2%; 
    margin-bottom: 0; 
    } 
    .lt{ 
    padding: 2%; 
    margin: 2%; 
    } 
    .rt{ 
    padding: 2%; 
    margin: 2%; 
    } 
    .lt textarea{ 
    width: 94%; 
    margin-left: 2.8%; 
    } 
    button{ 
    margin: 2%; 
    } 
    .btn-primary{ 
    background-color: black; 
    border: 2px solid white; 
    border-radius: 5%; 
    } 
    .list-item{ 
    margin-bottom: 2%; 
    list-style-type: none; 
    } 
    .list-item span{ 
    margin-left: 10px; 
    font-size: 1.4rem; 
    } 
    .list-item a{ 
    color: white; 
    display: inline-block; 
    } 
    .list-item a:hover{ 
    text-decoration: underline; 
    } 
    .form-control{ 
    background-color: white; 
    } 
         
    @media screen and (min-width: 770px){ 
    .full{ 
        width: 70%; 
        margin-left: 15%; 
    } 
    .lt textarea{ 
    width: 95%; 
    margin-left: 2.4%; 
    } 
    } 
         
    @media screen and (min-width: 1100px){ 
    .full{ 
        width: 65%; 
        margin-left: 17%; 
        margin-top: 5%; 
    } 
    .lt{ 
        width: 55%; 
        display: inline-block; 
        float: left; 
        margin-right: 0; 
    } 
    .rt{ 
        width: 35%; 
        display: inline-block; 
        margin-left: 0; 
    } 
    .list-item{ 
    margin-bottom: 10%; 
    } 
    .contact-list{ 
        margin-top: 22%; 
        padding-right: 8%; 
    } 
    .fa-envelope, .gmail{ 
        display: inline-block; 
        width: auto; 
    } 
    }
</style>
<div class="container">
		<h2 style=" width: 100%; border-bottom: 4px solid #d41818"><b>Contact Us</b></h2>
		<section id="last">
        <!-- heading -->
        <div class="full">
            <h3>Hubungi Kami</h3>
 
            <div class="lt">
 
                <!-- form starting  -->
                <form class="form-horizontal" method="post"
                      action="contact.php">
                    <div class="form-group">
                        <div class="col-sm-12">
                            <!-- name  -->
                            <input type="text" class="form-control"
                                   id="name" placeholder="NAME"
                                   name="name" value="" />
                        </div>
                    </div>
 
                    <div class="form-group">
                        <div class="col-sm-12">
                            <!-- email  -->
                            <input type="email" class="form-control"
                                   id="email" placeholder="EMAIL"
                                   name="email"
                                value="" />
                        </div>
                    </div>
 
                    <!-- message  -->
                    <textarea class="form-control" rows="10"
                              placeholder="MESSAGE" name="message">
            </textarea>
 
                    <button class="btn btn-primary send-button"
                            id="submit" type="submit" value="SEND">
                        <i class="fa fa-paper-plane"></i>
                        <span class="send-text">SEND</span>
                    </button>
                </form>
                <!-- end of form -->
            </div>
 
            <!-- Contact information -->
            <div class="rt">
                <ul class="contact-list">
                    <li class="list-item">
                        <i class="fa fa-map-marker fa-1x">
                            <span class="contact-text place">
                                your address
                            </span>
                        </i>
                    </li>
 
                    <li class="list-item">
                        <i class="fa fa-envelope fa-1x">
                            <span class="contact-text gmail">
                                <a href="mailto:yourmail@gmail.com"
                                   title="Send me an email">
                                    mochrifki9862@gmail.com</a>
                            </span>
                        </i>
                    </li>
 
                    <li class="list-item">
                        <i class="fa fa-phone fa-1x">
                            <span class="contact-text phone">
                                (+62)895332754847
                            </span>
                        </i>
                    </li>
                </ul>
            </div>
        </div>
    </section>
</div>
<?php
// Get data from form  
$name = $_POST['name'];
$email= $_POST['email'];
$message= $_POST['message'];
 
$to = "mochrifki98620@gmail.com";
$subject = "This is the subject line";
 

$txt ="Name = ". $name . "\r\n  Email = "
    . $email . "\r\n Message =" . $message;
 
$headers = "From: noreply@demosite.com" . "\r\n" .
            "CC: somebodyelse@example.com";
if($email != NULL) {
    mail($to, $subject, $txt, $headers);
}
 
// Redirect to
header("Location:manual.php");
?>


<?php 
include 'footer.php';
?>
