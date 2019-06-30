var obj = {
	"glossary" : {
		"title" : "Estimativa Calculo",
		"GlossDiv" : {
			"title" : "S",
			"GlossList" : {
				"GlossEntry" : {
					"nomeFila" : "",
					"status" : "",
					"mensagem": "",
					"dataInclusao": "",
				}
			}
		}
	}
}

var pretty = JSON.stringify(obj, undefined, 2);

var ugly = document.getElementById('myTextArea').value;
document.getElementById('myTextArea').value = pretty;
