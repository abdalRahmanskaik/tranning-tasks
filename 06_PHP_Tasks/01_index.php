<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Numbers 1 to 10</title>

</head>

<body>

    <div class="container">

        <h1>Numbers from 1 to 10</h1>

        <h3 class="numbers" <h2 style="padding: 0px 20px;">
            <?php
            for ($i = 1; $i < 10; $i++) {
                echo "<p>0$i</p>";
            }
            echo "<p>10</p>";
            ?>
        </h3>

    </div>

</body>

</html>