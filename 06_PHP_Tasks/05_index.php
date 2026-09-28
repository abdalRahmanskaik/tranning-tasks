<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Send Email</title>
</head>

<body>

    <table border="1" align="center" cellpadding="15" cellspacing="0">

        <tr>
            <td>

                <h1 align="center">Send Email</h1>

                <hr>

                <?php

                if ($_SERVER["REQUEST_METHOD"] == "POST") {

                    echo "<h2 align='center'>Email sent successfully!</h2>";

                    echo "<br>";

                    echo "<div align='center'>";
                    echo "<a href='" . $_SERVER['PHP_SELF'] . "'>";
                    echo "<button>Send Another Email</button>";
                    echo "</a>";
                    echo "</div>";
                } else {

                ?>

                    <form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">

                        <label>Email:</label>
                        <br>
                        <input type="email" name="email" required>

                        <br><br>

                        <label>Subject:</label>
                        <br>
                        <input type="text" name="subject" required>

                        <br><br>

                        <label>Message:</label>
                        <br>
                        <textarea name="message" rows="6" cols="40" required></textarea>

                        <br><br>

                        <div align="center">
                            <input type="submit" value="Send Email">
                        </div>

                    </form>

                <?php } ?>

            </td>
        </tr>

    </table>

</body>

</html>