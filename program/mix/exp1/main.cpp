#include <iostream>
#include <string>

using namespace std;

int main()
{
    string str;

    while (cin >> str)
    {
        cout << "./a.exe < " << str << " > " << str << ".ret" << endl;
    }
    return 0;
}
