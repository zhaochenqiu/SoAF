#include <iostream>
#include <string>
#include <fstream>

using namespace std;

int main()
{
    string str1,str2;
    string v1,v2,v3;
    ifstream infile("list_other.txt");

    while (cin >> str1 >> str2)
    {
        infile >> v1 >> v2 >> v3;

        cout << str1 << " " << str2 << " " << v1 << " " << v2 << " " << v3 << endl;
     }

    infile.close();

    return 0;
}
