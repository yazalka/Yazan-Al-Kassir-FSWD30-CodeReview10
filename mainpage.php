<?php 

session_start();

if (!$_SESSION['name']) {

	header('location: index.php');

}	

 ?>


<!DOCTYPE html>
	<html>
		<head>
			<title>Main Page</title>
			<link rel="stylesheet" type="text/css" href="mainpage.css">
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
			<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
	  		<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
	  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>

		</head>

			
		
		<body>
				<!-- /header -->
				<header id="header">

					 <img id="logo" src="Logomakr_4Bbtuf.png" alt="logo">
					 <h3>Online Library</h3>

					<div class="row">
			    		<h4><?= $_SESSION['name'] .'&nbsp;' ?></h4>
						<a id="logout-btn" href="logout.php">| Logout</a>
					</div>

				</header>

				<div id="box">

			<?php 

				$conn = mysqli_connect('localhost' , 'root' , '' , 'cr10_yazan_al_kassir_biglibrary');

				$sql = "select * from media inner join publisher on media.fk_publisher_id=publisher.publisher_id inner join author ON media.fk_author_id=author.author_id";

				$result = mysqli_query($conn, $sql) or die("failed to query databases");

				while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {


					?>
					
						
						<div class="row">
							
							<div class="col-lg-3 col-md-4 col-sm-5 col-xs-7">
								<img src="<?= $row['image'] ?>" alt="foto">
							</div>

							<div class="desc col-lg-9 col-md-7 col-sm-6">
								<div class="row"><h5>Type:<?= '&nbsp;' ?></h5><h5> <?= $row['type'] ?></h5></div>
								<div class="row"><h5>Title:<?= '&nbsp;' ?></h5><h5><?= $row['title'] ?></h5></div>
								<div class="row"><h5>Author:<?= '&nbsp;' ?></h5><h5><?= $row['first_name']." ".$row['last_name'] ?></h5></div>
								<div class="row"><h5>ISBN:<?= '&nbsp;' ?></h5><h5><?= $row['isbn_code'] ?></h5></div>
								<div class="row"><h5>Publish in: <?= '&nbsp;' ?></h5><h5><?= $row['publish_date']."&nbsp;By&nbsp;<h5>".$row['name']."<h5>" ?></h5></div>
								<div class="row"><h5>Publish address:<?= '&nbsp;' ?></h5><h5><?= $row['address']?></h5></div>
								<div class="row"><h5>Size:<?= '&nbsp;' ?></h5><h5><?= $row['size'] ?></h5></div>
							</div>

						</div>
						<div class="col-lg-10 col-md-9 col-sm-8">
							<p><?= $row['short_description'] ?></p>
						</div>

				    
					<?php 

				}

  			  mysqli_close($conn);

		    ?>
		    </div>
		</body>
	</html>



