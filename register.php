<?php
include 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);

    $sql = "INSERT INTO users (username, password) VALUES ('$username', '$password')";
    if ($conn->query($sql) === TRUE) {
        echo "Registrasi berhasil. Silakan <a href='login.html'>login</a>.";
    } else {
        echo "Error: " . $conn->error;
    }
}

$conn->close();
?>
