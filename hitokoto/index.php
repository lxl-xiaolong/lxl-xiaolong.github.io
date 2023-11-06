<?php

set_exception_handler(function ($e) {
    error_log($e->getMessage());
    header('HTTP/1.1 500 Internal Server Error');
    echo json_encode(['error' => 'An error occurred while processing your request.']);
    exit;
});

// 载入配置
$config = include('config.php');

function getRandomLine($filePath) {
    $size = filesize($filePath);
    $file = fopen($filePath, 'rb');
    if (!$file) throw new Exception("Unable to open file: {$filePath}");

    $line = '';
    while (trim($line) === '') {
        fseek($file, rand(0, $size));
        fgets($file); // Skip partial line
        $line = fgets($file); // Possible full line
    }

    fclose($file);
    return trim($line);
}

$filePath = $config['file_path'];
$charset = $_GET['charset'] ?? $config['default_charset'];
$format = $_GET['format'] ?? $config['default_format'];

try {
    $randomLine = getRandomLine($filePath);
    $randomLineEncoded = htmlspecialchars($randomLine, ENT_QUOTES | ENT_HTML5, $charset);

    switch ($format) {
        case 'js':
            header("Content-Type: application/javascript; charset=$charset");
            echo "function hitokoto(){document.write(" . json_encode($randomLineEncoded) . ");}";
            break;
        default:
            header("Content-Type: text/plain; charset=$charset");
            echo $randomLineEncoded;
    }
} catch (Exception $e) {
    // Exception has already been handled in the set_exception_handler
}
?>
