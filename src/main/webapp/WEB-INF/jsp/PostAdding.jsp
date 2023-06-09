<!DOCTYPE html>
<html>
<head>
  <title>Input Form</title>
  <style>
    /* CSS Styling */
    body {
      font-family: Arial, sans-serif;
    }

    form {
      max-width: 500px;
      margin: 0 auto;
    }

    label {
      display: block;
      margin-bottom: 5px;
    }

    input[type="text"], textarea {
      width: 100%;
      padding: 8px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
    }

    input[type="submit"] {
      background-color: #4CAF50;
      color: white;
      padding: 10px 20px;
      border: none;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>
  <form action="addNews" method="post" id="form" enctype="multipart/form-data">
      
    <label for="heading">Heading:</label>
    <input type="text" id="heading" name="a" placeholder="Enter heading..." required>

    <label for="post-date">Post Date:</label>
    <input type="text" id="post-date" name="b" placeholder="Enter post date..." required>

    <label for="description">Description:</label>
    <input type="text" name="c" placeholder="Enter description..." required>
    
    
    <select name="f">
        <option>India</option>
        <option>World</option>
        <option>Local News</option>
        <option>Top Stories</option>
        <option>Latest Post</option>
    </select>
    
    <label for="image">Image:</label>
    <input id="images" type="file" style="margin-left: 40px; padding: 10px;" accept="image/png, image/jpeg" name="d"/>

    <label for="link">Description:</label>
    <input type="text" name="e" placeholder="Link" required>

    <input type="submit" value="Submit">
  </form>
</body>
</html>
