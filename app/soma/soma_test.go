package soma

import "testing"

func TestSomaDoisNumeros(t *testing.T) {
	valorEsperado := 10
	soma := SomaDoisNumeros(5, 5)

	if soma != valorEsperado {
		t.Errorf("Valor esperado é %v, mas o resultado foi %v", valorEsperado, soma)
	}
}
