<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proxy Search</title>
    <style>
        /* Add your styles here */
    </style>
</head>
<body>
    <form id="searchForm" onsubmit="return performSearch();">
        <input type="text" id="searchQuery" placeholder="Enter search term" required>
        <button type="submit">Search</button>
    </form>
    <div class="container">
        <iframe id="proxyIframe" src="https://lolc-one.vercel.app" title="Proxy" width="100%" height="600px"></iframe>
    </div>

    <script>
        function performSearch() {
            const query = document.getElementById('searchQuery').value;
            const iframe = document.getElementById('proxyIframe');
            // Update the iframe src with the search query
            iframe.src = `https://lolc-one.vercel.app/search?q=${encodeURIComponent(query)}`;
            return false; // Prevent form submission
        }
    </script>
</body>
</html>
