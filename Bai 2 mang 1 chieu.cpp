#include <iostream>
using namespace std;

void nhapmang(int a[],int n)
{
	cout<<"\n\t\t NHAP MANG"<<endl;
	cout<<endl;
	for(int i=0; i<n; i++)
	{
		cout<<"Nhap phan tu vao mang a["<<i<<"]= ";
		cin>>a[i];
	}
}


void xuatmang(int a[],int n)
{
	cout<<"\n\t\t CAC PHAN TU TRONG MANG LA";
	cout<<endl;
	cout<<endl;
	for(int i=0; i<n; i++)
	{
		cout<<"a["<<i<<"]="<<a[i]<<"   ";
	}
}
 
int tongle(int a[], int n)
{	
	int tong = 0;
	for(int i=0; i<n; i++)
	{
		if(a[i]%2!=0)
		{
			tong+=a[i];
		}
	}
	return tong;
}

int tongchan(int a[], int n)
{	
	int tong = 0;
	for(int i=0; i<n; i++)
	{
		if(a[i]%2==0)
		{
			tong+=a[i];
		}
	}
	return tong;
}

int tongcacsochiahetchoba(int a[], int n)
{	
	int tong = 0;
	for(int i=0; i<n; i++)
	{
		if(a[i]%3==0)
		{
			tong+=a[i];
		}
	}
	return tong;
}

int main()
{
	int n;
	cout<<"\nNhap so luong phan tu trong mang a: ";
	cin>>n;
	int a[n];
	nhapmang(a, n);
	xuatmang(a, n);
	cout<<endl;
	cout<<"\nTong cac so le la: "<<tongle(a, n);
	cout<<"\nTong cac so chan la: "<<tongchan(a, n);
	cout<<"\nTong cac so chia het cho ba: "<<tongcacsochiahetchoba(a, n);
}