m_r<-c(14574.49,7606.46,8611.41,9175.41,8058.65,8105.44,11496.28,9766.09,10305.32,14379.96,10713.97,15433.50)
m_e<-c(12051.82,5695.07,12319.20,12089.72,8658.57,840.20,3285.73,5821.12,6976.93,16618.61,10054.37,3803.96)
df<-cbind(m_r,m_e)
# print(df)
profit=m_r - m_e
profit
pat= profit-profit*0.3
pat
pm = round(pat/m_r,2)*100
pm
my_pat = mean(pat)
my_pat
pat_gym = NULL
x = 1
i = 0
for(i in seq(along = pat)){
    if(pat[i]>my_pat){
        pat_gym[x] = i
        x = x+1
    }
}

print("good months with profit after tax was greater than the mean for the year : months represented by a number")
print(pat_gym)
pat_lym = NULL
x = 1
i = 0
for(i in seq(along = pat)){
    if(pat[i]<my_pat){
        pat_lym[x] = i
        x = x+1
    }
}

print("bad months with profit after tax was lesser then the mean for the year : months represented by a number")
print(pat_lym)
b_m = which(pat == max(pat))

cat("best month:",b_m)

w_m = which(pat == min(pat))

cat("worst month:",w_m)