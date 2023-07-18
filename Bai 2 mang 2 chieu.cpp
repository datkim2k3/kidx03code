#include <iostream>
using namespace std;

void nhapmatrana(float a[][100], int n, int m)
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

void xuatmatrana(float a[][100],int n, int m)
{
	cout<<"\n\t\t CAC PHAN TU TRONG MA TRAN A";
	cout<<endl;
	cout<<endl;
	for(int i=0; i<n; i++)
	{
		for(int j=0; j<m; j++)
		cout<<"a["<<i<<"]["<<j<<"]="<<a[i][j]<<"   ";
		cout<<endl;
	}
}

void chuyenvi(float a[][100], int n, int m)
 {
 	cout<<"\n\t\t MA TRAN VUA CHUYEN VI "<<endl;
 	cout<<endl;
 	float b[100][100];
 	for(int i=0;i<m;i++)
 	{
 		for(int j=0;j<n;j++)
 		{
 			b[i][j]= a[j][i];
 		}
 	}
 	for(int i=0;i<m;i++)
 	{
 		for(int j=0;j<n;j++)
 		{
 			cout<<"b["<<i<<"]["<<j<<"]= "<<b[i][j]<<"    ";
 		}
 		cout<<endl;
 	}	
 }


int main ()
{
	int n, m;
	cout<<"\n\t\t NHAP KICH THUOC CUA MA TRAN "<<endl;
	cout<<"\nNhap so dong: ";
	cin>>n;
	cout<<"Nhap so cot: ";
	cin>>m;
	float a[n][100];
	float b[n][100];
	nhapmatrana(a, n, m);
	xuatmatrana(a, n, m);
	chuyenvi(a, n, m);
}