#include <iostream>

using namespace std;

int main()
{
	int n;
	cin >> n;
	if(n < 0)
	{
		cout << "Wprowadzona liczba jest ujemna - koniec programu" << endl;
		return 0;
	}
	cout << n << endl;

	return 0;
}
