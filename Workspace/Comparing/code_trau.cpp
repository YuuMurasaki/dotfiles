#include <bits/stdc++.h>
#define ll long long
#define TIME (1.0 * clock() / CLOCKS_PER_SEC)
using namespace std;
const int N = 1e6 + 1;
int n,x,dp[N],i,j,ans;
int main()
{
    ios_base::sync_with_stdio(false);
    cin.tie(0); cout.tie(0);
    freopen("test.inp", "r", stdin);
    //freopen("test.out", "w", stdout);
    freopen("test.ans", "w", stdout);
    cin>>n;

    dp[0] = -1;
    for(i=1; i<=n; i++)
    {
        cin>>x;
        if(x > dp[ans])
            dp[++ans] = x;
        else
        {
            int idx = lower_bound(dp + 1, dp + ans + 1, x) - dp;
            dp[idx] = x;
        }
    }

    cout<<ans;
    //cout << "\n" << "Time elapsed: " << TIME << "s.\n";
    return 0;
}
