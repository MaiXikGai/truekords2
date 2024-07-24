<?php
include 'db/connect.php';

if (isset($_GET['q'])) {
    $search = $_GET['q'];
    $sql = "SELECT * FROM songs WHERE title LIKE '%$search%' OR artist LIKE '%$search%'";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $song = $result->fetch_assoc();
        header("Location: songs/view_song.php?id=" . $song['id']);
        exit();
    } else {
        echo "<script>alert('No songs found');</script>";
        echo "<script>window.location.href = 'index.html';</script>";
    }
}
?>
