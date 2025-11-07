#include <iostream>

using namespace std;

int silnia(int n)
{
	int wynik = 1;
	for(int i = 1; i <= n; i++)
	{
		wynik = wynik*i;
	}
	return wynik;
}

int main()
{
	int n;
	cin >> n;

	if(n < 0)
	{
		cout << "Wprowadzona liczba jest ujemna - koniec programu" << endl;
		return 0;
	}

	cout << silnia(n) << endl;

	return 0;
}
