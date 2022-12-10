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
                background-color: #006C04;
                color: #FFFFFF;
            }
            tr:nth-child(even) {background-color: #8BFE8F}
        </style>
    </head>
    <body>
        <table>
            <tr>
                <th>Subscription ID</th>
                <th>Subscription Plan</th>
                <th>Price</th>
            </tr>
            <?php
            $link = mysqli_connect("localhost","root","","cse311_project");
            $sql = "SELECT * FROM subscription";
            $result = $link->query($sql);

            if ($result->num_rows > 0){
                while ($row = $result -> fetch_assoc()){
                    echo "<tr><td>" . $row["SubID"] . "</td><td>" . $row["Subsription_Plan"] . "</td><td>" . $row["Price"] . "</td></tr>";
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