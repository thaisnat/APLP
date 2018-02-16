#include <iostream>
#include <stdlib.h>

using namespace std;

int main()
{	
	// imprimindo hello world
    cout <<"Ola Mundo!";
    
    /*
     *  nao esquecer do 
		system("pause");
		return 0;
	*   no final
	*/
	
    //imprimindo operadores
    
    int x,y;
    x = 3;
    y = 9;
    
    cout << "O valor de x e y é: " << x << ", " << y << endl;
    
    cout << "A soma entre x e y é: " << x + y << endl;
    cout << "A subtração entre x e y é: " << x - y << endl;
    cout << "A multiplicação entre x e y é: " << x * y << endl;
   
   // vai imprimir em int de toda forma
    double d = y / (x+1) ;
    
    //para imprimir em double
    double d = y / (x+1.0);
    
    cout << "A divisão entre x e y é: " << d << endl;
    
    // divisao e modulo
    
    int a = 5 / 2;
    int num1, num2;
    num1 = 10;
    num2 = 3;
    
    int div = num1 / num2;
    int resto = num1 % num2;
    
    cout << "A divisao de num1 por num2 e igual a: " << div << endl;
    cout << "A divisao de num1 por num2 tem resto: " << resto << endl;
   
	// resto 0 == par, resto 1 == impar
	
	// tomada de decisao
	
	int i = 5, i2 = 10;
	
	//i << igual a >> i2
	
	if(i == i2)
		// nao vai aparecer a frase abaixo porque eh False
		cout << "A variavel i eh igual a variavel i2" << endl;
		
	if(i != i2)
		//essa frase vai aparecer porque eh True
		cout <<"Sim, i eh diferente de i2" << endl;
    
    /*
     * if(true){
     * 		facaIsso();
     * } else{
     * 		facaAquilo();
     * }
     */
    
    // objeto console input (cin) -> para o usuario digitar 
    // atribuir uma variavel nesse cin
    
    cout << "Digite um num qualquer: " << endl;
    int valor = 0;
    cin >> valor; // atribuir o valor digitado no console
    
    if(valor > 50){
		cout << "O valor eh maior que 50" << endl;
	}else{
		cout << "O valor eh menor que 50" << endl;
	}
    
    //os valores sao atribuidos da direita para esquerda
    // (+=) (-=) (*=) (/=) (%=)
    
    // imprimindo do 1 ao 10 
    for(int i = 0; i <=10; i++){
		cout << "o valor de i eh igual: " << i << endl;
	}
	
	// na expressao ++x, depois da expressao x++
    
    //imprimir tabuada
    
    //perguntar qual a tabuada para o usuario e armazenar o valor numa variavel
   cout << "Informe a tabuada que deseja: " << endl;
   int n = 0;
    cin >> n;
    
    //implementacao de um laco de repetição FOR
    for(int i = 1; i<=10; i++){
			// imprimir na tela a tabuada
			cout << i << " x " << n << " = " i*n << endl;
	}
	
	//Arrays
	
	int num0,num1,num2, num3, num4;
	int nums[5]; // criando um arrray int de tam 5
	nums[0] = 10; // atribuindo 10 ao elem 0 do array
	
	double valores[100]; // criando um array double de tam 100
	valores[50] = 5.55; // atribuindo 5.55 ao elem 50 do array
	
	// percorrendo o array
	
	double preco[10] = {}; // atribuir vazio
	
	preco[0] = 14.55;
	preco[3] = 1.1;
	preco[7] = 2;
	preco[2] = 9.68;
	
	//imprimindo o valor que ta na primeira posicao do array
	cout << preco[0] << endl;
	
	//imprimindo usando for
	
	for(int i = 0; i<=9; i++){
		cout << preco[i] << endl;
	}
	
	// se nao definir o valor antes, o prog retorna lixo da memoria
	//para ajeitar, atribuir {} em cada posição antes
	
	// calculando media com array
	
	double val[4];
	//1) entrada de valores 
	for(int i = 0; i <=4; i++){
		cout << "Informe o " << i+1 << " valor." << endl;
		cin >> val[i];
	}
	
	double total = 0;
	//2) calcular a media
	for(int i2 = 0; i2<=4;i++){
		total = total + val[i2];
	}
	
	//std:: qual biblioteca buscamos a operacao
	cout << std::fixed; // definir as casas decimais
	cout << "A media eh: " << (total / 5) << endl;
	
    system("pause");
    return 0;
}
