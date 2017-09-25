<?php
include_once 'connect.php';

if (isset($_GET['logout'])){

    setcookie("login",'');
    setcookie("hash",'');
    header('location: index.php');
}
if (isset($_COOKIE['login'])){
    $login = $_COOKIE['login'];
    $querylogin = "select * from user where login='".$login."'";
    $result_auth = mysqli_query($link,$querylogin);
    $row_user = mysqli_fetch_array($result_auth);
    if ($_COOKIE['hash'] === md5($row_user['login'].$row_user['password'].'3fwerfre')){
        include_once 'head.html';
        ?>
        <div class="container">
            <h2><?=$row_user['email']?></h2>
            <p>Hello, <?=$row_user['realname']?></p>
        <div class="btn btn-warning"><a href='index.php?logout=yes'>Log out</a></div>
        </div>
<?php
        exit;
    }

}
include_once 'head.html';
?>

<div class="container">
    <div><hr></div>
    <div class="row">
        <div class="col-md-6">
            <h1>Registration</h1>
            <form method="post" action="test.php">
                <div class="form-group">
                    <label for="login">Login</label>
                    <input type="text" name="login" id="login" maxlength="20" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" name="email" id="email" maxlength="40" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" name="password" id="password" maxlength="20" required>
                </div>
                <div class="form-group">
                    <label for="realname">Real Name</label>
                    <input type="text" name="realname" id="realname" maxlength="30" required>
                </div>
                <div class="form-group">
                    <label for="birthdate">Birth Date</label>
                    <input type="date" name="birthdate" id="birthdate" required>
                </div>
                <div class="form-group">
                    <label for="country">Country</label >
                    <select name="country" id="country" width="60px" required>
                        <option></option>
                        <?php
                        $query = 'select `name_en` from  net_country';
                        $result_country = mysqli_query($link, $query);
                        while($row = mysqli_fetch_array($result_country)){
                            echo '<option value="'.$row['name_en'].'">'.$row['name_en'].'</option>';
                        }
                        ?>

                    </select>
                </div>
                <div class="form-check">
                    <input type="checkbox" name="agree" id="agree" required><label for="agree" id="l-agree">I agree with terms and conditions</label>
                </div>

                <input class="btn btn-primary" type="submit" value="Sing In">
            </form>


        </div>
        <div class="col-md-6">
            <H1>Log In</H1>

            <form method="post" action="test.php">
                <div class="form-group">
                    <label for="login1">Login</label>
                    <input type="text" name="login1" id="login1" maxlength="20" required>
                </div>
                <div class="form-group">
                    <label for="password1">Password</label>
                    <input type="password" name="password1" id="password1" maxlength="30" required>
                </div>
                <input class="btn btn-primary" type="submit" value="Log In">
            </form>


        </div>
    </div>

<div><hr></div>

</div>

