#include <iostream>
#include <stdlib.h>

using namespace std;

string inverte(string word){

     string newWord = "";
     int j = 0;
     for(int i = 0; i<= word.size(); i--){
        newWord[j] = word[i];
        j++;
     }
}
int main()
{

    string chave = "";
    cin >> chave;

    int quant = 0;
    cin >> quant;

   string palavras[quant];
    for(int i = 0; i<= quant;i++){
       cin >> palavras[i];
    }

    string novaPalavra = "";
    for(int j = 0; j < palavras.size(); j++){
        if(palavras[j] == chave){
            novaPalavra = inverte(palavras[j]);
        }
        palavras[j] = palavras[novaPalavra];
    }

    for(int k = 0; k <= palavras.size(); k++){
        cout << palavras[k] << endl;
    }

    system("pause");
    return 0;
}
