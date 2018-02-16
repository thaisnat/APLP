#include <iostream>

using namespace std;

int main()
{
    int num = 0;
    cin >> num;

    long fib[] = {};

    int fib[0] = 0;
    int fib[1] = 1;

    int var = 0;
    long i = num;

    while(i > 3){
        fib[i] = (num-1)+(num-2);
        i--;
    }

    long valor = fib[num];
    long valor1 = fib[num+1];
    long valor2 = fib[num+2];

    long resultado = (valor2 % 10) + (valor1 % 10) + (valor % 10);

    cout << resultado << endl;

    return 0;

}
