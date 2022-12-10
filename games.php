<html>
    <head>
        <style type = "text/css">
            table {
                border-collapse: collapse;
                width: 100%;
                color: #000000;
                font-family: cursive;
                font-size: 25px;
                text-align: left;
            }
            th {
                background-color: #005BA9;
                color: #FFFFFF;
            }
            tr:nth-child(even) {background-color: #81B7FE}
        </style>
    </head>
    <body>
        <table>
            <tr>
                <th>Name</th>
                <th>Genre</th>
                <th>Release Year</th>
                <th>Publisher Name</th>
                <th>Price($)</th>
                <th>Subscription</th>
                <th>Rating</th>
            </tr>
            <?php
            $link = mysqli_connect("localhost","root","","cse311_project");
            $sql = "SELECT * FROM games";
            $result = $link->query($sql);

            if ($result->num_rows > 0){
                while ($row = $result -> fetch_assoc()){
                    echo "<tr><td>" . $row["Name"] . "</td><td>" . $row["Genre"] . "</td><td>" . $row["Release_Year"] . "</td><td>" . $row["Publisher_Name"] . "</td><td>" . $row["Price$"] . "</td><td>" . $row["SubID"] . "</td><td>" . $row["Rating"] . "</td></tr>";
                }
            }
            else{
                echo "No Data";
            }
            $link->close();
            ?>
        </table>
        <p>
            <a href="welcome.php" class="btn btn-info">Return</a>
            <a href="logout.php" class="btn btn-danger">Log Out</a>
        </p>
    </body>
</html>