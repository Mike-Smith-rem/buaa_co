#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
#include<string.h>
int symbol[7][7],array[7][7];
int ans = 0;
int m,n;
int m0,n0;
int m1,n1;
int check(int row,int column)
{
	if(symbol[row][column]==1||array[row][column]==1)return 0;
	else return 1;
}
void DFS(int row,int column)
{
	int i;
	if(row==m0-1&&column==n0-1)
	{
		ans++;
		return;
	}
	symbol[row][column] = 1;
	if(column > 0)
	{
			if(check(row,column-1))
				DFS(row,column-1);
	}
	if(column < n-1)
	{
			if(check(row,column+1))
				DFS(row,column+1);
	}
	if(row > 0)
	{
			if(check(row-1,column))
				DFS(row-1,column);
	}
	if(row < m-1)
	{
			if(check(row+1,column))
				DFS(row+1,column);
	}
	symbol[row][column] = 0;	
}
int main()
{
	scanf("%d %d",&m,&n);
	for(int i=0;i<m;i++)
	{
		for(int j=0;j<n;j++)
		{
			scanf("%d",&array[i][j]);
		}
	}
	scanf("%d %d",&m1,&n1);
	scanf("%d %d",&m0,&n0);
	DFS(m1-1,n1-1);
	printf("%d",ans);
	return 0;	
}
