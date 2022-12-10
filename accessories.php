<html lang = "en">
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
                background-color: #4C4C4C;
                color: #FFFFFF;
            }
            tr:nth-child(even) {background-color: #B0B0B0}
        </style>
    </head>
    <body>
        <table>
            <tr>
                <th>Name</th>
                <th>Price</th>
                <th>Subscription ID</th>
            </tr>
            <?php
            $link = mysqli_connect("localhost","root","","cse311_project");
            $sql = "SELECT * FROM accessories";
            $result = $link->query($sql);

            if ($result->num_rows > 0){
                while ($row = $result -> fetch_assoc()){
                    echo "<tr><td>" . $row["Name"] . "</td><td>" . $row["Price"] . "</td><td>" . $row["SubID"] . "</td></tr>";
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