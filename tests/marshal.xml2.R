library(marshal)

if (requireNamespace("xml2", quietly = TRUE)) {
  message("XML document:")
  doc <- xml2::read_xml("<body></body>")

  ## Assert marshallability
  stopifnot(marshallable(doc))

  ## Marshal 'xml_document' object
  doc_ <- marshal(doc)

  ## Unmarshal 'xml_document' object
  doc2 <- unmarshal(doc_)
  print(doc2)

  stopifnot(all.equal(doc2, doc))


  message("HMTL document:")
  file <- system.file("extdata", "r-project.html", package = "xml2")
  doc <- xml2::read_html(file)

  ## Assert marshallability
  stopifnot(marshallable(doc))

  ## Marshal 'xml_document' object
  doc_ <- marshal(doc)

  ## Unmarshal 'xml_document' object
  doc2 <- unmarshal(doc_)
  print(doc2)
  
  stopifnot(all.equal(doc2, doc))
}
