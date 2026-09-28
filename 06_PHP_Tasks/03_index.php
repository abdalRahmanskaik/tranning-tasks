
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Even or Odd</title>
</head>

<body>

    <table border="1" align="center" cellpadding="15" cellspacing="0">
        <tr>
            <td align="center">

                <h1>Even or Odd Checker</h1>

                <hr>

                <form method="post">

                    <h3>Enter a Number</h3>

                    <input type="number" name="number" required>

                    <br><br>

                    <input type="submit" value="Check Number">

                </form>

                <br>

                <?php

                if (isset($_POST["number"])) {

                    $number = $_POST["number"];

                    if ($number % 2 == 0) {
                        echo "<h2>$number is Even</h2>";
                    } else {
                        echo "<h2>$number is Odd</h2>";
                    }
                }

                ?>

            </td>
        </tr>
    </table>

</body>

</html>
