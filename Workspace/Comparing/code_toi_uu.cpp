#include <bits/stdc++.h>
#define ll long long
#define TIME (1.0 * clock() / CLOCKS_PER_SEC)
using namespace std;
const int N = 1e6 + 1;
int n,a[N],dp[N],loca[N],i,j,ans,vt,dem,b[N];
int main()
{
    ios_base::sync_with_stdio(false);
    cin.tie(0); cout.tie(0);
    freopen("test.inp", "r", stdin);
    freopen("test.out", "w", stdout);
    //freopen("test.ans", "w", stdout);
    cin>>n;

    for(i=1; i<=n; i++)
        cin>>a[i];

    dp[1] = 1;
    for(i=2; i<=n; i++)
    {
        dp[i] = 1;
        for(j=1; j<i; j++)
            if(a[j] < a[i] && dp[i] < dp[j] + 1)
            {
                dp[i] = dp[j] + 1;
                loca[i] = j;
            }

        if(dp[i] > ans)
        {
            ans = dp[i];
            vt = i;
        }
    }

    cout<<ans;
    //cout << "\n" << "Time elapsed: " << TIME << "s.\n";
    return 0;
}
