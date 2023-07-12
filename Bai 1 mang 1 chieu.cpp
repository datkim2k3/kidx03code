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


void timkiem(int a[], int n)
{
	int c;
	int dem = 0;
	cout<<"\nNhap so nguyen c can tim trong mang a: ";
	cin>>c;
	cout<<"Vi tri cua so nguyen c trong mang a la: ";
	for(int i=0; i<n; i++)
	{
		if(a[i]==c)
		{
			cout<<"a["<<i<<"]"<<"  ";
			dem ++;
		}
	}
	cout<<endl;
	cout<<"Co "<<dem<<" so nguyen c trong mang a";
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
	timkiem(a, n);	
}