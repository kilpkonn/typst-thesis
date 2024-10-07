#set text(lang: "ee")

#lorem(50)

Lõputöö on kirjutatud inglise keeles keeles ning sisaldab teksti #context counter(page).at(<end>).first() leheküljel, 
#context counter(heading).at(<conclusion>).first() peatükki,
#context counter(figure.where(kind: image)).final().first() joonist 
#context counter(figure.where(kind: raw)).final().first() koodinäidist ja
#context counter(figure.where(kind: table)).final().first() tabelit.