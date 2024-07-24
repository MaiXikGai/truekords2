<?php
include 'connect.php';
$song_id = $_GET['id'];
$sql = "SELECT * FROM songs WHERE id='$song_id'";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TrueKords - View Song</title>
    <link rel="stylesheet" href="css/view_song.css">
</head>
<body>
    <header>
        <div class="logo">
            <a href="index.html"><img src="images/logo.png" alt="logo"></a>
        </div>
    </header>
    <div class="song-container">
        <?php
        if ($result->num_rows > 0) {
            $song = $result->fetch_assoc();
            ?>
            <div class="song">
                <h1><?php echo $song['title']; ?> by <?php echo $song['artist']; ?></h1>
                <p><?php echo nl2br($song['lyrics']); ?></p>
            </div>
            <?php
        } else {
            echo "<p>Song not found.</p>";
        }
        ?>
    </div>
</body>
</html>
