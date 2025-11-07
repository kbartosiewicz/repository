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
	cout << silnia(n) << endl;

	return 0;
}
