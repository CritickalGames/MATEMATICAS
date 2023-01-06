function loadXMLDoc(filename)
{
    if (window.ActiveXObject)
    {//Si usas explorer, se usará esto.
        xhttp = new ActiveXObject("Msxml2.XMLHTTP");
    }
    else
    {
        xhttp = new XMLHttpRequest();
    }
    
    xhttp.open("GET", filename, false);
    try {xhttp.responseType = "msxml-document"} catch(err) {} // Helping IE11
    
    xhttp.send("");
    return xhttp.responseXML;
}

function displayResult(XML, XSL)
{
    xml = loadXMLDoc(XML);
    xsl = loadXMLDoc(XSL);
    // code for IE "Internet Explorer"
    if (window.ActiveXObject || xhttp.responseType == "msxml-document")
    {
        ex = xml.transformNode(xsl);//une un XSL a XML para Explorer
        document.getElementById("example").innerHTML = ex;//Inyecta el XMLT en el ELEMENTO
    }
    // code for Chrome, Firefox, Opera, etc.
    else if (document.implementation && document.implementation.createDocument)
    {
        xsltProcessor = new XSLTProcessor();
        xsltProcessor.importStylesheet(xsl);//Importa el XSL
        resultDocument = xsltProcessor.transformToFragment(xml, document);//Une un XSL a un XML
        document.getElementById("example").appendChild(resultDocument);//Agrega un XHTMLT al Elemento
    }
}

function loadRESULT() {
    displayResult("conocimiento.xml","xMath.xsl");
}