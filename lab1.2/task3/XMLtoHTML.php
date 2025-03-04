<?php
// Шлях до XML та XSL файлів
$xmlFile = "task2_3.xml";
$xslFile = "task2_3.xsl";



try {
    // Завантаження XMLs
    $xml = new DOMDocument;
    $xml->load($xmlFile);

    // Завантаження XSL
    $xsl = new DOMDocument;
    $xsl->load($xslFile);

    // Створення процесора XSLT
    $proc = new XSLTProcessor;
    $proc->importStylesheet($xsl); // Імпорт таблиці стилів

    // Виконання трансформації
    echo $proc->transformToXML($xml);
} catch (Exception $e) {
    echo "Помилка під час трансформації: " . $e->getMessage();
}
?>
