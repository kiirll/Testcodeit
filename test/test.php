<?php
include_once 'connect.php';

$login      = clearStr($_POST['login']);
$email      = clearStr($_POST['email']);
$password   = clearStr($_POST['password']);
$realname   = clearStr($_POST['realname']);
$country    = clearStr($_POST['country']);
$birthdate  = clearStr($_POST['birthdate']);
$birthdate  = strtotime($birthdate);

$loginemail = clearStr($_POST['login1']);
$password1 = clearStr($_POST['password1']);

//функция для проверки уникальности поля в таблице
function checkUniqueField($field,$fcontent) {
    $currentLink = $GLOBALS['link'];
    $res = execQuery("SELECT id FROM user WHERE `".$field."` = '".$fcontent."'",$currentLink);
    if (count($res) > 0) {
        return false;
    } else {
        return true;
    }
}
// функция для выполнения запросов к базе даннных
function execQuery($pQuery, $currentLink) {
    $result_country = mysqli_query($currentLink, $pQuery);
    $arrResult=[];
    while($row = mysqli_fetch_array($result_country)){
        array_push($arrResult, $row);
    }
    return $arrResult;
}

function clearStr($str){
    $currentLink = $GLOBALS['link'];
    $str = mysqli_real_escape_string($currentLink,$str);
    $str = htmlspecialchars($str);
    return $str;
}

//echo "<pre>";
//var_dump($_POST);
//echo "</pre>";

//проверка на регистрацию пользователя
if (isset($_POST['login'])) {
    $error = [];
    if ($login != "") {
        if (checkUniqueField('login', $login)) {

        } else $error['login'] = "Login is already taken";
    } else $error['login'] = "Field 'Login' must be fill";

    if ($email != "") {
        if (checkUniqueField('email', $email)) {

        } else $error['email'] = "Email is already taken";
    } else $error['email'] = "Email must be fill";

    if (filter_var($email, FILTER_VALIDATE_EMAIL)) {

    } else $error['email1'] = "Email is wrong ";

    if ($realname!=""){

    } else $error['realname'] = "Field 'Real Name' must be fill";

    if ($country!=""){

    } else $error['country'] = "Field 'country' must be picked";

    if ($birthdate!=""){

    } else $error['birthdate'] = "Field 'Birth date' must be picked";
    if (count($error)==0) {
        if ($password != "" && mb_strlen($password) >= 4) {

            $currentLink = $GLOBALS['link'];
            $query = "INSERT INTO user (login, email, password, birthdate, realname) VALUES ('$login', '$email', '$password', $birthdate, '$realname')";
            $result_reg = mysqli_query($link, $query) or die(mysqli_error($link));;

            setcookie("login", $login, time() + 3600);
            setcookie("hash", md5($login . $password . '3fwerfre'), time() + 3600);
            header('location:index.php');
        } else $error['password'] = "Password must be 4 or more characters";
    }
    include_once 'head.html';
        ?>
    <ul class="alert alert-danger" role="alert">
    <?php
    foreach ($error as $er) { ?>
            <li ><?php echo $er; ?></li >
      <?php  }?>

      </ul >
    <a href="javascript:history.back()">Go Back</a>
<?php
    exit();
}

//проверка на авторизацию пользователя
 if (isset($_POST['login1']) || isset($_POST['email1'])){
//    var_dump($_POST);
     $res = execQuery("SELECT * FROM user WHERE `login` = '".$loginemail."' or `email`='".$loginemail."'",$link);
//     var_dump($res);
     if(!empty($res)){
         if ($res[0]['password']==$password1){
             setcookie("login", $loginemail, time() + 3600);
             setcookie("hash", md5($loginemail . $password1 . '3fwerfre'), time() + 3600);
             header('location:index.php');
         }
         else {
             include_once 'head.html';
             ?>
             <div class="alert alert-danger" role="alert">Password wrong!</div>
             <a href="javascript:history.back()">Go Back</a>
             <?php
         }
     }else{
         include_once 'head.html';
         ?>
         <div class="alert alert-danger" role="alert">Login or Email not exist!</div>
         <a href="javascript:history.back()">Go Back</a>
      <?php
     }

 }
?>