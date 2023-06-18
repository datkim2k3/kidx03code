#include <iostream>
using namespace std;
int main()
{
	int n;
	cout<<"Nhap n: ";
	cin>>n;
	bool kiemtra = true;
	if (n<2)
	{
		kiemtra = false;
	}
	else if (n > 2)
	{
		if(n%2==0)
		{
			kiemtra = false;
		}
		else
		{
			for(int i=2;i<n;i++)
			{	
				if(n%i==0)
				{
					kiemtra = false;
					break;
				}
			}
		}
	}
	if(kiemtra == true)
	{
		cout<<n<<" La so nguyen to!";
	}
	else
	{
		cout<<n<<" Khong phai la so nguyen to!";
	}
	
	return 0;
}
