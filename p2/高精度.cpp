#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
#include<string.h>
int a[1000];
int main()
{
	int n,end;
	int i,j;
	scanf("%d",&n);
	if(n == 0)printf("1");
	else
	{
		a[0] = 1;
		end = 1;
		for(i=1;i<=n;i++)
		{
			int carryin = 0,sum = 0;
			for(j=0;j<end || carryin;j++)
			{
				sum = a[j]*i + carryin;
				a[j] = sum % 10;
				carryin = sum / 10;
			}
			end = j;
		}
		for(i=j-1;i>=0;i--)printf("%d",a[i]);
	}
	return 0;
}
