
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>

<body>

    <center>

        <h2>Login Form</h2>

        <table border="2" cellpadding="15" cellspacing="0">

            <tr>
                <td>

                    <form method="POST" action="">

                        <table cellpadding="8">

                            <tr>
                                <td>
                                    <label>Username:</label>
                                </td>
                                <td>
                                    <input type="text" name="username" required>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <label>Password:</label>
                                </td>
                                <td>
                                    <input type="password" name="password" required>
                                </td>
                            </tr>

                            <tr>
                                <td colspan="2" align="center">
                                    <input type="submit" name="login" value="Login">
                                </td>
                            </tr>

                        </table>

                    </form>

                </td>
            </tr>

        </table>

    </center>

    <?php

    if (isset($_POST['login'])) {

        $username = $_POST['username'];
        $password = $_POST['password'];

        if ($username == "admin" && $password == "1234") {
            echo "<p align='center'>Login successful!</p>";
        } else {
            echo "<p align='center'>Wrong username or password!</p>";
        }
    }

    ?>

</body>

</html>
