#include <iostream>
using namespace std;

void nhapmatrana(int a[][100], int n, int m)
{
	cout<<"\n\t\t NHAP MA TRAN A"<<endl;
	cout<<endl;
	for(int i=0; i<n; i++)
		for(int j=0; j<m; j++)
		{
			cout<<"Nhap phan tu vao ma tran a["<<i<<"]["<<j<<"]= ";
			cin>>a[i][j];
		}
}


void xuatmatrana(int a[][100], int n, int m)
{
	cout<<"\n\t\t CAC PHAN TU TRONG MA TRAN A LA";
	cout<<endl;
	cout<<endl;
	for(int i=0; i<n; i++)
	{
		for(int j=0; j<m; j++)
		cout<<"["<<i<<"]["<<j<<"]="<<a[i][j]<<"   ";
		cout<<endl;
	}
}

void nhapmatranb(int b[][100],int n, int m)
{
	cout<<"\n\t\t NHAP MA TRAN B"<<endl;
	cout<<endl;
	for(int i=0; i<n; i++)
		for(int j=0; j<m; j++)
	{
		cout<<"Nhap phan tu vao ma tran b["<<i<<"]["<<j<<"]= ";
		cin>>b[i][j];
	}	
		
}


void xuatmatranb(int b[][100],int n, int m)
{
	cout<<"\n\t\t CAC PHAN TU TRONG MA TRAN B LA";
	cout<<endl;
	cout<<endl;
	for(int i=0; i<n; i++)
	{
		for(int j=0; j<m; j++)
		cout<<"b["<<i<<"]["<<j<<"]="<<b[i][j]<<"   ";
		cout<<endl;
	}
}


void tonghaimatran(int a[][100], int b[][100], int c[][100], int n, int m)
{
    for(int i=0; i<n ;i++)
	{
        for(int j=0; j<m; j++)
		{
            c[i][j] = a[i][j] + b[i][j];
        }
    }
}


void hienthi(int c[][100], int n, int m)
{
	cout<<"\n\t\t CAC PHAN TU TRONG MA TRAN C LA";
	cout<<endl;
	cout<<endl;
	for(int i=0; i<n; i++)
	{
		for(int j=0; j<m; j++)
		{
			cout<<"c["<<i<<"]["<<j<<"]="<<c[i][j]<<"   ";
		}
		cout<<"\n";
	}
}



int main()
{
	int n, m;
	cout<<"\n\t\t NHAP KICH THUOC CUA MA TRAN "<<endl;
	cout<<"Nhap so dong: ";
	cin>>n;
	cout<<"Nhap so cot: ";
	cin>>m;
	int a[n][100];
	int b[n][100];
	int c[n][100];
	nhapmatrana(a, n, m);
	xuatmatrana(a, n, m);
	cout<<endl;
	nhapmatranb(b, n, m);
	xuatmatranb(b, n, m );
	tonghaimatran(a, b, c, n, m);
	hienthi(c, n, m);
}