<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset = "UTF-8">
    <meta http-equiv = "X-UA-Compatible" content="IE=edge">
    <meta name = "viewport" content="width=device-width, initial-scale=1.0">
    <title>Review System Registration</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <div class = "container-fluid">
        <div class = "row my-1">
            <div class = "col">
                <h2 class = "text-center">Rate<b style="color: darkcyan;">&</b>Review</h2>
            </div>
        </div>
    </div>
    <div class="bg-info w-75 my-4 mx-auto py-4">
        <h2 class="text-center">Registration</h2>
        <div class="container text-center">
            <form action="signupProcess.php" method="POST" enctype="multipart/form-data">
                <!-- enctype attribute indicates database ma text ani diff format data(ie.image) post cha-->
                <div class="mb-3">
                    <input type="text" class="form-control w-50 m-auto" name="username" placeholder="Enter your username" required>
                </div>
                <div class="mb-3">
                    <input type="password" class="form-control w-50 m-auto" name="password" placeholder="Enter your password" required>
                </div>
                <div class="mb-3">
                    <input type="password" class="form-control w-50 m-auto" name="cpassword" placeholder="Confrim your password" required>
                </div>
                <div class="mb-3">
                    <input type="file" class="form-control w-50 m-auto" name="image" placeholder="Upload an profile picture">
                </div>
                <button type="submit" class="btn btn-dark my-4">Register</button>
                <p>Already have an account? <a href="./index.php" class="text-white">Review here</a></p>
            </form>
        </div>
    </div>
    
</body>
